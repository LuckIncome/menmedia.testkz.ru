@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Пресс-анонсы
                </li>
            </ol>
        </div>
    </section>

    <section class="banner banner-anons">
        <div class="container">
            <div class="announcements announcements-anons">
                <div class="title">Пресс-анонсы</div>
                <div class="announcements__head">
                    <a href="#" class="today-active">Сегодня</a>
                </div>
                @foreach($anonsy as $anons)
                <div class="mixing">
                    <div class="mixing__items">
                        <div class="mixing__item">
                            <div class="images"><img src="{{Storage::disk('public')->url($anons->icon)}}" alt=""></div>
                            <div class="info">
                                <div class="data-time">
                                    <span>{{$anons->type}}</span> <i class="bi bi-circle-fill"></i> {{$anons->time}}
                                </div>
                                <a href="/anons/{{$anons->id}}" class="title">
                                   {{$anons->title}}
                                </a>
                                <div class="text" id="textLeng-1">
                                    {!!\Illuminate\Support\Str::limit($anons->text,210) !!}
                                </div>
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
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
