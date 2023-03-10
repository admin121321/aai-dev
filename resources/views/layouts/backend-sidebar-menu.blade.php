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
            @if (Auth::user()->level=="SUPERADMIN")
            <li class="menu-header">Akun</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-users"></i><span>Pengguna</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/users') }}" class="nav-link">Users</a></li>
                <li><a class="nav-link" href="#">Level Users</a></li>
                <li><a class="nav-link" href="#">List Users</a></li>
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
            <li class="menu-header">Konsul</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                <ul class="dropdown-menu">
                <li><a href="#" class="nav-link" >List Konsul</a></li>
                </ul>
            </li>
            @endif
            @if (Auth::User()->level=="USERS")
            <li class="menu-header">Posting</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-file-alt"></i><span>Posting</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('/kategori-posting') }}" class="nav-link" href="layout-default.html">kategori Posting</a></li>
                <li><a href="{{ url('/posting') }}" class="nav-link" >Posting</a></li>
                </ul>
            </li>
            <li class="menu-header">Konsul</li>
            <li class="dropdown">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope"></i><span>Konsul</span></a>
                <ul class="dropdown-menu">
                <li><a href="{{ url('#') }}" class="nav-link" >Buat Konsul</a></li>
                </ul>
            </li>
            @endif
            <li>
                <a class="nav-link" href="credits.html"><i class="fas fa-pencil-ruler"></i> <span>Credits</span></a>
            </li>
        </ul>

        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
        <a href="#" class="btn btn-primary btn-lg btn-block btn-icon-split">
            <i class="fas fa-rocket"></i> Documentation
        </a>
        </div>
    </aside>
</div>