<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use Illuminate\Http\Request;

use app\Models\User;

class UsersController extends Controller
{
    public function index() {
        $users = User::all();
        return Inertia::render('Users', compact('users'));
    }
}
