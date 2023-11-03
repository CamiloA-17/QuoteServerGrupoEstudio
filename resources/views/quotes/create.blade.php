@extends('layouts.app')

@section('content')
    <div class="container">
        <form method="POST" action=" {{ route('quotes.store')}}">
            @csrf
            @include('quotes.fields')
            <button type="submit" class="btn btn-primary mt-3">Crear</button>
        </form>
    </div>
@endsection