<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class CheckUserMenu
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user = Auth::user();

        if (!$user) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        $menus = DB::table('users_access_menu')
            ->join('users_sub_menu', 'users_access_menu.menu_id', '=', 'users_sub_menu.menu_id')
            ->where('users_access_menu.role_id', $user->role_id)
            ->pluck('users_sub_menu.url')
            ->toArray();

        $currentPath = $request->path();

        foreach ($menus as $menu) {
            // Cek apakah path diawali menu
            if (str_starts_with($currentPath, trim($menu, '/'))) {
                return $next($request);
            }
        }

        return response()->json([
            'message' => 'Access denied'
        ], 403);
    }
}