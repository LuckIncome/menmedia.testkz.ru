@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image',$page->thumbic)
@section('url',url()->current())
@section('page_class','page')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            @include('partials.breadcrumbs',['title'=>(strlen($page->seo_title) > 1 ? $page->seo_title : '')])
        </div>
    </section>

    <section class="contacts">
        <div class="container">
            <div class="title">{{$page->title}}</div>
            <div class="contacts__content">
                <div class="our-contacts">
                    <div class="phones">
                        <div class="contacts__title phone-numbers">Телефоны для связи:</div>
                        <div class="contacts__text">
                            @foreach($phones as $phone)
                                <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->value) }}">{{$phone->value}}</a>@if(!$loop->last)<br>@endif
                            @endforeach
                        </div>
                    </div>
                    <div class="mails">
                        <div class="contacts__title emails">Наш E-mail:</div>
                        <div class="contacts__text"><a href="mailto:{{ $email->value }}">{{ $email->value }}</a></div>
                    </div>
                    <div class="media">
                        <div class="contacts__title social-media">Мы в соц.сетях:</div>
                        <div class="contacts__text">
                            <ul class="socials">
                                @foreach($socials as $social)
                                    <li> <a rel="nofollow" href="{{$social->link}}"><img src="/img/{{strtolower($social->value)}}.svg" alt="{{$social->value}}"></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="contacts-app">
                    <div class="app-info">
                        <div class="app-left">
                            <input type="text" placeholder="Ваше Имя*">
                            <input type="text" placeholder="Номер телефона*">
                            <input type="text" placeholder="E-mail*">
                        </div>
                        <div class="app-right">
                            <input type="text" placeholder="Текст обращения...">
                        </div>
                    </div>
                    <div class="send-btn">
                        <button type="submit">Отправить</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
