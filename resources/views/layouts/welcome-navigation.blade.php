<!-- Start nav -->
			<nav class="menu">
				<div class="container">
					<div class="brand">
						<a href="#">
                            <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo">
                        </a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="menu" data-target="#menu-list"><i class="ion-navicon-round"></i></a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="sidebar" data-target="#sidebar"><i class="ion-ios-arrow-left"></i></a>
					</div>
					<div id="menu-list">
						<ul class="nav-list">
							<li class="for-tablet nav-title"><a>Menu</a></li>
							<li class="for-tablet"><a href="login.html">Login</a></li>
							<li class="for-tablet"><a href="register.html">Register</a></li>
							<li><a href="category.html">Beranda</a></li>
							<li class="dropdown magz-dropdown">
								<a href="category.html">Tentang Kami <i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="index.html">AD / ART</a></li>
									<li><a href="category.html">Keanggotaan</a></li>
								</ul>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Berita<i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="index.html">Pengumuman</a></li>
									<li><a href="category.html">Seminar</a></li>
								</ul>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Coretan</a>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Konsul</a>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Kontak Kami</a>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Akses<i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
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
								</ul>
						    </li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End nav -->
