<body>
    <div class="container-xxl position-relative bg-white d-flex p-0" id="app">
       @extends('layouts.beranda-sidebar-menu')
        <!-- Content Start -->
        <div class="content">
        @include('layouts.beranda-navigation')
        @include('berandas.index')
        @include('layouts.beranda-footer')
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
    <main class="py-4">
            @yield('content')
    </main>
</body>