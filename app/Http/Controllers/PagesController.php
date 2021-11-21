<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Carbon\Carbon;
use App\Models\Banner;
use App\Models\Event;
use App\Models\Partner;
use App\Models\Page;

class PagesController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');
        if (strpos(url()->current(), 'home') !== false) {
            abort(404);
        } else {
            $page = Page::with(['translations'])
                ->where(['slug' => 'home', 'status' => Page::STATUS_ACTIVE])
                ->firstOrFail();
        }

        $page = $page->translate($locale, $fallbackLocale);

        $banners = Banner::with('translations', 'event')
            ->where('status', true)
            ->where('type', '!=', 'section-block')
            ->orderBy('sort_id')
            ->get()
            ->translate($locale, $fallbackLocale);

        $todayAnnouncements = Event::with('translations')
            ->where('status',true)
            ->whereDate('planned_at', Carbon::today())
            ->take(2)
            ->latest('planned_at')
            ->get()
            ->translate($locale, $fallbackLocale);

        $tomorrowAnnouncements = Event::with('translations')
            ->where('status',true)
            ->whereDate('planned_at', Carbon::tomorrow())
            ->take(2)
            ->latest('planned_at')
            ->get()
            ->translate($locale, $fallbackLocale);

        $announcements = Event::with('translations')
            ->where('status',true)
            ->whereDate('planned_at', '>=', Carbon::today())
            ->take(8)
            ->latest('planned_at')
            ->get()
            ->translate($locale, $fallbackLocale);

        $latestEvents = Event::with('translations')
            ->where('status',true)
            ->whereDate('planned_at', '<', Carbon::today())
            ->withCount(['photos', 'videos'])
            ->take(20)
            ->latest('planned_at')
            ->get()
            ->translate($locale, $fallbackLocale);

        $latestArticles = Article::with('translations', 'category')
            ->where('status',true)
            ->take(10)
            ->latest()
            ->get()
            ->translate($locale, $fallbackLocale);

        $footerSliders = Banner::with('translations', 'event')
            ->where('status', true)
            ->where('type', '=', 'section-block')
            ->orderBy('sort_id')
            ->get()
            ->translate($locale, $fallbackLocale);

        $partners=Partner::get();

        return view('pages.home', compact(
            'page',
            'banners',
            'partners',
            'todayAnnouncements',
            'tomorrowAnnouncements',
            'announcements',
            'latestEvents',
            'latestArticles',
            'footerSliders'
        ));
    }

    public function getPage($slug = 'home')
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');
        if (strpos(url()->current(), 'home') !== false) {
            abort(404);
        } else {
            $page = Page::with(['translations'])
                ->where(['slug' => $slug, 'status' => Page::STATUS_ACTIVE])
                ->firstOrFail();
        }

        $page = $page->translate($locale, $fallbackLocale);
        switch ($page->type) {
            case 'about':
                return view('pages.' . $page->type, compact('page'));
            case 'simple':
                return view('pages.' . $page->type, compact('page'));
            default :
                return view('pages.' . $page->type, compact('page'));
        }
    }

    public function setLocale($locale)
    {

        if (in_array($locale, config()->get('voyager.multilingual.locales'))) {
            session()->put('locale', $locale);
        }

        return redirect()->back();
    }
}
