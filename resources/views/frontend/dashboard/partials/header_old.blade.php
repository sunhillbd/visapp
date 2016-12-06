<header id="topnav" class="navbar navbar-inverse navbar-fixed-top clearfix" role="banner">
    <a href="{{ route('index') }}"><img src="{{ asset('images/logo-dark.png') }}" alt="ESE Law Logo" class="logo"></a>
    <ul class="nav navbar-nav toolbar pull-right topnav" id="myTopnav">
        <li class="icon"><a href="javascript:void(0);" onclick="myFunction()">&#9776;</a></li>
        <li><a href="how-it-works.html">How It Works</a></li>
        <li><a href="resources.html">Resources</a></li>
        <li><a href="pricing.html">Pricing</a></li>
        <li><a href="faq.html">FAQ</a></li>


        @if(!is_null(auth()->user()))
            <li><a href={{ route('auth.logout') }}>Logout</a></li>
            <li><a  href="{{ route('dashboard.settings') }}"><i class="fa fa-cogs"></i></a> </li>
        @else
            <li><a href="{{ route('register') }}">Sign-Up</a></li>
            <li><a href={{ route('auth.login') }}>Login</a></li>
        @endif

    </ul>
</header>