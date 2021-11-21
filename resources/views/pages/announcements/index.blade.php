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

    <section class="banner banner-anons">
        <div class="container">
            <div class="announcements announcements-anons">
                <div class="title">{{ $page->title }}</div>
                <div class="announcements__head">
                    <a href="#" class="today-active">Все анонсы</a>
                </div>
                <div class="mixing">
                    <div class="mixing__items">
                        <div class="mixing__item"></div>
                    </div>
                    <div id="eventCalendar" style="width: 25%;"></div>
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
    <script src="/js/jquery.announcementCalendar.js"></script>
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
