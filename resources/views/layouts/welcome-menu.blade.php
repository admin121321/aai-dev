
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Selamat Datang di Website Resmi AAI (Asosiasi Arsipari Indonesia) Wilayah Jakarta">
		<meta name="author" content="Website AAI Jakarta">
		<meta name="keyword" content="AAI Jakarta">
        <link href="{{ asset('themes-frontend/images/icon-aai-jakarta.png') }}" rel="icon">
		<!-- Shareable -->
		<meta property="og:title" content="Website AAI Jakarta" />
		<meta property="og:type" content="article" />
        <title>{{ config('app.subname', 'AAI Jakarta') }}</title>
		@extends('layouts.welcome-css')
        <!-- modal -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>

	<body class="skin-orange">
        <div class="" id="app">    
            <!-- Content Start -->
            <div class="content">
            @include('frontends.welcome-header')
            @include('frontends.berita-index')
            @include('frontends.welcome-footer')
            </div>
            <!-- Content End -->
            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>
    <main class="py-4">
            @yield('content')
    </main>
    @extends('layouts.welcome-js')
</body>
</html>