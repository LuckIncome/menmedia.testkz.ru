@extends('partials.layout')
@section('content')

    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Все новости
                </li>
            </ol>
        </div>
    </section>

    <section class="news-page">
        <div class="container">
            <div class="title">Новости</div>
            <div class="news__items">
                @foreach($articles as $article)
                <div class="news__item">
                    <div class="images">
                        <div class="text">{{$article->area}}</div>
                        <img src="{{Storage::disk('public')->url($article->icon)}}" alt="">
                    </div>
                    <div class="release">{{$article->type}}</div>
                    <a href="/news/{{$article->id}}"><div class="title">{{$article->title}}</div></a>
                    <div class="data">
                        <p>12 мая 2021</p>
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
