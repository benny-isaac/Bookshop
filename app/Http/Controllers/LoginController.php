<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    //
    public function Login(Request $request)
    {
        // Validate the request
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // Retrieve user from database
        $user = \App\Models\User::where('email', $request->email)->first();

        // Check if user exists and password matches
        if ($user && Hash::check($request->password, $user->password)) {
            // Log the user in
            Auth::login($user);

            // Redirect to intended or home page
            return redirect()->intended('dashboard')->with('success', 'You are logged in!');
        }

        // Authentication failed
        return back()->withErrors(['email' => 'Invalid credentials.'])->withInput();
    }
}
