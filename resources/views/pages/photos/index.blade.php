@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
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
                    <a href="/gallery">Галерея</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    {{$page->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="gallery">
        <div class="container">
            <div class="gallery-content">
                <div class="gallery__photos">
                    <div class="title">Фото</div>
                    <div class="gallery__items">
                        @foreach($photos as $photo)
                            <div class="gallery__item">
                                <div class="item__image">
                                    <img src="{{Voyager::image($photo->image)}}" alt="photo-{{$photo->id}}">
                                </div>
                                <div class="item__text">
                                    <div class="item__title">
                                        <a href="{{ route('photos.show', $photo) }}">{!!\Illuminate\Support\Str::limit($photo->title,40) !!}</a>
                                    </div>
                                    <i class="icon-photo"></i>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
