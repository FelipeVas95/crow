<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use app\Models\User;

class RegisterController extends Controller
{
    public function guardar(Request $request)
    {
        User::create($request->all());

        return 'Usuario guardado correctamente.';
    }
}
