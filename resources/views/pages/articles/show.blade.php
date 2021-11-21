@extends('partials.layout')
@section('page_title',(strlen($article->title) > 1 ? $article->title : ''))
@section('seo_title', (strlen($article->seo_title) > 1 ? $article->seo_title : ''))
@section('meta_keywords',(strlen($article->meta_keywords) > 1 ? $article->meta_keywords : ''))
@section('meta_description', (strlen($article->meta_description) > 1 ? $article->meta_description : ''))
@section('image',$page->thumbic)
@section('url',url()->current())
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">@lang('general.home')</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{route('pages.get',$page->slug)}}">{{$page->title}}</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$article->category->getTranslatedAttribute('name')}}
                </li>
            </ol>
        </div>
    </section>

    <section class="new-page">
        <div class="container">
            <div class="anons__date">
                @php
                    $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $article->created_at);
                @endphp
                <p>{{ $date->isCurrentDay() ? 'Сегодня ' . $date->format('H:i') : ($date->isYesterday() ? 'Вчера ' . $date->format('H:i') : $date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')) }}</p>
            </div>
            <div class="anons__title">
                <div class="title">
                    {{$article->title}}
                </div>
                <div class="share share-page">
                    <a href="#"><i class="icon-share"></i> <span>Поделиться</span></a>
                </div>
            </div>
            <div class="new__content">
                <img src="{{Storage::disk('public')->url($article->image)}}" alt="{{$article->title}}">
                <div class="new__content-text">
                    {{$article->text}}
                </div>
                {!! $article->content !!}
                <div class="share-bot">
                    <a href="#"><i class="icon-share"></i> <span>Поделиться</span></a>
                    <div class="share-icons">
                        <a href="#"><i class="icon-facebook"></i></a>
                        <a href="#"><i class="icon-instagram"></i></a>
                        <a href="#"><i class="icon-vk"></i></a>
                        <a href="#"><i class="icon-twitter"></i></a>
                        <a href="#"><i class="bi bi-link-45deg"></i></a>
                    </div>
                </div>
            </div>
            @if($similarArticles->isNotEmpty())
                @include('partials.read-also')
            @endif
        </div>
    </section>
@endsection
