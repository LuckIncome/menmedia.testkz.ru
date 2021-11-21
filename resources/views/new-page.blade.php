@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Новости</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                    Спорт
                </li>
            </ol>
        </div>
    </section>

    <section class="new-page">
        <div class="container">
            <div class="anons__date">
                <p>Сегодня 13:08</p>
            </div>
            <div class="anons__title">
                <div class="title">
                    {{$article->title}}
                </div>
                <div class="share share-page">
                    <a href="#"><i class="icon-share"></i> <span>Поделиться</span></a>
                </div>
            </div>
            <div class="new__content">
                <img src="{{Storage::disk('public')->url($article->image)}}" alt="">
                <p>{{$article->source}}</p>
                <div class="new__content-text">
                   {{$article->text}}
                </div>
                {!! $article->content !!}
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
            <div class="other-news">
                <div class="title">Читайте также</div>
                <div class="other-news-items">
                    <div class="other-item">
                        <div class="other-img">
                            <img src="img/other-img1.jpg" alt="">
                        </div>
                        <div class="other-text">
                            <div class="other-type">ПРЕСС-АНОНС</div>
                            <div class="other-title">PR-менеджер для работы с зарубежными отелями</div>
                            <div class="other-bot">
                                <div class="other-date">12 мая 2021</div>
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
                    <div class="other-item">
                        <div class="other-img">
                            <img src="img/other-img2.jpg" alt="">
                        </div>
                        <div class="other-text">
                            <div class="other-type">НОВОСТЬ</div>
                            <div class="other-title">PR-менеджер для работы с зарубежными отелями</div>
                            <div class="other-bot">
                                <div class="other-date">12 мая 2021</div>
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
                    <div class="other-item">
                        <div class="other-img">
                            <img src="img/other-img3.jpg" alt="">
                        </div>
                        <div class="other-text">
                            <div class="other-type">ПРЕСС-МЕРОПРИЯТИЕ</div>
                            <div class="other-title">PR-менеджер для работы с зарубежными отелями</div>
                            <div class="other-bot">
                                <div class="other-date">12 мая 2021</div>
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
                    <div class="other-item">
                        <div class="other-img">
                            <img src="img/other-img4.jpg" alt="">
                        </div>
                        <div class="other-text">
                            <div class="other-type">СТАТЬЯ</div>
                            <div class="other-title">PR-менеджер для работы с зарубежными отелями</div>
                            <div class="other-bot">
                                <div class="other-date">12 мая 2021</div>
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
            </div>
        </div>
    </section>
@endsection
