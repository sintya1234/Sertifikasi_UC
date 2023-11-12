<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illminate\Support\Facades\Hash;

class RegisterController extends Controller
{

    public function index()
    {
        return view('register.index', [
            'title' => 'Register'
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:200',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255'
        ]);

        $validatedData['password'] = bcrypt($validatedData['password']);
        // $validatedData['password']= Hash::make($validatedData['password']);
        User::create($validatedData);

      //  $request->session()->flash('success', 'Registration successfuul !! please login');

        return redirect('/login')->with('success', 'Registration successfuul !! please login');
    }
}


