<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    public function edit(){

        $user = Auth::user();

        return view('profile.edit', compact('user'));
    }

    public function update(Request $request){

        
        $user = Auth::user();
        
        $user->update($request->all());


        return redirect(route('home'))->with('success', 'Perfil actualizado correctamente');
    }

    public function show(User $user){

        return view('profile.show', compact('user'));
    }
}
