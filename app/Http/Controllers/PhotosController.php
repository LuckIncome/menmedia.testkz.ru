<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Photo;

class PhotosController extends Controller
{
    public function show(Photo $photo)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $photo = $photo->translate($locale, $fallbackLocale);

        return view('pages.photos.show', compact(
            'photo',
        ));
    }

    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $photos=Photo::latest()->take(8)->get();

        $page = Page::with(['translations'])
            ->where(['type' => 'photos'])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        return view('pages.photos.index', compact(
            'photos',
            'page',
        ));
    }
}
