<footer class="footer">
    <div class="container">
        <div class="footer__head">
            <div class="content">
                <div class="colom colom-1">
                    <a href="/"><i class="icon-logo"></i></a>
                    <p>Мен айтамын:</p>
                </div>
                <div class="colom colom-2">
                    <a href="{{route('pages.get',$pages['about']->first()->slug)}}">{{$pages['about']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['services']->first()->slug)}}">{{$pages['services']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['announcements']->first()->slug)}}">{{$pages['announcements']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['events']->first()->slug)}}">{{$pages['events']->first()->title}}</a>
                </div>
                <div class="colom colom-3">
                    <a href="{{route('pages.get',$pages['photos']->first()->slug)}}">{{$pages['photos']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['videos']->first()->slug)}}">{{$pages['videos']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['posts']->first()->slug)}}">{{$pages['posts']->first()->title}}</a>
                    <a href="{{route('pages.get',$pages['contacts']->first()->slug)}}">{{$pages['contacts']->first()->title}}</a>
                </div>
            </div>
            <div class="content">
                <div class="colom">
                    <div class="call">
                        <div class="phone">
                            @foreach($phones as $phone)
                                <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->value) }}">{{$phone->value}}</a>
                            @endforeach
                        </div>
                        <div class="whatsapp">
                            @foreach($phones as $phone)
                                <a rel="nofollow" href="https://wa.me/{{ preg_replace("/[^,.0-9]/", '', $phone->value) }}">{{$phone->value}}</a>
                            @endforeach
                        </div>
                    </div>
                    <div class="mess">
                        <i class="bi bi-envelope"></i>
                        <a href="mailto:{{ $email->value }}">{{$email->value}}</a>
                    </div>
                    <div class="network">
                        @foreach($socials as $social)
                            <a href="{{$social->link}}" class="{{ $social->icon ? 'icon-foot' : '' }}">
                                @if($social->icon)
                                    <img src="{{ Voyager::image($social->icon) }}" alt="{{$social->value}}">
                                @else
                                    <i class="icon-{{strtolower($social->value)}}"></i>
                                @endif
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="hr"></div>
        <div class="footer__bottom">
            <div class="content">
                <p>© 2021 menmedia.kz. Все права  защищены.</p><span>|</span><p>Политика конфидециальности</p>
            </div>
            <div class="content">
                <a href="#"><i class="icon-logo-IM"></i></a>
            </div>
        </div>
    </div>
</footer>
