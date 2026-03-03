<?php

namespace App\Http\Controllers;

use App\Models\Loguser;
use Illuminate\Http\Request;

class MonitoringController extends Controller
{
    public function index()
    {
        $loguser = Loguser::with('role')->get();
        return view('monitoring.index', compact('loguser'));
    }

}
