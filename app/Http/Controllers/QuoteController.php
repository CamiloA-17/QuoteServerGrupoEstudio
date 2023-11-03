<?php

namespace App\Http\Controllers;

use App\Models\Quote;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\QuoteStoreRequest;

class QuoteController extends Controller
{
    public function randomQuote(){
        $quote = Quote::inRandomOrder()->first();
        return view('quotes.random_quote',compact('quote'));
    }



    ####################################


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $quotes = Quote::orderBy('created_at', 'desc')->paginate(10);

        return view('quotes.index', compact('quotes'));
    }

    public function indexMine()
    {
        $quotes = Quote::where('owner', auth()->user()->id)->orderBy('created_at', 'desc')->paginate(10);

        return view('quotes.index_mine', compact('quotes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //mostrar el formulario de crear una quote
        return view('quotes.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(QuoteStoreRequest $request)
    {
        //crea la quote en la base de datos
        $quote = new Quote();
        $quote->author = $request->author;
        $quote->message = $request->message;
        $quote->published_year = $request->published_year;
        $quote->owner = Auth::id();
        $quote->save();

        return redirect()->route('quotes.myquotes')->with('success', 'La cita fue agregada exitosamente.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Quote $quote)
    {
        //mostrar una quote en particular
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Quote $quote)
    {
        //vista para editar una quote
        return view('quotes.edit', compact('quote'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Quote $quote)
    {
        //logica de editar la quote
        $quote->update($request->all());
        return redirect()->route('quotes.myquotes')->with('success', 'La cita fue actualizada exitosamente.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Quote $quote)
    {
        //eliminar la quote
    }
}
