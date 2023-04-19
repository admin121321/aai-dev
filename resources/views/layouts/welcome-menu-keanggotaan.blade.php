
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
		<meta name="author" content="Kodinger">
		<meta name="keyword" content="magz, html5, css3, template, magazine template">
		<!-- Shareable -->
		<meta property="og:title" content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
		<meta property="og:type" content="article" />
        <title>{{ config('app.subname', 'AAI Jakarta') }}</title>
		<!-- Bootstrap -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/bootstrap/bootstrap.min.css') }}">
		<!-- IonIcons -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/ionicons/css/ionicons.min.css') }}">
		<!-- Toast -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/toast/jquery.toast.min.css') }}">
		<!-- OwlCarousel -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/owlcarousel/dist/assets/owl.carousel.min.css') }}">
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/owlcarousel/dist/assets/owl.theme.default.min.css') }}">
		<!-- Magnific Popup -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/magnific-popup/dist/magnific-popup.css') }}">
		<link rel="stylesheet" href="{{ asset('themes-frontend/scripts/sweetalert/dist/sweetalert.css') }}">
		<!-- Custom style -->
		<link rel="stylesheet" href="{{ asset('themes-frontend/css/style.css') }}">
		<link rel="stylesheet" href="{{ asset('themes-frontend/css/skins/all.css') }}">
		<link rel="stylesheet" href="{{ asset('themes-frontend/css/demo.css') }}">
	</head>

	<body class="skin-orange">
        <div class="" id="app">    
            <!-- Content Start -->
            <div class="content">
            @include('frontends.welcome-header')
            @include('frontends.keanggotaan')
            @include('frontends.welcome-footer')
            </div>
            <!-- Content End -->
            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>
    <main class="py-4">
            @yield('content')
    </main>
    <!-- Scripts -->
    <script src="{{ asset('themes-frontend/js/jquery.js') }}"></script>
    <script src="{{ asset('themes-frontend/js/jquery.migrate.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/bootstrap/bootstrap.min.js') }}"></script>
    <script>var $target_end=$(".best-of-the-week");</script>
    <script src="{{ asset('themes-frontend/scripts/jquery-number/jquery.number.min.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/owlcarousel/dist/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/magnific-popup/dist/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/easescroll/jquery.easeScroll.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/sweetalert/dist/sweetalert.min.js') }}"></script>
    <script src="{{ asset('themes-frontend/scripts/toast/jquery.toast.min.js') }}"></script>
    <script src="{{ asset('themes-frontend/js/demo.js') }}"></script>
    <script src="{{ asset('themes-frontend/js/e-magz.js') }}"></script>
</body>
</html>