 <!-- Navigation -->
 <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
        <div class="container bg-dark-blue">
            
            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Revo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="#"><img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="alternative" style="width: 30px; height: 30px;"></a> 
            <b>{{ config('app.subname', 'AAI Jakarta') }}</b>
            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#header">BERANDA <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#tentangkami">TENTANG KAMI</a>
                    </li>
                    <!-- <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PRODUK HUKUM</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item page-scroll" href="#">UNDANG-UNDANG</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">PERATURAN PEMERINTAH</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">PERATURAN MENTERI</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">PERATURAN DAERAH</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">PERATURAN ANRI</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">PERATURAN KEPUTUSAN GUBERNUR JAKARTA</a>
                        </div>
                    </li> -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">KABAR BERITA</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item page-scroll" href="#">Divisi A</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">Divisi B</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item page-scroll" href="#">Divisi C</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#testimonials">CORETAN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#registration">KONSUL</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#kontak">KONTAK KAMI</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">LOGIN</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            @guest
                                @if (Route::has('login'))
                                    <!-- Start Sign -->
                                        <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                            <div class="form-group">
                                                <input type="email" id="floatingInput" class="form-control-input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                                <label for="floatingInput" class="label-control">Email Anda</label>
                                            </div>
                                            
                                            <div class="form-group">
                                                <input type="password" class="form-control-input @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                                <label for="floatingPassword" class="label-control">Password Anda</label>
                                                @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                            
                                            <div class="form-group">
                                                <button type="submit"  class="form-control-submit-button">
                                                    {{ __('Masuk') }}
                                                </button>
                                            </div>

                                            @if (Route::has('password.request'))
                                                <!-- <a class="btn btn-link" href="{{ route('password.request') }}">
                                                    {{ __('Forgot Your Password?') }}
                                                </a> -->
                                            @endif
                                        </form>
                                @endif

                                @if (Route::has('register'))
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                    </li> -->
                                @endif
                            @else
                                <div class="navbar-nav w-100">
                                    <br>
                                    <div class="ms-3">
                                        <h6 class="mb-0 center"> {{ Auth::user()->name }}</h6>
                                        <!-- <span>Admin</span> -->
                                    </div>
                                    <a class="nav-item nav-link" href="{{ route('home') }}">
                                    <i class="fa fa-laptop me-2"></i>{{ __('Beranda') }}
                                    </a>
                                    <a class="nav-item nav-link" href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                            document.getElementById('logout-form').submit();">
                                            <i class="fa fa-sign-out me-2"></i>{{ __('Logout') }}
                                        </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            @endguest
                            <div class="dropdown-divider"></div>
                        </div>
                    </li>
                </ul>
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
