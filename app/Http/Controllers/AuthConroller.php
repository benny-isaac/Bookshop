<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class AuthConroller extends Controller
{
    //
    public function Login(Request $request)
    {
        // Validate the request
        $request->validate([
            'name' => 'required|name',
            'password' => 'required|min:6',
        ]);

        // Retrieve user from database
        $user = \App\Models\User::where('name', $request->name)->first();

        // Check if user exists and password matches
        if ($user && Hash::check($request->password, $user->password)) {
            // Log the user in
            Auth::login($user);

            // Redirect to intended or home page
            return redirect()->intended('/home')->with('success', 'You are logged in!');
        }

        // Authentication failed
        return back()->withErrors(['name' => 'Invalid credentials.'])->withInput();
    }
}
