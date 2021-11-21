@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image',$page->thumbic)
@section('url',url()->current())
@section('content')
    <section class="banner">
        <div class="container">
            <div class="carousel slide" id="carouselExampleCaptions" data-bs-ride="carousel" data-bs-interval="8000">
                <div class="carousel-indicators">
                    @foreach($banners as $banner)
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{$loop->index}}" class="{{ $loop->first ? 'active' : '' }}" @if($loop->first) aria-current="true" @endif aria-label="Slide {{$loop->index}}"></button>
                    @endforeach
                </div>
                <div class="carousel-inner">
                    @foreach($banners as $banner)
                    <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                        <picture>
                            <source srcset="{{$banner->webpImage}}" class="d-block w-100" type="image/webp"/>
                            <source srcset="{{\Voyager::image($banner->image)}}" class="d-block w-100" type="image/jpg"/>
                            <img src="{{\Voyager::image($banner->image)}}"
                                 class="d-block w-100"
                                 alt="{{$banner->title}}">
                        </picture>
                        <div class="carousel-caption">
                            @if($banner->type == 'press-announcement')
                            <div class="live"><i class="bi bi-circle-fill" :class="{'active' : live}"></i>live</div>
                            @endif
                            <p class="type"><i class="bi bi-circle-fill"></i>{{ __('general.'.$banner->type) }}</p>
                            <div class="title">{{$banner->title}}</div>
                            <div class="text">{!! $banner->subtitle !!}</div>
                            <p>{{ $banner->event ? $banner->event->created_at->diffForHumans() : '' }}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

            <div class="announcements">
                <div class="title">Пресс-анонсы</div>
                <div class="announcements__head">
                    <div class="tabs-day" :class="{'active' : tab1}" @click="toggleTab1">Сегодня</div>
                    <div class="tabs-day" :class="{'active' : tab2}" @click="toggleTab2">Завтра</div>
                </div>
                <div class="mixing">
                    <transition name="fade" mode="out-in">
                        <div class="mixing__items" key="tab1" v-if="tab1">
                            @forelse($todayAnnouncements as $announcement)
                            <div class="mixing__item">
                                <div class="images">
                                    <picture>
                                        <source srcset="{{$announcement->webpImage}}" type="image/webp"/>
                                        <source srcset="{{\Voyager::image($announcement->image)}}" type="image/jpg"/>
                                        <img src="{{Voyager::image($announcement->image)}}" alt="Annouce {{$loop->index}}">
                                    </picture>
                                </div>
                                <div class="info">
                                    @php
                                        $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $announcement->planned_at);
                                    @endphp
                                    <div class="data-time">
                                        <span>@lang('general.press-announcement')</span> <i class="bi bi-circle-fill"></i> {{$date->format('H:i')}}
                                    </div>
                                    <a href="{{route('anons.show', $announcement->slug)}}" class="title">
                                        {{$announcement->title}}
                                    </a>
                                    <div class="text" id="textLeng-{{$loop->iteration}}">
                                        {{ \Illuminate\Support\Str::limit($announcement->excerpt, 200,'...') }}
                                    </div>
                                    <div class="share">
                                        <div class="dropdown">
                                            <div class="button" type="button" data-bs-toggle="dropdown" id="dropdownMenuClickableInside" data-bs-auto-close="outside">
                                                <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                                            </div>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                                <div class="share-icons">
                                                    <a href="#"><i class="icon-facebook"></i></a>
                                                    <a href="#"><i class="icon-instagram"></i></a>
                                                    <a href="#"><i class="icon-vk"></i></a>
                                                    <a href="#"><i class="icon-twitter"></i></a>
                                                    <a href="#" class="icon-grey"><img src="img/telegram-grey.svg" alt=""></a>
                                                    <a href="#" class="icon-grey"><img src="img/whtsp-grey.svg" alt=""></a>
                                                </div>
                                                <div class="share-icons">
                                                    <a href="#"><i class="bi bi-link-45deg"></i><p>@lang('general.copy-link')</p></a>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @empty
                                <div class="mixing__item">
                                    <div class="info">
                                        <div class="text" id="textLeng-1">
                                            На сегодня нет пресс-анонсов
                                        </div>
                                    </div>
                                </div>
                            @endforelse
                        </div>
                        <div class="mixing__items" key="tab2" v-if="tab2">
                            @forelse($tomorrowAnnouncements as $announcement)
                                <div class="mixing__item">
                                    <div class="images">
                                        <picture>
                                            <source srcset="{{$announcement->webpImage}}" type="image/webp"/>
                                            <source srcset="{{\Voyager::image($announcement->image)}}" type="image/jpg"/>
                                            <img src="{{Voyager::image($announcement->image)}}" alt="Annouce {{$loop->index}}">
                                        </picture>
                                    </div>
                                    <div class="info">
                                        @php
                                            $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $announcement->planned_at);
                                        @endphp
                                        <div class="data-time">
                                            <span>@lang('general.press-announcement')</span> <i class="bi bi-circle-fill"></i> {{$date->format('H:i')}}
                                        </div>
                                        <a href="{{route('anons.show', $announcement->slug)}}" class="title">
                                            {{$announcement->title}}
                                        </a>
                                        <div class="text" id="textLeng-{{$loop->iteration}}">
                                            {{ \Illuminate\Support\Str::limit($announcement->excerpt, 200,'...') }}
                                        </div>
                                        <div class="share">
                                            <div class="dropdown">
                                                <div class="button" type="button" data-bs-toggle="dropdown" id="dropdownMenuClickableInside" data-bs-auto-close="outside">
                                                    <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                                                </div>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                                    <div class="share-icons">
                                                        <a href="#"><i class="icon-facebook"></i></a>
                                                        <a href="#"><i class="icon-instagram"></i></a>
                                                        <a href="#"><i class="icon-vk"></i></a>
                                                        <a href="#"><i class="icon-twitter"></i></a>
                                                        <a href="#" class="icon-grey"><img src="img/telegram-grey.svg" alt=""></a>
                                                        <a href="#" class="icon-grey"><img src="img/whtsp-grey.svg" alt=""></a>
                                                    </div>
                                                    <div class="share-icons">
                                                        <a href="#"><i class="bi bi-link-45deg"></i><p>@lang('general.copy-link')</p></a>
                                                    </div>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div class="mixing__item">
                                    <div class="info">
                                        <div class="text" id="textLeng-1">
                                            На завтра нет пресс-анонсов
                                        </div>
                                    </div>
                                </div>
                            @endforelse
                        </div>
                    </transition>
                    <div class="mixing__calendar">
                        <div class="head">
                            <p>@lang('general.all-announcements')</p>
                            <i class="icon-calendar"></i>
                        </div>
                        <div class="items">
                            @forelse($announcements as $announce)
                                <div class="item">
                                    @php
                                        $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $announce->planned_at);
                                    @endphp
                                    <div class="data">{{$date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')}}</div>
                                    <a href="{{route('anons.show', $announce->slug)}}" class="text">{!!\Illuminate\Support\Str::limit($announce->title,40) !!}</a>
                                </div>
                                @if(!$loop->last)
                                    <div class="hr"></div>
                                @endif
                            @empty
                                <p>Пока пресс-анонсов нет</p>
                            @endforelse
                        </div>
                    </div>
                </div>
                <div class="title__bottom">
                    <a href="/anons">@lang('general.see-all-announcements')<i class="bi bi-chevron-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <section class="events">
        <div class="container">
            <div class="title">Пресс-мероприятия</div>
            <div class="mixing">
                <div class="mixing__items">
                    @if(count($latestEvents))
                    @foreach($latestEvents->chunk(3)[0] as $event)
                    <div class="mixing__item">
                        <div class="images">
                            <picture>
                                <source srcset="{{$event->webpImage}}" type="image/webp"/>
                                <source srcset="{{\Voyager::image($event->image)}}" type="image/jpg"/>
                                <img src="{{Voyager::image($event->image)}}" alt="Annouce {{$loop->index}}">
                            </picture>
                        </div>
                        <div class="info">
                            <a href="{{route('events.show',$event->slug)}}" class="title">
                                {{$event->title}}
                            </a>
                            <div class="text" id="eventsText-1">
                                {{ Str::limit($event->excerpt, 120,'...') }}
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
                                        <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                                    </div>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                        <div class="share-icons">
                                            <a href="#"><i class="icon-facebook"></i></a>
                                            <a href="#"><i class="icon-instagram"></i></a>
                                            <a href="#"><i class="icon-vk"></i></a>
                                            <a href="#"><i class="icon-twitter"></i></a>
                                        </div>
                                        <div class="share-icons">
                                            <a href="#"><i class="bi bi-link-45deg"></i><p>@lang('general.copy-link')</p></a>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
                <div class="mixing__calendar">
                    <div class="head">
                        <p>Все мероприятия</p>
                        <i class="icon-calendar"></i>
                    </div>
                    <div class="items">
                        <div class="items-header">Файлы для скачивания <i class="icon-zip"></i> <span>:{{ $latestEvents->count() }}</span></div>
                        @foreach($latestEvents as $event)
                        <div class="item">
                            <i class="icon-zip"></i> <p>{{ \Illuminate\Support\Str::limit($event->title, 80,'...') }}</p> <a href="{{ route('events.download', $event->slug) }}" download=""><i class="bi bi-download"></i></a>
                        </div>
                        @endforeach
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
                @foreach($latestArticles->chunk(4) as $articlesChunk)
                <div class="new-tab" :class="{'active' : newtab{{$loop->iteration}}}" @click="toggleTabNew{{$loop->iteration}}">{{$loop->iteration}}</div>
                @endforeach
            </div>
            <div class="news">
                <div class="news__main">
                    <div class="images">
                        <div class="text">{{$latestArticles[0]->category->getTranslatedAttribute('name')}}</div>
                        <picture>
                            <source srcset="{{$latestArticles[0]->webpImage}}" type="image/webp"/>
                            <source srcset="{{\Voyager::image($latestArticles[0]->image)}}" type="image/jpg"/>
                            <img src="{{Voyager::image($latestArticles[0]->image)}}" alt="Annouce {{$latestArticles[0]->id}}">
                        </picture>
                    </div>
                    <div class="release">@lang('general.news-item')</div>
                    <a href="{{route('articles.show', $latestArticles[0]->slug)}}">
                        <div class="title">{{$latestArticles[0]->title}}</div>
                    </a>
                    <div class="data">
                        @php
                            $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $latestArticles[0]->created_at);
                        @endphp
                        <p>{{$date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')}}</p>
                        <div class="share">
                            <div class="dropdown">
                                <div class="button" type="button" data-bs-toggle="dropdown" id="dropdownMenuClickableInside" data-bs-auto-close="outside">
                                    <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                                </div>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                    <div class="share-icons">
                                        <a href="#"><i class="icon-facebook"></i></a>
                                        <a href="#"><i class="icon-instagram"></i></a>
                                        <a href="#"><i class="icon-vk"></i></a>
                                        <a href="#"><i class="icon-twitter"></i></a>
                                        <a href="#" class="icon-grey"><img src="/img/telegram-grey.svg" alt="telegram"></a>
                                        <a href="#" class="icon-grey"><img src="/img/whtsp-grey.svg" alt="wtsp-grey"></a>
                                    </div>
                                    <div class="share-icons">
                                        <a href="#"><i class="bi bi-link-45deg"></i><p>@lang('general.copy-link')</p></a>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <transition name="fade" mode="out-in">
                    @php
                        $latestArticles = $latestArticles->filter(function ($value) use ($latestArticles) {
                            return $value->id != $latestArticles[0]->id;
                        });
                        $latestArticles = collect($latestArticles->all());
                    @endphp
                    @foreach($latestArticles->chunk(4) as $articlesChunk)
                    <div class="news__items" key="newtab{{$loop->iteration}}" v-if="newtab{{$loop->iteration}}">
                        @foreach($articlesChunk as $article)
                            <div class="news__item">
                                <div class="images">
                                    <div class="text">{{$article->category->getTranslatedAttribute('name')}}</div>
                                    <picture>
                                        <source srcset="{{$article->webpImage}}" type="image/webp"/>
                                        <source srcset="{{\Voyager::image($article->image)}}" type="image/jpg"/>
                                        <img src="{{Voyager::image($article->image)}}" alt="Annouce {{$article->id}}">
                                    </picture>
                                </div>
                                <div class="release">@lang('general.news-item')</div>
                                <a href="{{route('articles.show', $article->slug)}}">
                                    <div class="title">{{$article->title}}</div>
                                </a>
                                <div class="data">
                                    @php
                                        $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $article->created_at);
                                    @endphp
                                    <p>{{$date->locale(app()->getLocale())->isoFormat('D MMMM YYYY')}}</p>
                                    <div class="share">
                                        <div class="dropdown">
                                            <div class="button" type="button" data-bs-toggle="dropdown" id="dropdownMenuClickableInside" data-bs-auto-close="outside">
                                                <a href="#"><i class="icon-share"></i> <span>@lang('general.share')</span></a>
                                            </div>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickableInside">
                                                <div class="share-icons">
                                                    <a href="#"><i class="icon-facebook"></i></a>
                                                    <a href="#"><i class="icon-instagram"></i></a>
                                                    <a href="#"><i class="icon-vk"></i></a>
                                                    <a href="#"><i class="icon-twitter"></i></a>
                                                    <a href="#" class="icon-grey"><img src="img/telegram-grey.svg" alt=""></a>
                                                    <a href="#" class="icon-grey"><img src="img/whtsp-grey.svg" alt=""></a>
                                                </div>
                                                <div class="share-icons">
                                                    <a href="#"><i class="bi bi-link-45deg"></i><p>@lang('general.copy-link')</p></a>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    @endforeach
                </transition>
            </div>
            <div class="title__bottom">
                <a href="/news">См. Все новости <i class="bi bi-chevron-right"></i></a>
            </div>
            <div class="carousel slide" id="carouselExampleCaptions-2" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    @foreach($footerSliders as $slider)
                    <button type="button" data-bs-target="#carouselExampleCaptions-2" data-bs-slide-to="{{$loop->index}}" class="{{ $loop->first ? 'active' : '' }}" @if($loop->first) aria-current="true" @endif aria-label="Slide {{$loop->index}}"></button>
                    @endforeach
                </div>
                <div class="carousel-inner">
                    @foreach($footerSliders as $slider)
                    <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                        <picture>
                            <source srcset="{{$slider->webpImage}}" class="d-block w-100" type="image/webp"/>
                            <source srcset="{{\Voyager::image($slider->image)}}" class="d-block w-100" type="image/jpg"/>
                            <img src="{{\Voyager::image($slider->image)}}"
                                 class="d-block w-100"
                                 alt="{{$slider->title}}">
                        </picture>
                        <div class="carousel-caption d-none d-md-block">
                            <div class="text">{{$slider->title}}</div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="title">Наши парнеры</div>
            <div class="my-carousel partners">
                @foreach($partners as $partner)
                <a href="#" class="images">
                    <img src="{{Voyager::image($partner->icon)}}" alt="partner {{$loop->index}}">
                </a>
                @endforeach
            </div>
        </div>
    </section>
@endsection
