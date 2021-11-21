<header class="header">
    <transition name="fade" mode="out-in">
        <div class="header__top" v-if="!search" key="save">
            <div class="container">
                <a href="/"><i class="icon-logo"></i></a>
                <div class="link">
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['about']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['about']->first()->slug)}}">{{$pages['about']->first()->title}}</a>
                    <a class="link__item" href="#">Услуги</a>
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['announcements']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['announcements']->first()->slug)}}">{{$pages['announcements']->first()->title}}</a>
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['events']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['events']->first()->slug)}}">{{$pages['events']->first()->title}}</a>
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['photos']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['photos']->first()->slug)}}">{{$pages['photos']->first()->title}}</a>
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['videos']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['videos']->first()->slug)}}">{{$pages['videos']->first()->title}}</a>
                    <a class="link__item {{Str::contains(url()->current(), route('pages.get',$pages['contacts']->first()->slug)) ? 'link__item-active': ''}}" href="{{route('pages.get',$pages['contacts']->first()->slug)}}">{{$pages['contacts']->first()->title}}</a>
                </div>
                <div class="info">
                    <div class="header__top-lang">
                        <img src="/img/{{$locale}}.png" alt="russia" class="top-flag">
                        <select name="lang" id="lang" class="lang">
                            @foreach(config('voyager.multilingual.locales') as $loc)
                                <option value="{{$loc}}" @if($locale === $loc) selected
                                        @endif class="option-lang">{{$loc == 'ru' ? 'Рус': ($loc == 'kz' ? 'Каз': 'Eng')}}</option>
                            @endforeach
                        </select>
                    </div>
                    <i class="bi bi-search" @click="clickSearch"></i>
                    <i class="icon-feedback" data-bs-toggle="modal" data-bs-target="#appModal"></i>
                </div>
            </div>
        </div>
        <div class="header__top header__search" v-else key="edit">
            <form action="/search" method="post">
                @csrf
            <i class="bi bi-search"></i>
            <input type="text" name="q" placeholder="Искать в Menmedia.kz" v-model="searchText" value="{{ isset($q) ? $q : '' }}">
            <i class="bi bi-x-lg" @click="clickSearch"></i>
            </form>
        </div>
    </transition>
    <div class="header__menu">
        <div class="container">
            <div class="header-bot">
                <div class="title">Мен айтамын:</div>
                <div class="link">
                    <a href="{{route('pages.get',$pages['posts']->first()->slug)}}">{{$pages['posts']->first()->title}}</a>
                    @foreach($categories as $category)
                        <a href="{{ route('categories.show', $category->slug) }}">
                            {{ $category->name }}
                        </a>
                    @endforeach
                </div>
                <div class="heading__button">
                    <button @click="toggleHeading">
                        <transition name="fade" mode="out-in">
                            <div class="btn-heading"  key="Open" v-if="!heading">
                                Все рубрики <i class="bi bi-chevron-down"></i>
                            </div>
                            <div class="btn-heading-close" key="Close" v-else=>
                                Все рубрики
                            </div>
                        </transition>
                    </button>
                </div>
            </div>
            <div class="heading__menu">
                <transition name="fade" mode="out-in">
                    <div class="heading" v-if="heading">
                        <ul class="heading__list">
                            @foreach($categories as $category)
                            <li class="heading__list-item">
                                <a href="{{ route('categories.show', $category->slug) }}">{{$category->name}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </transition>
            </div>
        </div>
    </div>
</header>

<header class="header header__mobile">
    <div class="header__top">
        <div class="container">
            <transition name="fade" mode="out-in">
                <i @click="clickMobile" key="menu" class="bi bi-list" v-if="!mobile"></i>
                <i @click="clickMobile" key="close" class="bi bi-x" v-else></i>
            </transition>
            <a href="/"><i class="icon-logo"></i></a>
            <i class="icon-feedback"></i>
        </div>
    </div>
    <transition name="fade" mode="out-in">
        <div class="header__menu" v-if="mobile">
            <div class="container">
                <div class="search">
                    <i class="bi bi-search"></i>
                    <input type="text" placeholder="Искать в Menmedia.kz" v-model="searchText">
                    <i class="bi bi-x-lg" v-if="searchText.length > 1" @click="clear"></i>
                </div>
                <div class="content">
                    <div class="link">
                        <a href="{{route('pages.get',$pages['about']->first()->slug)}}">{{$pages['about']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['services']->first()->slug)}}">{{$pages['services']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['announcements']->first()->slug)}}">{{$pages['announcements']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['events']->first()->slug)}}">{{$pages['events']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['photos']->first()->slug)}}">{{$pages['photos']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['videos']->first()->slug)}}">{{$pages['videos']->first()->title}}</a>
                        <a href="{{route('pages.get',$pages['contacts']->first()->slug)}}">{{$pages['contacts']->first()->title}}</a>
                    </div>
                </div>
                <div class="content">
                    <div class="title">Мен айтамын:</div>
                    <div class="link">
                        <a href="{{route('pages.get',$pages['posts']->first()->slug)}}">{{$pages['posts']->first()->title}}</a>
                        @if(count($categories->chunk(6)))
                            @foreach($categories->chunk(6)[0] as $category)
                                <a href="{{ route('categories.show', $category->slug) }}">
                                    {{ $category->name }}
                                </a>
                            @endforeach
                        @endif
                    </div>
                </div>
                <div class="lang">
                    <a href="#" class="active"><img src="/img/ru.png" alt="ru-flag"> Рус</a>
                    <a href="#" class=""><img src="/img/kz.png" alt="kz-flag"> Каз</a>
                    <a href="#" class=""><img src="/img/en.png" alt="en-flag"> Анг</a>
                </div>
            </div>
        </div>
    </transition>
    <div class="heading__menu">
        <transition name="fade" mode="out-in">
            <div class="heading" v-if="heading">
                <ul class="heading__list">
                    @foreach($categories as $category)
                        <li class="heading__list-item">
                            <a href="{{ route('categories.show', $category->slug) }}">
                                {{ $category->name }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </transition>
    </div>
</header>
