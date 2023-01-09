   <!-- Sidebar Start -->
   <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="{{ url('/') }}" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary">{{ config('app.subname', 'AAI Jakarta') }}</h3>
                </a>
                <!-- Users -->
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="{{ asset('themes/img/user.jpg') }}" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0"> {{ Auth::user()->name }}</h6>
                        <!-- <span>Admin</span> -->
                    </div>
                </div>
                <!-- End users -->
                <!-- Menu -->
                <div class="navbar-nav w-100">
                    <a href="index.html" class="nav-item nav-link active"><i class="fa fa-tachometer me-2"></i>Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-users me-2"></i>Users</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="button.html" class="dropdown-item">Akun</a>
                            <a href="typography.html" class="dropdown-item">Jabatan</a>
                            <a href="typography.html" class="dropdown-item">Kedinasan</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-newspaper-o me-2"></i>Posting</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="button.html" class="dropdown-item">Buat Kategori</a>
                            <a href="typography.html" class="dropdown-item">Buat Posting</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Halaman</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="signin.html" class="dropdown-item">AD/ART</a>
                            <a href="signup.html" class="dropdown-item">Keanggotaan</a>
                            <a href="404.html" class="dropdown-item">PerPu</a>
                            <a href="blank.html" class="dropdown-item">PerMen</a>
                            <a href="blank.html" class="dropdown-item">PerDa DKI</a>
                            <a href="blank.html" class="dropdown-item">PerGub DKI</a>
                            <a href="blank.html" class="dropdown-item">Kontak Kami</a>
                        </div>
                    </div>
                </div>
                <!-- End Menu -->
            </nav>
        </div>
        <!-- Sidebar End -->