@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Perfil de {{ $user->name}}</h1>
        <p>Correo electronico: {{ $user->email}}</p>
        <p>Miembro desde <strong>{{ $user->created_at->diffForHumans()}}</strong> .</p>
        <p>Has publicado <strong>{{ $user->quotes->count() }}</strong> citas.</p>
    </div>
@endsection