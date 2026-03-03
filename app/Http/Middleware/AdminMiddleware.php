<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // if (
        //     $request->is('graphics_sales/api*') ||
        //     // $request->is('graphics_keuangan/*') ||
        //     $request->is('api/*')
        // ) {
        //     return $next($request);
        // }

        $user = Auth::user();

        if (!$user) {
            return redirect()->route('auth')->with('error', 'Silakan login terlebih dahulu!');
        }

        // Ambil menu ID dari request
        $currentMenuId = $this->getMenuIdFromRequest($request);

        // Jika menu tidak ditemukan, langsung tolak akses
        if (!$currentMenuId) {
            return redirect()->route('dashboard.index')->with('error', 'Menu tidak ditemukan!');
        }

        $hasAccess = DB::table('users_access_menu')
            ->where('role_id', $user->role_id)
            ->where('menu_id', $currentMenuId)
            ->exists();

        if ($user->role_id === 1 || $hasAccess) {
            return $next($request);
        }

        return redirect()->route('dashboard.index')->with('error', 'Anda tidak memiliki akses ke halaman ini!');
    }

    private function getMenuIdFromRequest(Request $request)
    {
        $urlPath = $request->path();

        // Cek apakah ada URL yang persis sama di tabel users_sub_menu
        $menu = DB::table('users_sub_menu')
            ->where('url', $urlPath)
            ->first();

        if ($menu) {
            return $menu->menu_id;
        }

        // Jika tidak ada yang cocok secara langsung, cek berdasarkan prefix
        $menus = DB::table('users_sub_menu')->get();

        foreach ($menus as $menu) {
            if (str_starts_with($urlPath, $menu->url)) {
                return $menu->menu_id;
            }
        }

        return null;
    }

}