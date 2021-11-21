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
            @include('partials.breadcrumbs',['title'=>(strlen($page->seo_title) > 1 ? $page->seo_title : $page->title)])
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
                <div class="gallery__videos">
                    <div class="title">Видео</div>
                    <div class="gallery__items">
                        @foreach($videos as $video)
                        <div class="gallery__item">
                            <div class="item__image">
                                <img src="{{Voyager::image($video->image)}}" alt="video-{{$video->id}}">
                            </div>
                            <div class="item__text">
                                <div class="item__title">
                                    <a href="{{ route('videos.show', $video) }}">{!!\Illuminate\Support\Str::limit($video->title,40) !!}</a>
                                </div>
                                <svg width="25" height="21" viewBox="0 0 25 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.33893 4.44132H2.12455C0.979946 4.44132 0.0487766 5.37249 0.0487766 6.51709V18.607C0.0487766 19.7514 0.979946 20.6826 2.12455 20.6826H18.6241C19.5539 20.6826 20.3432 20.0679 20.6062 19.2235C20.664 19.0381 20.6959 18.8416 20.6989 18.6381C21.8733 18.6192 22.8374 17.7209 22.9603 16.574C24.1306 16.4609 25.0488 15.4719 25.0488 14.272V3.92519C25.0488 1.9505 23.4421 0.34375 21.4672 0.34375H6.7104C5.51887 0.34375 4.53544 1.24974 4.41127 2.40903C3.32981 2.51336 2.46444 3.36595 2.33893 4.44132ZM1.02534 7V6.51709C1.02534 5.91093 1.51839 5.41788 2.12455 5.41788H18.6241C19.2301 5.41788 19.7231 5.91093 19.7231 6.51709V13.4911V14.7933V14.9766V18.607C19.7231 18.7205 19.7058 18.8302 19.6735 18.9334C19.5343 19.3805 19.1164 19.706 18.6241 19.706H2.12436C1.51839 19.706 1.02534 19.213 1.02534 18.6068V18H1V7H1.02534ZM19 14.3621C19.1623 14.4988 19.3033 14.6181 19.4171 14.7147C19.5564 14.832 19.6611 14.9218 19.7231 14.9766C19.6913 14.9485 19.5832 14.8558 19.4171 14.7147C19.3006 14.6166 19.16 14.4994 19 14.3674V14.3621ZM21.9971 4.79742V16.3262C21.9971 17.0501 21.4186 17.6411 20.6997 17.6616V14.5726V6.51709C20.6997 5.37249 19.7685 4.44132 18.6241 4.44132H3.32656C3.45149 3.83325 3.99089 3.37453 4.6352 3.37453H4.8862H10.6952C10.9649 3.37453 11.1835 3.15595 11.1835 2.88625C11.1835 2.61655 10.9649 2.39797 10.6952 2.39797H5.39966C5.5204 1.78437 6.06228 1.32031 6.7104 1.32031H21.4672C22.9036 1.32031 24.0723 2.48895 24.0723 3.92519V14.272C24.0723 14.9279 23.5975 15.475 22.9736 15.5873V4.79742C22.9736 3.47429 21.8973 2.39797 20.5742 2.39797H14.6015C14.3318 2.39797 14.1132 2.61655 14.1132 2.88625C14.1132 3.15595 14.3318 3.37453 14.6015 3.37453H20.5742C21.3097 3.37453 21.9168 3.93549 21.9896 4.65208C21.9946 4.69976 21.9971 4.7484 21.9971 4.79742Z" fill="#389DD5"/>
                                    <path d="M13 12.5L9.25 14.6651L9.25 10.3349L13 12.5Z" stroke="#389DD5" stroke-linecap="round" stroke-linejoin="bevel"/>
                                </svg>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
    </section>
@endsection
