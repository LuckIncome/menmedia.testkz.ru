<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Photo;
use App\Models\Video;

class GalleryController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $photos=Photo::latest()->take(8)->get();
        $videos=Video::latest()->take(8)->get();

        $page = Page::with(['translations'])
            ->where(['type' => 'gallery'])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        return view('pages.gallery', compact(
            'photos',
            'videos',
            'page',
        ));
    }
}
