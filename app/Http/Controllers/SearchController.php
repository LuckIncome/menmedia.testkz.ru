<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Event;

class SearchController extends Controller
{
    public function index()
    {
        request()->validate([
            'q' => 'required',
        ]);

        $q = request('q');

        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $articles = Article::with('translations', 'category')
            ->where('status',true)
            ->whereTranslation('title', 'like', "%{$q}%")
            ->orWhere(function ($query) use ($q) {
                $query->whereTranslation('content', 'like',"%{$q}%");
            })
            ->latest()->get();

        $events = Event::with('translations', 'category')
            ->where('status',true)
            ->whereTranslation('title', 'like', "%{$q}%")
            ->orWhere(function ($query) use ($q) {
                $query->whereTranslation('content', 'like',"%{$q}%");
            })
            ->latest()->get();

        $articles = $articles->translate($locale,$fallbackLocale);
        $events = $events->translate($locale,$fallbackLocale);

        $articles = $articles->merge($events);
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

        return view('pages.articles.search', compact(
            'articles',
            'q',
        ));
    }

    public function trimResult($string, $word)
    {
        $str_arr = explode('.', $this->removeLinks($string));

        foreach ($str_arr as $key => $str) {
            if (strpos(mb_strtolower($str), mb_strtolower($word)) !== false) {

                $before = ' ';
                $after = ' ';

                if ($key != 0) {
                    $before = $str_arr[$key - 1];
//                    $after = $str_arr[$key + 1];
                }

                $text = $before . $str . $after;

                return $this->wrapWordTag($word, $text);
            }
        }

        return null;
    }


    public function removeLinks($string)
    {
        $pattern = "/\s*\([^)]*\)/";
        $replacement = "";
        return preg_replace($pattern, $replacement, $string);
    }

    public function wrapWordTag($word, $string)
    {
        return preg_replace("/(" . $word . ")/iu", '<strong>' . trim(html_entity_decode($word), " \t\n\r\0\x0B\xC2\xA0") . '</strong>', trim(html_entity_decode($string), " \t\n\r\0\x0B\xC2\xA0"));
    }
}
