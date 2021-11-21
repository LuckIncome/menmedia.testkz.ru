@extends('partials.layout')
@section('page_title',(strlen($announcement->title) > 1 ? $announcement->title : ''))
@section('seo_title', (strlen($announcement->seo_title) > 1 ? $announcement->seo_title : ''))
@section('meta_keywords',(strlen($announcement->meta_keywords) > 1 ? $announcement->meta_keywords : ''))
@section('meta_description', (strlen($announcement->meta_description) > 1 ? $announcement->meta_description : ''))
@section('url',url()->current())
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">@lang('general.home')</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/announcements">Пресс-анонсы</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$announcement->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="anons-page">
        <div class="container">
            <div class="anons__date">
                @php
                    $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $announcement->created_at);
                @endphp
                <p>{{ $date->isCurrentDay() ? 'Сегодня ' : ($date->isYesterday() ? 'Вчера ' : $date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')) }} <span> &nbsp;  &bull; &nbsp;  {{ $date->format('H:i') }}</span></p>
{{--                <p>Сегодня <span> &nbsp;  &bull; &nbsp;  {{$anons->time}}</span></p>--}}
            </div>
            <div class="anons__title">
                <div class="title">{{$announcement->title}}</div>
                <div class="share share-page">
                    <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                </div>
            </div>
            <div class="anons__content">
                <div class="anons__content-left">
                    <img src="{{Voyager::image($announcement->image)}}" alt="{{$announcement->title}}">
                    <div class="anons__content-text">
                        {!! $announcement->content !!}
                    </div>
                    <div class="share-bot">
                        <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
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
