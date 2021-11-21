<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Page;
use App\Models\Event;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class EventsController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $allEvents = Event::with('translations', 'category')
            ->where('status',true)
            ->latest()
            ->get()
            ->translate($locale,$fallbackLocale);

        $events = Event::with('translations', 'category')
            ->where('status',true)
            ->whereDate('planned_at', '<', Carbon::today())
            ->withCount(['photos', 'videos'])
            ->take(8)
            ->latest('planned_at')
            ->get()
            ->translate($locale,$fallbackLocale);

        $eventsJson = [];
        foreach ($allEvents as $event) {
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
            ->where(['type' => 'events'])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        return view('pages.events.index', compact(
            'events',
            'eventsJson',
            'page'
        ));
    }

    public function show($eventSlug)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');
        $event = Event::with('translations')
            ->whereDate('planned_at', '<', Carbon::today())
            ->where('status',true)
            ->where('slug', $eventSlug)
            ->firstOrFail()
            ->translate($locale,$fallbackLocale);

        return view('pages.events.show', compact('event'));
    }

    public function download($eventSlug)
    {
        $event = Event::query()
            ->where('status',true)
            ->where('slug', $eventSlug)
            ->firstOrFail();

        $zip_file = "{$event->slug}.zip";
        $zip = new \ZipArchive();
        $zip->open($zip_file, \ZipArchive::CREATE | \ZipArchive::OVERWRITE);

        $path = storage_path('app/public/events/' . $event->id);
        $files = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($path));
        foreach ($files as $file)
        {
            // We're skipping all subfolders
            if (!$file->isDir()) {
                $filePath     = $file->getRealPath();

                // extracting filename with substr/strlen
                $relativePath = $event->slug . '/' . substr($filePath, strlen($path) + 1);

                $zip->addFile($filePath, $relativePath);
            }
        }

        foreach ($event->photos as $photo) {
            $path = storage_path('app/public/photos/' . $photo->id);
            $files = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($path));
            foreach ($files as $file)
            {
                // We're skipping all subfolders
                if (!$file->isDir()) {
                    $filePath     = $file->getRealPath();

                    // extracting filename with substr/strlen
                    $relativePath = $event->slug . '/' . substr($filePath, strlen($path) + 1);

                    $zip->addFile($filePath, $relativePath);
                }
            }
        }

        $zip->close();
        return response()->download($zip_file);
    }
}
