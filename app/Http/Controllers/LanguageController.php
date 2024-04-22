<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LanguageController extends Controller
{
    public function changeLanguage(Request $request)
    {
        $locale = $request->input('locale');
        if (array_key_exists($locale, config('app.locales'))) {
            session()->put('locale', $locale);
        }

        return response()->json(['success' => true]);
    }
}
