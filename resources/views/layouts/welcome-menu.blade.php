
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
	<head>
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="{!! $postings->deskripsi !!}">
		<meta name="author" content="AAI Jakarta">
		<meta name="keyword" content="AAI Jakarta">
        <link href="{{ asset('themes-frontend/images/icon-aai-jakarta.png') }}" rel="icon">
		<!-- Facebook Meta Tags -->
		<meta property="og:title" content="{{ urlencode($postings->judul) }}" />
		<meta property="og:type" content="berita aai" />
		<meta property="og:image" content="{{ url('/images/'.$postings->gambar) }}">
		
        <title>{{ config('app.subname', 'AAI Jakarta') }} | {{ urlencode($postings->judul) }}</title>
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