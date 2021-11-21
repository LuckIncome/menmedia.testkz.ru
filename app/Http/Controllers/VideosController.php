<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Video;

class VideosController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $videos = Video::latest()->take(8)->get();

        $page = Page::with(['translations'])
            ->where(['type' => 'videos'])
            ->firstOrFail()
            ->translate($locale, $fallbackLocale);

        return view('pages.videos.index', compact(
            'videos',
            'page',
        ));
    }

    public function show(Video $video)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $video = $video->translate($locale, $fallbackLocale);

        return view('pages.videos.show', compact(
            'video',
        ));
    }
}
