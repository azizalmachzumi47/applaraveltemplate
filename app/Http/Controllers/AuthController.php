<?php

namespace App\Http\Controllers;

use App\Helpers\ActivityLogger;
use App\Models\Loguser;
use App\Models\Role_akses;
use App\Models\User;
use App\Notifications\VerifyEmail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Notification;
use Jenssegers\Agent\Agent;

class AuthController extends Controller
{
    public function auth()
    {
        $roles = Role_akses::select('id', 'role')->get();

        $groupedRoles = [
            'Staf' => $roles->filter(fn($r) => str_starts_with($r->role, 'Staf_'))->values(),
            'Spv' => $roles->filter(fn($r) => str_starts_with($r->role, 'Spv_'))->values(),
            'Manager' => $roles->filter(fn($r) => str_starts_with($r->role, 'Mn_'))->values(),
            'SM' => $roles->filter(fn($r) => str_starts_with($r->role, 'Sm_'))->values(),
            'Direksi' => $roles->filter(fn($r) => str_starts_with($r->role, 'Direksi_'))->values(),
        ];

        return view('auth', compact('groupedRoles'));
    }


    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ],[
            'email.required' => 'Email harus diisi',
            'email.email' => 'Email harus valid',
            'password.required' => 'Password harus diisi',
            'password.min' => 'Password minimal 6 karakter',
        ]);

        if (Auth::attempt($request->only('email', 'password'))) {
            // Ambil kembali user setelah login berhasil
             /** @var User $user */
            $user = Auth::user();
             $agent = new Agent();

            if ($user) {
                // Perbarui kolom updated_at ke waktu saat ini
                User::where('id', $user->id)->update([
                    'updated_at' => Carbon::now()->setTimezone('Asia/Jakarta')
                ]);

                // Catat log aktivitas login
                ActivityLogger::log(
                    'Login',
                    'LOGIN'
                );

                if ($user->email_verified_at) {
                    $request->session()->regenerate();
                    Log::info('Role ID User: ' . $user->role_id);

                    return redirect()->route('dashboard.index')->with('success', 'Selamat Datang ' . ($user->role_id === 1 ? 'Admin!' : 'User!'));
                } else {
                    Auth::logout();
                    return back()->with('error', 'Harap verifikasi akun Anda!');
                }
            }
        }

        return redirect()->route('auth')->with('error', 'Kombinasi email dan password salah!');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'role_id' => 'required|exists:users_role,id',
            'entitas' => 'required',
            'password' => 'required|min:6',
            ],[
                'name.required' => 'Nama harus diisi',
                'role_id.required' => 'Role harus diisi',
                'email.required' => 'Email harus diisi',
                'email.email' => 'Email harus valid',
                'email.unique' => 'Email sudah terdaftar',
                'entitas.required' => 'Entitas harus diisi',
                'password.required' => 'Password harus diisi',
                'password.min' => 'Password minimal 6 karakter',
            ]);

        try{
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'role_id' => $request->role_id,
                'entitas' => $request->entitas,
                'password' => Hash::make($request->password),
                'email_verified_at' => null,
                'image' => null,
            ]);

            //SMTP
            // Notification::send($user, new VerifyEmail());

            // return redirect()->route('auth')->with('success', 'Berhasil Mendaftar! Silahkan cek email untuk verifikasi akun anda!');
            return redirect()->route('auth')->with('success', 'Berhasil Mendaftar! Silahkan konfirmasi ke admin untuk aktivasi akun!');

        }catch(\Exception $e){
            return redirect()->route('auth')->with('error', 'Gagal Mendaftar!' .$e);
        }
    }

    public function verify($id, $hash)
    {
        $user = user::findOrFail($id);

        if(sha1($user->getEmailForVerification()) !== $hash){
            return redirect()->route('auth')->with('error', 'Link verifikasi tidak valid!');
        }

        if($user->hasVerifiedEmail()){
            return redirect()->route('auth')->with('success', 'Akun anda sudah terverifikasi');
        }

        if($user->markEmailAsVerified()){
            return redirect()->route('auth')->with('success', 'Akun anda berhasil terverifikasi');
        }

        return redirect()->route('auth')->with('error', 'Gagal verifikasi email!');
    }

    public function logout(Request $request)
    {
        // 🔥 Logging sebelum logout
        ActivityLogger::log(
            'Logout',
            'LOGOUT'
        );

        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('success', 'Anda telah logout!');
    }

}
