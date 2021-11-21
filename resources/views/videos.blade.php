@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Галерея</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Видео</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$videos->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="videos">
        <div class="container">
            <div class="photos__title">
                <div class="title">{{$videos->title}}</div>
                <div class="download"><a href="#">Скачать</a>
                    <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                        <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
            <div class="videos__content">
                @if(count(json_decode($videos->gallery)))
                    @foreach (json_decode($videos->gallery) as $video)
                        <div class="video-item">
                            <div class="video__item-img">
                                <video src="{{Voyager::video($video)}}"></video>
                                <div class="video-text">1,5MB<svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                                        <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
{{--                <div class="video-item">--}}
{{--                    <div class="video__item-img">--}}
{{--                        <img src="img/column201.jpg" alt="video">--}}
{{--                        <div class="video-text">1,5MB<svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">--}}
{{--                                <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                                <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                            </svg>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="video-item">--}}
{{--                    <div class="video__item-img">--}}
{{--                        <img src="img/column111.jpg" alt="video">--}}
{{--                        <div class="video-text">1,5MB<svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">--}}
{{--                                <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                                <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                            </svg>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="video-item">--}}
{{--                    <div class="video__item-img">--}}
{{--                        <img src="img/column321.jpg" alt="video">--}}
{{--                        <div class="video-text">1,5MB<svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">--}}
{{--                                <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                                <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>--}}
{{--                            </svg>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
            </div>
        </div>
    </section>
@endsection

