@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
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
							<li class="for-tablet"><a href="#">Login</a></li>
							<li class="for-tablet"><a href="#">Register</a></li>
							<li><a href="{{ url('/') }}">Beranda</a></li>
							<li class="dropdown magz-dropdown">
								<a href="{{ url('/tentang-kami') }}">Tentang Kami <i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="{{ url('/ad-art') }}">AD / ART</a></li>
								</ul>
							</li>
							<li class="dropdown magz-dropdown"><a href="#">Regulasi<i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="{{ url('/penyelengaraan-kearsipan') }}">Penyelengaraan Kearsipan</a></li>
                                    <li><a href="{{ url('/pengelolaan-arsip-dinamis') }}">Pengelolaan Arsip Dinamis</a></li>
                                    <li><a href="{{ url('/pengelolaan-arsip-statis') }}">Pengelolaan Arsip Statis</a></li>
                                    <li><a href="{{ url('/pembinaan-kearsipan') }}">Pembinaan Kearsipan</a></li>
								</ul>
							</li>
							<li><a href="{{ url('/berita') }}">Berita</a>
							</li>
							<li><a href="{{ url('/konsul') }}">Konsul</a>
							</li>
							<li><a href="{{ url('/kontak-kami') }}">Kontak Kami</a>
							</li>
                            @if (Route::has('register'))
                            <li><a href="{{ route('register') }}">Pendaftaran</a>
							</li>
                            @endif
							<li class="dropdown magz-dropdown"><a href="#">Akses<i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
								@guest
                                    @if (Route::has('login'))
                                        <!-- Start Sign -->
                                    <div class="box-wrapper">				
					                  <div class="box box-border">
                                        <div class="box-body">
                                            <form method="POST" action="{{ route('login') }}">
                                            @csrf
                                                <div class="form-floating mb-3">
                                                    <label for="floatingInput">ID / Email</label>
                                                    <!-- <input type="email" id="floatingInput" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="name@example.com"> -->
                                                    <input id="id_anggota" type="text" class="form-control @error('id_anggota') is-invalid @enderror" name="id_anggota" value="{{ old('id_anggota') }}" required autocomplete="id_anggota" autofocus placeholder="ID anggota / Email">
                                                    @error('email')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="form-floating mb-4">
                                                    <label for="floatingPassword">Password Anda</label>
                                                    <input type="password"class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
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

                                                <!-- @if (Route::has('register'))
                                                    <a class="btn btn-link" href="{{ route('register') }}">
                                                            {{ __('Ingin Jadi Anggota?') }}
                                                    </a>
                                                @endif -->
                                                </div>   
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                                    @endif
                                    @else
                                            <li><a><i class="icon ion-person"></i>  {{ Auth::user()->name }}</a></li>
                                            <li><a href="{{ route('home') }}"><i class="icon ion-key"></i>  {{ __('Dashboard') }} </a></li>
                                            <li class="divider"></li>
                                            <li><a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                <i class="icon ion-log-out"></i> Logout</a>
                                            </li>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                    @endguest
								</ul>
						    </li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End nav -->
