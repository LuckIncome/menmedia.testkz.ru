@extends('partials.layout')
@section('page_title',(strlen($photo->title) > 1 ? $photo->title : ''))
@section('seo_title', (strlen($photo->seo_title) > 1 ? $photo->seo_title : ''))
@section('meta_keywords',(strlen($photo->meta_keywords) > 1 ? $photo->meta_keywords : ''))
@section('meta_description', (strlen($photo->meta_description) > 1 ? $photo->meta_description : ''))
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
                    <a href="/gallery">Фото</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                   {{$photo->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="photos">
        <div class="container">
            <div class="photos__title">
                <div class="title">{{ $photo->title }}</div>
                <p>Отмеченных фото: 8 / 200KB </p>
                <div class="download"><a href="#">Скачать</a>
                    <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                        <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
            <div class="photos__content">
                @foreach(array_chunk(json_decode($photo->images), 6) as $photoWrap)
                <div class="album__colomn">
                    @foreach(array_chunk($photoWrap, 2) as $photoGroup)
                    <div class="vertical-block">
                        @foreach($photoGroup as $photo)
                        <div class="small-photo">
                            <img src="{{Voyager::image($photo)}}" alt="{{$photo}}">
                            <input type="checkbox" name="" id="">
                        </div>
                        @endforeach
                    </div>
                    @endforeach
<!--                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column11.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column21.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="big-photo">
                        <img src="img/column12.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>-->
                </div>
                @endforeach
<!--                <div class="album__colomn">
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column10.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column20.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column11.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column21.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="big-photo">
                        <img src="img/column12.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                </div>
                <div class="album__colomn">
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column30.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column40.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="big-photo">
                        <img src="img/column31.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column22.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column32.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                </div>
                <div class="album__colomn">
                    <div class="big-photo">
                        <img src="img/column50.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column41.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column51.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column42.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column52.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                </div>
                -->
            </div>
        </div>
    </section>
@endsection
