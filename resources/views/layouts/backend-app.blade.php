<body>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
       @extends('layouts.backend-sidebar-menu')
        <!-- Content Start -->
        <div class="content">
        @include('layouts.backend-navigation')
        @include('berandas.index')
        @include('layouts.backend-footer')
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
  </div>
    <main class="py-4">
            @yield('content')
    </main>
</body>