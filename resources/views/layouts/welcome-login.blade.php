<!-- Sidebar Start -->
<div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <!-- <a href="#" class="navbar-brand mx-4 mb-3">
                    <h4 class="text-primary center"><b>Akses Masuk</b></h4>
                </a> -->
                <img class="rounded-circle center" src="{{ asset('themes/img/aai.jpg') }}" alt="" style="width: 80px; height: 80px;">
                <!-- <h3 class="navbar-brand mx-4 mb-3 text-primary center"><i class="fa fa-hashtag me-2"></i><b>AKSES MASUK</b></h3> -->
                <div class="d-flex align-items-center ms-4 mb-4">
                     <!-- Authentication Links -->
                     @guest
                            @if (Route::has('login'))
                                <!-- Start Sign -->
                                    <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                        <div class="">
                                                <div class="">
                                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                                        <!-- <h3>Portal</h3> -->
                                                    </div>
                                                    <div class="form-floating mb-3">
                                                        <input type="email" id="floatingInput" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="name@example.com">
                                                        @error('email')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                        <label for="floatingInput">Email Anda</label>
                                                    </div>
                                                    <div class="form-floating mb-4">
                                                        <input type="password"class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                                                        <label for="floatingPassword">Password Anda</label>
                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <button type="submit"  class="btn btn-primary py-3 w-100 mb-4">
                                                        {{ __('Masuk') }}
                                                    </button>

                                                    @if (Route::has('password.request'))
                                                        <!-- <a class="btn btn-link" href="{{ route('password.request') }}">
                                                            {{ __('Forgot Your Password?') }}
                                                        </a> -->
                                                    @endif
                                                </div>
                                            </div>
                                        </form>
                            @endif

                            @if (Route::has('register'))
                                <!-- <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li> -->
                            @endif
                        @else
                            
                            <div class="navbar-nav w-100">
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
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->