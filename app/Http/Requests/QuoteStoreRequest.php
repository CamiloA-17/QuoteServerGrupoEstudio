<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class QuoteStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'author' => 'nullable|string|max:60',
            'published_year'=> 'nullable|integer|max_digits:4|min_digits:1|date_format:Y|before:today',
            'message'=> 'required|string',
        ];
    }

    public function messages(): array
    {
        return [
            'author.alpha' => 'El nombre del autor sólo debe estar compuesto por letras.',
            'author.max' => 'El nombre del autor no puede tener más de 60 caracteres.',
            'published_year.integer' => 'El año de publicación debe ser un número entero.',
            'published_year.max_digits' => 'El año de publicación no puede tener más de 4 dígitos.',
            'published_year.min_digits' => 'El año de publicación no puede tener menos de 1 dígito.',
            'published_year.date_format' => 'El año de publicación debe tener el formato (AÑO).',
        ];
    }
}
