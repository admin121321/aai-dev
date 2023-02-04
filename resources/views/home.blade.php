@extends('layouts.beranda-app')

@section('content')
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>{{ config('app.subname', 'AAI Jakarta') }}</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <link href="{{ asset('themes-frontend/images/logo-aai.png') }}" rel="icon">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
 
    <!-- Favicon -->
    <link href="{{ asset('themes/img/favicon.ico') }}" rel="icon">

    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/fontawesome/css/all.min.css') }}">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/jqvmap/dist/jqvmap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/summernote/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/owlcarousel2/dist/assets/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/owlcarousel2/dist/assets/owl.theme.default.min.css') }}">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/css/components.css') }}">
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

    <!-- JavaScript Libraries -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- General JS Scripts -->
    <script src="{{ asset('themes-backend/assets/modules/jquery.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/popper.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/tooltip.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/nicescroll/jquery.nicescroll.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/moment.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/js/stisla.js') }}"></script>
    
    <!-- JS Libraies -->
    <script src="{{ asset('themes-backend/assets/modules/jquery.sparkline.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/chart.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/owlcarousel2/dist/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/summernote/summernote-bs4.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/modules/chocolat/dist/js/jquery.chocolat.min.js') }}"></script>

    <!-- Page Specific JS File -->
    <script src="{{ asset('themes-backend/assets/js/page/index.js') }}"></script>
    
    <!-- Template JS File -->
    <script src="{{ asset('themes-backend/assets/js/scripts.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/js/custom.js') }}"></script>
</html>
@endsection