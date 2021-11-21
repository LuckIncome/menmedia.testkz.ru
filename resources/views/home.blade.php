@extends('partials.layout')
@section('content')
    <section class="banner">
        <div class="container">
            <div class="carousel slide" id="carouselExampleCaptions" data-bs-ride="carousel" data-bs-interval="8000">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/banner.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption">
                            <div class="live"><i class="bi bi-circle-fill" :class="{'active' : live}"></i>live</div>
                            <p><i class="bi bi-circle-fill"></i>Пресс-анонс</p>
                            <div class="title">Казахи в космосе</div>
                            <div class="text">Смотри <span>специальный репортаж</span></div>
                            <p>10 часов назад</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption">
                            <div class="live"><i class="bi bi-circle-fill" :class="{'active' : live}"></i>live</div>
                            <p><i class="bi bi-circle-fill"></i>Пресс-анонс</p>
                            <div class="title">Казахи в космосе</div>
                            <div class="text">Смотри <span>специальный репортаж</span></div>
                            <p>10 часов назад</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption">
                            <div class="live"><i class="bi bi-circle-fill" :class="{'active' : live}"></i>live</div>
                            <p><i class="bi bi-circle-fill"></i>Пресс-анонс</p>
                            <div class="title">Казахи в космосе</div>
                            <div class="text">Смотри <span>специальный репортаж</span></div>
                            <p>10 часов назад</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="announcements">
                <div class="title">Пресс-анонсы</div>
                <div class="announcements__head">
                    <a href="#" class="active">Сегодня</a>
                    <a href="#" class="">Завтра</a>
                </div>
                <div class="mixing">
                    <div class="mixing__items">
                        @foreach($anonsy as $anons)
                        <div class="mixing__item">
                            <div class="images"><img src="{{Storage::disk('public')->url($anons->icon)}}" alt=""></div>
                            <div class="info">
                                <div class="data-time">
                                    <span>Пресс-анонс</span> <i class="bi bi-circle-fill"></i> {{$anons->time}}
                                </div>
                                <a href="/anons-page" class="title">
                                    {{$anons->title}}
                                </a>
                                <div class="text" id="textLeng-1">
                                    {!! \Illuminate\Support\Str::limit($anons->text, 200) !!}
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
                        @endforeach
                    </div>
                    <div class="mixing__calendar">
                        <div class="head">
                            <p>Все анонсы</p>
                            <i class="icon-calendar"></i>
                        </div>
                        <div class="items">
                            @foreach($anonsy2 as $anons2)
                                <div class="item">
                                    <div class="data">{{$anons2->created_at}}</div>
                                    <a href="/anons-page" class="text">{!!\Illuminate\Support\Str::limit($anons2->title,40) !!}</a>
                                </div>
                                <div class="hr"></div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="title__bottom">
                    <a href="/anons">См. Все анонсы <i class="bi bi-chevron-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <section class="events">
        <div class="container">
            <div class="title">Пресс-мероприятия</div>
            <div class="mixing">
                <div class="mixing__items">
                    @foreach($events as $event)
                    <div class="mixing__item">
                        <div class="images"><img src="{{Storage::disk('public')->url($event->icon)}}" alt=""></div>
                        <div class="info">
                            <a href="/event-page" class="title">
                                {{$event->title}}
                            </a>
                            <div class="text" id="eventsText-1">
                                {{$event->pretext}}
                            </div>
                            <div class="data-time">
                                <p>28 Март, 2021</p> <div><i class="icon-img"></i> :17</div> <div><i class="icon-video"></i> :3</div> <div> <i class="icon-files"></i> :4</div>
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
                    @endforeach
                </div>
                <div class="mixing__calendar">
                    <div class="head">
                        <p>Все мероприятия</p>
                        <i class="icon-calendar"></i>
                    </div>
                    <div class="items">
                        <div class="items-header">Файлы для скачивания <i class="icon-zip"></i> <span>:25</span></div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                        <div class="item">
                            <i class="icon-zip"></i> <p>19. март пресс м..</p> <p>136KB</p> <a href="#"><i class="bi bi-download"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="title__bottom">
                <a href="/events">См. Все мероприятия <i class="bi bi-chevron-right"></i></a>
            </div>
        </div>
    </section>

    <section class="info-block">
        <div class="container">
            <div class="title">Больше новостей</div>
            <div class="block__head">
                <a href="#" class="active">1</a>
                <a href="#" class="">2</a>
                <a href="#" class="">3</a>
            </div>
            <div class="news">
                <div class="news__main">
                    <div class="images">
                        <div class="text">PR и медиа</div>
                        <img src="img/news-1.png" alt="">
                    </div>
                    <div class="release">НОВОСТЬ</div>
                    <a href="/new-page"><div class="title">PR-менеджер для работы с зарубежными отелями</div></a>
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
                <div class="news__items">
                    <div class="news__item">
                        <div class="images">
                            <div class="text">PR и медиа</div>
                            <img src="img/news-2.png" alt="">
                        </div>
                        <div class="release">НОВОСТЬ</div>
                        <a href="/new-page"><div class="title">PR-менеджер для работы с зарубежными отелями</div></a>
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
                    <div class="news__item">
                        <div class="images">
                            <div class="text">PR и медиа</div>
                            <img src="img/news-3.png" alt="">
                        </div>
                        <div class="release">НОВОСТЬ</div>
                        <a href="/new-page"><div class="title">PR-менеджер для работы с зарубежными отелями</div></a>
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
                    <div class="news__item">
                        <div class="images">
                            <div class="text">PR и медиа</div>
                            <img src="img/news-4.png" alt="">
                        </div>
                        <div class="release">НОВОСТЬ</div>
                        <a href="/new-page"><div class="title">PR-менеджер для работы с зарубежными отелями</div></a>
                        <div class="data"><p>12 мая 2021</p>
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
                    <div class="news__item">
                        <div class="images">
                            <div class="text">PR и медиа</div>
                            <img src="img/news-5.png" alt="">
                        </div>
                        <div class="release">НОВОСТЬ</div>
                        <a href="/new-page"><div class="title">PR-менеджер для работы с зарубежными отелями</div></a>
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
                </div>
            </div>
            <div class="title__bottom">
                <a href="#">См. Все новости <i class="bi bi-chevron-right"></i></a>
            </div>
            <div class="carousel slide" id="carouselExampleCaptions-2" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions-2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions-2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions-2" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions-2" data-bs-slide-to="3" aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/banner-2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="text">Авиакомпания S7 Airlines в поисках PR-менеджера</div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner-2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="text">Авиакомпания S7 Airlines в поисках PR-менеджера</div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner-2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="text">Авиакомпания S7 Airlines в поисках PR-менеджера</div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner-2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="text">Авиакомпания S7 Airlines в поисках PR-менеджера</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="title">Наши парнеры</div>
            <div class="my-carousel partners">
                @foreach($partners as $partner)
                <a href="#" class="images">
                    <img src="{{Storage::disk('public')->url($partner->icon)}}" alt="">
                </a>
                @endforeach
            </div>
        </div>
    </section>
@endsection
