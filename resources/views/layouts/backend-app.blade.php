@if (Auth::user()->verifikasi=="0")
<body>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
        <!-- Content Start -->
        <div class="content">
        @include('backends.backend-navigation')
        @include('berandas.verifikasi')
        @include('backends.backend-footer')
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
@elseif (Auth::user()->verifikasi=="1")
<body>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
       @extends('backends.backend-sidebar-menu')
        <!-- Content Start -->
        <div class="content">
        @include('backends.backend-navigation')
        @include('berandas.index')
        @include('backends.backend-footer')
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
@endif