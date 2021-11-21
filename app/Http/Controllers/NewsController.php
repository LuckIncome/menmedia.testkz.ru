<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Event;
use App\Models\Page;

class NewsController extends Controller
{
    public function index()
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $articles = Article::with('translations', 'category')->where('status',true)->take(8)->latest()->get();

        $events = Event::with('translations', 'category')->where('status',true)->take(8)->latest()->get();

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
        ));
    }

    public function show($articleSlug)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');
        $article = Article::with('translations')->where('slug', $articleSlug)->where('status',true)->firstOrFail();
        $article = $article->translate($locale,$fallbackLocale);

        $page = Page::with(['translations'])
            ->where(['type' => 'posts'])
            ->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);

        $similarArticles = Article::with('translations')
            ->where('status',true)
            ->where('category_id', $article->category_id)
            ->where('id', '!=', $article->id)
            ->latest()
            ->take(4)
            ->get();

        return view('pages.articles.show', compact('article', 'page', 'similarArticles'));
    }
}
