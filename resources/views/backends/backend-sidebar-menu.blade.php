@if (Auth::user()->verifikasi=="0")
@elseif (Auth::user()->verifikasi=="1")
<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
        <a href="{{ url('/') }}">{{ config('app.subname', 'AAI Jakarta') }}</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
        <a href="{{ url('/') }}">AAI</a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="dropdown active">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-fire"></i><span>Dashboard</span></a>
                <ul class="dropdown-menu">
                <li><a class="nav-link" href="{{ url('/home') }}">General Dashboard</a></li>
                </ul>
            </li>
            <!-- LEVEL SUPER ADMIN -->
            @if (Auth::user()->level=="SUPERADMIN")
            <li class="menu-header">Akun</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-users"></i><span>Pengguna</span></a>
                <ul class="dropdown-menu">
                    <li><a href="{{ url('/users') }}" class="nav-link">Anggota</a></li>
                </ul>
            </li>
            <li class="menu-header">Posting</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-file-alt"></i><span>Posting</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/kategori-posting') }}" class="nav-link" href="layout-default.html">kategori Posting</a></li>
                <li><a href="{{ url('/posting') }}" class="nav-link" >Posting</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i><span>Halaman</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/halaman') }}" class="nav-link" href="layout-default.html">Halaman</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i><span>Iklan</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/iklan') }}" class="nav-link" href="layout-default.html">Iklan</a></li>
                </ul>
            </li>
            <li class="menu-header">Konsul</li>
                @if(Auth::user()->is_admin)
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                    <ul class="dropdown-menu">
                    <li><a href="{{ url('/kategori-ticket') }}" class="nav-link">Advokat Konsul</a></li>
                    <li><a href="{{ url('admin/tickets') }}" class="nav-link" >List Konsul</a></li>
                    </ul>
                </li>
                @else
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                    <ul class="dropdown-menu">
                    <li><a href="{{ url('my_tickets') }}" class="nav-link" >List Konsul</a></li>
                    </ul>
                </li>
                @endif
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-gear"></i><span>Pengaturan Akun</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="{{ url('/profile/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Profile</a></li>
                        <li><a href="{{ url('/password/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Password</a></li>
                    </ul>
                </li>
            @endif

            <!-- LEVEL ADMIN -->
            @if (Auth::User()->level=="ADMIN")
            <li class="menu-header">Posting</li>
            <!-- <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-file-alt"></i><span>Posting</span></a>
                <ul class="dropdown-menu">
                    <li><a href="{{ url('/kategori-posting') }}" class="nav-link" href="layout-default.html">kategori Posting</a></li>
                    <li><a href="{{ url('/posting') }}" class="nav-link" >Posting</a></li>
                </ul>
            </li> -->
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i><span>Iklan</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/iklan') }}" class="nav-link" href="layout-default.html">Iklan</a></li>
                </ul>
            </li>
            <li class="menu-header">Konsul</li>
            <!-- FIlter Data Konsul Sesuai Kategori -->
              @foreach(App\Models\Category::all() as $categories)
                @if(Auth::user()->id==$categories->id_useri)
                    @if(Auth::user()->is_admin)
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                        <ul class="dropdown-menu">
                        <li><a href="{{ url('admin/ticket-advokat') }}" class="nav-link" >List Konsul</a></li>
                        </ul>
                    </li>
                    @else
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                        <ul class="dropdown-menu">
                        <li><a href="{{ url('my_tickets') }}" class="nav-link" >List Konsul</a></li>
                        </ul>
                    </li>
                    @endif
                @endif
                @endforeach
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-gear"></i><span>Pengaturan Akun</span></a>
                    <ul class="dropdown-menu">
                    <li><a href="{{ url('/profile/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Profile</a></li>
                        <li><a href="{{ url('/password/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Password</a></li>
                    </ul>
                </li>
            @endif

            <!-- LEVEL REDAKSI -->
            @if (Auth::User()->level=="REDAKSI")
            <li class="menu-header">Posting</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-file-alt"></i><span>Posting</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/posting-redaksi') }}" class="nav-link" >Posting</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-gear"></i><span>Pengaturan Akun</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/profile/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Profile</a></li>
                    <li><a href="{{ url('/password/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Password</a></li>
                </ul>
            </li>
            @endif

            <!-- Level USERS -->
            @if (Auth::User()->level=="USERS")

                <li class="menu-header">Posting</li>
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-file-alt"></i><span>Posting</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="{{ url('/postings') }}" class="nav-link" >Posting</a></li>
                    </ul>
                </li>

                @if(Auth::user()->is_admin)
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                    <ul class="dropdown-menu">
                    <li><a href="{{ url('admin/tickets') }}" class="nav-link" >List Konsul</a></li>
                    </ul>
                </li>
                @else
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                    <ul class="dropdown-menu">
                    <li><a href="{{ url('my_tickets') }}" class="nav-link" >List Tiket</a></li>
                    <li><a href="{{ url('new-ticket') }}" class="nav-link" >Create Tiket</a></li>
                    </ul>
                </li>
                @endif
                <li class="dropdown">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-gear"></i><span>Pengaturan Akun</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="{{ url('/profile/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Profile</a></li>
                        <li><a href="{{ url('/password/edit/'.Auth::user()->id) }}" class="nav-link" href="layout-default.html">Password</a></li>
                    </ul>
                </li>
            @endif
        </ul>

        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
        <a href="#" class="btn btn-primary btn-lg btn-block btn-icon-split">
            <i class="fas fa-rocket"></i> Documentation
        </a>
        </div>
    </aside>
</div>
@endif