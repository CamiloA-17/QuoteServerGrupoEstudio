@extends('layouts.app')

@section('content')
    <div class="container text-center">
        <h1>Mis citas</h1>
        <a href="{{ route('quotes.create') }}" class="btn btn-primary mb-3">Crear cita</a>
        <table class=table>
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Autor</th>
                    <th scope="col">Año</th>
                    <th scope="col">Cita</th>
                    <th scope="col">Fecha de creación</th>
                    <th scope="col">Fecha de actualización</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                @if (count($quotes)>0)
                    @foreach($quotes as $quote)    
                    <tr>
                        <td>{{ $quote -> id}}</td>
                        <td>{{ $quote -> author}}</td>
                        <td>{{ $quote -> published_year}}</td>
                        <td>{{ $quote -> message}}</td>
                        <td>{{ $quote -> created_at}}</td>
                        <td>{{ $quote -> updated_at}}</td>
                        <td><a href="{{ route('quotes.edit', [$quote->id]) }}"  class="btn btn-warning">Editar</a></td>
                    </tr>
                    @endforeach
                @else
                    <div class="alert alert-success" role="alert">
                        <p>No hay citas para mostrar</p>
                    </div>
                @endif
                </tbody>
        </table>
    {{ $quotes->links()}}
    </div>
@endsection