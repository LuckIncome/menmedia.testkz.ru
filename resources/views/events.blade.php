@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Пресс-мероприятия
                </li>
            </ol>
        </div>
    </section>

    <section class="events events-bread">
        <div class="container">
            <div class="title">Пресс-мероприятия</div>
            <div class="announcements__head">
                <a href="/events" class="event-active">Все мероприятия</a>
            </div>
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
                                {!!\Illuminate\Support\Str::limit($event->pretext,170) !!}
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
        </div>
    </section>
@endsection
