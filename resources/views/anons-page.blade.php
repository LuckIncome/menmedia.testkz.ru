@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Пресс-мероприятия</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$anons->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="anons-page">
        <div class="container">
            <div class="anons__date">
                <p>Сегодня <span> &nbsp;  &bull; &nbsp;  {{$anons->time}}</span></p>
            </div>
            <div class="anons__title">
                <div class="title">{{$anons->title}}</div>
                <div class="share share-page">
                    <a href="#"><i class="icon-share"></i> <span>Поделиться</span></a>
                </div>
            </div>
            <div class="anons__content">
                <div class="anons__content-left">
                    <img src="{{Storage::disk('public')->url($anons->image)}}" alt="img">
                    <p>{{$anons->source}}</p>
                    <div class="anons__content-text">
                        {{$anons->text}}
                    </div>
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
                <div class="calendar">

                </div>
            </div>
        </div>
    </section>
@endsection
