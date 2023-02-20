@extends('layouts.welcome-app')
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>{{ config('app.subname', 'AAI Jakarta') }}</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Favicon -->
    <link href="{{ asset('themes-frontend/images/aai-icon.png') }}" rel="icon">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="{{ asset('themes-frontend/css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('themes-frontend/css/fontawesome-all.css') }}" rel="stylesheet">
    <link href="{{ asset('themes-frontend/css/swiper.css') }}" rel="stylesheet">
	<link href="{{ asset('themes-frontend/css/magnific-popup.css') }}" rel="stylesheet">
	<link href="{{ asset('themes-frontend/css/styles.css') }}" rel="stylesheet">
</head>
<body>
</body>
   <style>
    .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
            }
    </style>

      	
    <!-- Scripts -->
    <script src="{{ asset('themes-frontend/js/jquery.min.js') }}"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="{{ asset('themes-frontend/js/bootstrap.min.js') }}"></script> <!-- Bootstrap framework -->
    <script src="{{ asset('themes-frontend/js/jquery.easing.min.js') }}"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="{{ asset('themes-frontend/js/swiper.min.js') }}"></script> <!-- Swiper for image and text sliders -->
    <script src="{{ asset('themes-frontend/js/jquery.magnific-popup.js') }}"></script> <!-- Magnific Popup for lightboxes -->
    <script src="{{ asset('themes-frontend/js/scripts.js') }}"></script> <!-- Custom scripts -->
</html>
