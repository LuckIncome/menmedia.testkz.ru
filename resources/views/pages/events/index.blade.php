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

    <section class="events events-bread">
        <div class="container">
            <div class="announcements announcements-anons">
                <div class="title">{{ $page->title }}</div>
                <div class="announcements__head">
                    <a href="/events" class="event-active">Все мероприятия</a>
                </div>
                <div class="mixing">
                    <div class="mixing__items">
                        @foreach($events as $event)
                            <div class="mixing__item">
                                <div class="images">
                                    <picture>
                                        <source srcset="{{$event->webpImage}}" type="image/webp"/>
                                        <source srcset="{{\Voyager::image($event->image)}}" type="image/jpg"/>
                                        <img src="{{Voyager::image($event->image)}}" alt="{{$event->title}}">
                                    </picture>
                                </div>
                                <div class="info">
                                    <a href="{{route('events.show', $event->slug)}}" class="title">
                                        {{$event->title}}
                                    </a>
                                    <div class="text" id="eventsText-1">
                                        {{ \Illuminate\Support\Str::limit($event->excerpt, 200,'...') }}
                                    </div>
                                    <div class="data-time">
                                        @php
                                            $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $event->planned_at);
                                        @endphp
                                        <p>{{$date->locale(app()->getLocale())->isoFormat('D MMMM, YYYY')}}</p>
                                        @if($event->photos_count)
                                            <div><i class="icon-img"></i> :{{$event->photos_count}}</div>
                                        @endif
                                        @if($event->videos_count)
                                            <div><i class="icon-video"></i> :{{$event->videos_count}}</div>
                                        @endif
                                        @if(count(json_decode($event->files)))
                                            <div> <i class="icon-files"></i> :{{count(json_decode($event->files))}}</div>
                                        @endif
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
                        <div id="eventCalendar"></div>
                        <div class="head">
                            <p>Все мероприятия</p>
                            <i class="icon-calendar"></i>
                        </div>
                        <div class="items">
                            <div class="items-header">Файлы для скачивания <i class="icon-zip"></i> <span>:{{$events->count()}}</span></div>
                            @foreach($events as $event)
                            <div class="item">
                                <i class="icon-zip"></i> <p>{{ \Illuminate\Support\Str::limit($event->title, 80,'...') }}</p> <a href="{{ route('events.download', $event->slug) }}" download=""><i class="bi bi-download"></i></a>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('jquery-scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
@endsection
@section('scripts')
    <link rel="stylesheet" href="/css/eventCalendar.css">
    <link rel="stylesheet" href="/css/eventCalendar_theme_responsive.css">
    <script src="/js/moment.js"></script>
    <script src="/js/jquery.eventCalendar.js"></script>
    <script>
        $(function () {
            var data = {!! json_encode($eventsJson, JSON_THROW_ON_ERROR | JSON_UNESCAPED_UNICODE) !!};
            $('#eventCalendar').eventCalendar({
                jsonData: data,
                jsonDateFormat: 'human',
                dateFormat: 'DD MMMM',
                locales: {
                    locale: "ru",
                    monthNames: [ "Январь", "Февраль", "Март", "Апрель", "Май", "Июнь",
                        "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь" ],
                    dayNames: [ "Воскресенье","Понедельник","Вторник","Среда",
                        "Четверг","Пятница","Суббота" ],
                    dayNamesShort: [ 'Вс','Пн','Вт','Ср', 'Чт','Пт','Сб' ],
                    txt_noEvents: "Нет запланированных событий",
                    txt_SpecificEvents_prev: "",
                    txt_SpecificEvents_after: "События:",
                    txt_next: "след",
                    txt_prev: "пред",
                    txt_NextEvents: "Следующие события:",
                    txt_GoToEventUrl: "",
                    moment: {
                        "months" : [ "Январь", "Февраль", "Март", "Апрель", "Май", "Июнь",
                            "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь" ],
                        "monthsShort" : [ "Янв", "Фев", "Мар", "Апр", "Май", "Июн",
                            "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек" ],
                        "weekdays" : [ "Воскресенье","Понедельник","Вторник","Среда",
                            "Четверг","Пятница","Суббота" ],
                        "weekdaysShort" : [ 'Вс','Пн','Вт','Ср', 'Чт','Пт','Сб' ],
                        "weekdaysMin" : [ 'Вс','Пн','Вт','Ср', 'Чт','Пт','Сб' ],
                        "longDateFormat" : {
                            "LT" : "H:mm",
                            "LTS" : "LT:ss",
                            "L" : "DD/MM/YYYY",
                            "LL" : "D [de] MMMM [de] YYYY",
                            "LLL" : "D [de] MMMM [de] YYYY LT",
                            "LLLL" : "dddd, D [de] MMMM [de] YYYY LT"
                        },
                        "week" : {
                            "dow" : 1,
                            "doy" : 4
                        }
                    }
                }
            });
        });
    </script>
@endsection
