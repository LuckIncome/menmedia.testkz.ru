@extends('partials.layout')
@section('page_title',(strlen($category->name) > 1 ? $category->name : ''))
@section('seo_title', (strlen($category->seo_title) > 1 ? $category->seo_title : ''))
@section('meta_keywords',(strlen($category->meta_keywords) > 1 ? $category->meta_keywords : ''))
@section('meta_description', (strlen($category->meta_description) > 1 ? $category->meta_description : ''))
@section('image',$category->thumbic)
@section('url',url()->current())
@section('content')

    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">@lang('general.home')</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/news">{{$page->title}}</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$category->name}}
                </li>
            </ol>
        </div>
    </section>

    <section class="news-page">
        <div class="container">
            <div class="title">{{$category->name}}</div>
            <div class="news__items">
                @foreach($articles as $article)
                    <div class="news__item">
                        <div class="images">
                            <div class="text">{{$article->category->getTranslatedAttribute('name')}}</div>
                            <img src="{{Voyager::image($article->image)}}" alt="{{$article->title}}">
                        </div>
                        <div class="release">{{$article->type}}</div>
                        <a href="{{$article->full_link}}"><div class="title">{{$article->title}}</div></a>
                        <div class="data">
                            @php
                                $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $article->created_at);
                            @endphp
                            <p>{{ $date->locale(app()->getLocale())->isoFormat('D MMMM YYYY') }}</p>
                            <div class="share">
                                <div class="dropdown">
                                    <div class="button" type="button" data-bs-toggle="dropdown" id="dropdownMenuClickableInside" data-bs-auto-close="outside">
                                        <a href="#"><i class="icon-share"></i> <span>Поделиться</span></a>
                                    </div>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                        <div class="share-icons">
                                            <a href="#"><i class="icon-facebook"></i></a>
                                            <a href="#"><i class="icon-instagram"></i></a>
                                            <a href="#"><i class="icon-vk"></i></a>
                                            <a href="#"><i class="icon-twitter"></i></a>
                                        </div>
                                        <div class="share-icons">
                                            <a href="#"><i class="bi bi-link-45deg"></i><p>Копировать
                                                    ссылку</p></a>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
