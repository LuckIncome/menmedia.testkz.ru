@extends('partials.layout')
@section('page_title',(strlen($video->title) > 1 ? $video->title : ''))
@section('seo_title', (strlen($video->seo_title) > 1 ? $video->seo_title : ''))
@section('meta_keywords',(strlen($video->meta_keywords) > 1 ? $video->meta_keywords : ''))
@section('meta_description', (strlen($video->meta_description) > 1 ? $video->meta_description : ''))
@section('url',url()->current())
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">@lang('general.home')</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/gallery">Галерея</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/gallery">Видео</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$video->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="videos">
        <div class="container">
            <div class="photos__title">
                <div class="title">{{$video->title}}</div>
            </div>
            <div class="videos__content">
                @php
                    $videos = explode(PHP_EOL, $video->videos);
                @endphp
                @if(count($videos))
                    @foreach ($videos as $videoLink)
                        @php
                            preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $videoLink, $match);
                        @endphp
                        <div class="video-item">
                            <div class="video__item-img">
                                <iframe width="100%" height="370" src="https://www.youtube.com/embed/{{ $match[1] }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>
@endsection

