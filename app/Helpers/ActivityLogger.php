<?php

namespace App\Helpers;

use App\Models\Loguser;
use Jenssegers\Agent\Agent;
use Illuminate\Support\Facades\Auth;

class ActivityLogger
{
    /**
     * Log user activity
     *
     * @param string|null $activity
     * @param string|null $action
     * @param array|null  $data
     * @return void
     */
    public static function log($activity = null, $action = null, $data = null)
    {
        if (!Auth::check()) {
            return;
        }

        $user = Auth::user();
        $agent = new Agent();
        $ip = request()->ip();

        // ================= DEFAULT ACTIVITY / ACTION =================
        if (!$activity && !$action) {
            $path = request()->path();
            $segments = explode('/', $path);
            $menuName = isset($segments[0]) ? ucfirst($segments[0]) : 'Dashboard';

            $activity = "Menu " . $menuName;
            $action   = $menuName;
        }

        // ================= DEFAULT DATAVALUES =================
        if ($data) {
            $datavalues = json_encode($data);
        } else {
            // Kalau kosong, beri default '{}'
            $datavalues = json_encode(['akses' => $activity ?? 'Unknown']);
        }

        Loguser::create([
            'name'       => $user->name,
            'email'      => $user->email,
            'role_id'    => $user->role_id,
            'entitas'    => $user->entitas,
            'user_agent' => $agent->browser().' - '.$agent->platform(),
            'ip'         => $ip,
            'url'        => request()->fullUrl(),
            'method'     => request()->method(),
            'datavalues' => $datavalues,
            'activity'   => $activity,
            'action'     => $action,
        ]);
    }
}