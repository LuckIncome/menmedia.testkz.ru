@extends('partials.layout')
@section('content')
    <section class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">Главная</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Галерея</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="/">Фото</a>
                </li>
                <li class="breadcrumb-item breadcrumb-item-active" aria-current="page">
                   {{$photo->title}}
                </li>
            </ol>
        </div>
    </section>

    <section class="photos">
        <div class="container">
            <div class="photos__title">
                <div class="title">19. Март Digital Almaty Forum 2021 </div>
                <p>Отмеченных фото: 8 / 200KB </p>
                <div class="download"><a href="#">Скачать</a>
                    <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.5 1V10.5M7.5 10.5L11 7M7.5 10.5L4 7" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                        <path d="M1 14.5H14" stroke="white" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
            <div class="photos__content">
                <div class="album__colomn">
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column10.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column20.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column11.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column21.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="big-photo">
                        <img src="img/column12.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                </div>
                <div class="album__colomn">
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column30.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column40.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="big-photo">
                        <img src="img/column31.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column22.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column32.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                </div>
                <div class="album__colomn">
                    <div class="big-photo">
                        <img src="img/column50.jpg" alt="img">
                        <input type="checkbox" name="" id="">
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column41.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column51.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                    <div class="vertical-block">
                        <div class="small-photo">
                            <img src="img/column42.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                        <div class="small-photo">
                            <img src="img/column52.jpg" alt="img">
                            <input type="checkbox" name="" id="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
