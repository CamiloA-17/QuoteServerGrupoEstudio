@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Todas las citas</h1>
        @if (count($quotes)>0)
            @foreach($quotes as $quote)    
            <div class="card m-2 shadow p-3 bg-white rounded">
                <div class="card-body">
                    <p class="card-text">{{$quote -> message}}</p>
                    <h3 class="card-title">{{$quote -> author}}</h3>
                    <a href="#" class="card-link">Ver perfil de {{$quote -> user -> name}}</a>
                </div>
            </div>
            @endforeach
        {{ $quotes->links()}}
        @else
            <div class="alert alert-success">
                <p>No hay citas para mostrar</p>
            </div>
        @endif
    </div>
@endsection