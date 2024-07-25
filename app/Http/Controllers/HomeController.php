<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    //
    public function index()
    {
        $count_user = User::count();
        return view('dashboard', compact('count_user'));
    }
}
