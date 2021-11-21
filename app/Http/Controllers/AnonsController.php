<?php

namespace App\Http\Controllers;

use App\Models\Event;
use App\Models\Page;
use Carbon\Carbon;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class AnonsController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $events = Event::with('translations', 'category')
            ->where('status',true)
//            ->whereDate('planned_at', '>=', Carbon::today())
            ->take(8)
            ->latest()
            ->get();
        
        $events = $events->translate($locale,$fallbackLocale);

        $eventsJson = [];
        foreach ($events as $event) {
            $date = Carbon::createFromFormat('Y-m-d H:i:s', $event->planned_at);
            $isPast = Carbon::now()->gt($date);
            $routeName = $isPast ? 'events' : 'anons';
            $eventsJson[] = [
                'title' => $event->title,
                'date' => $event->planned_at,
                'url' => route("{$routeName}.show", $event->slug),
                'description' => Str::limit(strip_tags(htmlspecialchars_decode($event->content)), 200),
                'image' => Voyager::image($event->image),
                'isPast' => $isPast,
            ];
        }

        $page = Page::with(['translations'])
            ->where(['type' => 'announcements'])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        return view('pages.announcements.index', compact(
            'events',
            'eventsJson',
            'page'
        ));
    }

    public function show($announcementSlug)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');
        $announcement = Event::with('translations')
            ->whereDate('planned_at', '>=', Carbon::today())
            ->where('status',true)
            ->where('slug', $announcementSlug)
            ->firstOrFail();
        $announcement = $announcement->translate($locale,$fallbackLocale);

        return view('pages.announcements.show', compact('announcement'));
    }
}
