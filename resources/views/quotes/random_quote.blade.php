@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Cita al azar</h1>
    <blockquote class="blockquote">
        <p class=""mb-3>
            {{$quote->message}}
        </p>
        <footer class="blockquote-footer">
            {{$quote->author}}
        </footer>
    </blockquote>
    <p>Esta cita fue publicada por: <strong>{{$quote->user->name}}</strong></p>
</div>
@endsection