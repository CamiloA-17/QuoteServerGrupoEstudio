@extends('layouts.app')

@section('content')
    <div class="container">
        <form method="POST" action=" {{ route('quotes.update', [$quote->id]) }}">
            @csrf
            @method('PUT')  
            @include('quotes.fields')
            <button type="submit" class="btn btn-primary mt-3">Actualizar</button>
        </form>
    </div>
@endsection