<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Event;
use App\Models\Page;

class CategoriesController extends Controller
{
    public function show(Category $category)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        if ($category->status !== 1) {
            abort(404);
        }

        $articles = Article::with('translations', 'category')
            ->where('status',true)
            ->where('category_id', $category->id)
            ->take(8)
            ->latest()
            ->get();

        $events = Event::with('translations', 'category')
            ->where('status',true)
            ->where('category_id', $category->id)
            ->take(8)
            ->latest()
            ->get();

        $articles = $articles->translate($locale,$fallbackLocale);
        $events = $events->translate($locale,$fallbackLocale);

        $articles = collect($articles)->merge($events);
        foreach ($articles as $item) {
            switch (class_basename($item->getModel())) {
                case 'Article':
                    $item->getModel()->setAttribute('full_link', route('articles.show',$item->slug));
                    $item->getModel()->setAttribute('type', 'Новости');
                    break;
                case 'Event':
                    $item->getModel()->setAttribute('full_link', route('events.show',$item->id));
                    $item->getModel()->setAttribute('type', 'Пресс-Мероприятие');
                    break;
            }
        }

        $page = Page::with(['translations'])
            ->where(['type' => 'posts', 'status' => Page::STATUS_ACTIVE])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        return view('pages.articles.index', compact(
            'articles',
            'page',
            'category',
        ));
    }
}
