<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register/index');
    }

    public function register()
    {
        $this->validate(request(),[
            'name' => 'required|min:1|unique:users,name',
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:1|confirmed',
        ]);

        $password = bcrypt(request('password'));
        $name = request('name');
        $email = request('email');
        $user = \App\User::create(compact('name', 'email', 'password'));
        return redirect('/login');
    }
}
