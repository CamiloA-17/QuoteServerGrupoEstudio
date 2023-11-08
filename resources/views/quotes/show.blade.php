@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Cita</h1>
        <table>
            <tr>
                <th scope="row">ID</th>
                <td>{{ $quote->id }}</td>
            </tr>
            <tr>
                <th scope="row">Autor</th>
                <td>{{ $quote->author }}</td>
            </tr>
            <tr>
                <th scope="row">Año de publicacion</th>
                <td>{{ $quote->published_year }}</td>
            </tr>
            <tr>
                <th scope="row">Propietario</th>
                <td>{{ $quote->user->name }}</td>
            </tr>
            <tr>
                <th scope="row">Mensaje</th>
                <td>{{ $quote->message }}</td>
            </tr>
            <tr>
                <th scope="row">Fecha de creacion</th>
                <td>{{ $quote->created_at }}</td>
            </tr>
            <tr>
                <th scope="row">fecha actualizacion</th>
                <td>{{ $quote->updated_at }}</td>
            </tr>
        </table>
    </div>
@endsection