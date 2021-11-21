@extends('partials.layout')
@section('page_title', __('pages.searchResultTitle'))
@section('seo_title', __('pages.searchResultTitle'))
@section('meta_keywords', __('pages.searchResultTitle'))
@section('meta_description', __('pages.searchResultTitle'))
@section('url',url()->current())
@section('content')

    <section class="breadcrumbs">
        <div class="container">
            @include('partials.breadcrumbs',['title'=> __('pages.searchResultTitle')])
        </div>
    </section>

    <section class="events events-bread">
        <div class="container">
            <div class="title">@lang('pages.searchResultTitle')</div>
            <div class="announcements__head">
                <a href="" class="event-active">@lang('pages.searchRequest',['input'=> $q,'count'=> $articles ? $articles->count() : 0])</a>
            </div>
            <div class="mixing">
                <div class="mixing__items">
                    @foreach($articles as $article)
                        <div class="mixing__item">
                            <div class="images"><img src="{{Voyager::image($article->image)}}" alt="search-result-{{$article->id}}"></div>
                            <div class="info">
                                <a href="/event-page" class="title">
                                    {{$article->title}}
                                </a>
                                <div class="text" id="eventsText-1">
                                    {!!\Illuminate\Support\Str::limit($article->content,170) !!}
                                </div>
                                @php
                                    $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $article->created_at);
                                @endphp
                                <div class="data-time">
                                    <p>{{ $date->isCurrentDay() ? 'Сегодня ' : ($date->isYesterday() ? 'Вчера ' : $date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')) }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection
