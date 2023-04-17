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

    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/fontawesome/css/all.min.css') }}">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/jqvmap/dist/jqvmap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/summernote/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/owlcarousel2/dist/assets/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/owlcarousel2/dist/assets/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/modules/prism/prism.css') }}">
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('themes-backend/assets/css/components.css') }}">
    
    <!-- JQuery Datatable-->
    <link rel="stylesheet" type="text/css" href="{{ asset('themes-backend/assets/datatables/datatables.min.css') }}"/>
    <script type="text/javascript" src="{{ asset('themes-backend/assets/datatables/datatables.min.js') }}"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"> -->
    
    <!-- TextArea -->
    @include('layouts.textarea-js')
    
</head>
<body>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <div class="navbar-bg"></div>
       @extends('backends.backend-sidebar-menu')
        <!-- Content Start -->
        <div class="content">
        @include('backends.backend-navigation')   
        <main class="py-4">
                @yield('content')
        </main>
        @include('backends.backend-footer')
        </div>
        <!-- Content End -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
</div>
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
    <!-- <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="{{ asset('themes-backend/assets/modules/jquery.min.js') }}"></script> -->
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
    
    <!-- JS Libraies -->
    <script src="{{ asset('themes-backend/assets/modules/prism/prism.js') }}"></script>

    <!-- Page Specific JS File -->
    <!-- <script src="{{ asset('themes-backend/assets/js/page/bootstrap-modal.js') }}"></script> -->

    <!-- Template JS File -->
    <script src="{{ asset('themes-backend/assets/js/scripts.js') }}"></script>
    <script src="{{ asset('themes-backend/assets/js/custom.js') }}"></script>

</html>