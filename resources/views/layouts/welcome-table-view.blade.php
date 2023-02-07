<!-- Tentang Kami -->
<div class="tabs" id="tentangkami">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xl-5">
                    <div class="tabs-container">
            
                        <!-- Tabs Links -->
                        <ul class="nav nav-tabs" id="revoTabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">TENTANG KAMI</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">VISI dan MISI</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="nav-tab-3" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">AD / ART</a>
                            </li>
                        </ul>
                        <!-- end of tabs links -->
                        
                        <!-- Tabs Content -->
                        <div class="tab-content" id="revoTabsContent">
        
                            <!-- Tab -->
                            <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
                                <h4>Sekilas Tentang Kami</h4>
                                <p>AAI (Asosiasi Arsiparis Indonesia) adalah Forum untuk ajang kumpul para Arsiparis seluruh Indonesia untuk berbagi informasi terkait</p>
                                <ul class="list-unstyled li-space-lg">
                                    <li class="media">
                                        <i class="fas fa-square"></i>
                                        <div class="media-body"><strong>KEARSIPAN</strong> Pendataan arsip</div>
                                    </li>
                                    <li class="media">
                                        <i class="fas fa-square"></i>
                                        <div class="media-body"><strong>MANAGEMENT ARSIP</strong> Pengelolaan tentang Arsip</div>
                                    </li>
                                    <li class="media">
                                        <i class="fas fa-square"></i>
                                        <div class="media-body"><strong>ARSIP TANGGUH</strong> Menjadi Arsip Aris Yang Berkompeten</div>
                                    </li>
                                </ul>
                            </div> <!-- end of tab-pane --> 
                            <!-- end of tab -->
        
                            <!-- Tab -->
                            <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
                                <ul class="list-unstyled li-space-lg">
                                    <li class="media">
                                        <div class="media-bullet">VISI</div>
                                        <div class="media-body"><p>Menjadikan Arsip Sebagai Simpul Pemersatu Bangsa Dalam Kerangka Negara Kesatuan Republik Indonesia Yang akan Dicapai Pada Tahun 2025</p></div>
                                    </li>
                                    <li class="media">
                                        <div class="media-bullet">MISI</div>
                                        <div class="media-body"><p>Memberdayakan arsip sebagai tulang punggung manajemen pemerintahan dan pembangunan.
                                                Memberdayakan arsip sebagai bukti akuntabilitas kinerja organisasi.
                                                Memberdayaan arsip sebagai alat bukti yang sah
                                                Melestarikan arsip sebagai memori kolektif dan jati diri bangsa dalam kerangka Negara Kesatuan Republik Indonesia
                                                Memberikan akses arsip kepada publik untuk kepentingan pemerintahan, pembangunan, penelitian, dan ilmu pengetahuan untuk kesejahteraan rakyat sesuai perauran perundang-undangan dan kaidah-kaidah kearsipan demi kemaslahatan bangsa.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div> <!-- end of tab-pane -->
                            <!-- end of tab -->
        
                            <!-- Tab -->
                            <div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
                                <p><strong>Our goal is to empower</strong> web designers and developers reach their full potential and help them get their designs from layouts to code in the shortest amount of time.</p>
                                <p><strong>Design and layouts</strong> are the main focus of our apps but we also work on export-to-code functionalities.</p>
                                <ul class="list-unstyled li-space-lg">
                                    <li class="media">
                                        <i class="fas fa-square"></i>
                                        <div class="media-body">It's a fun and captivating endeavour that we love</div>
                                    </li>
                                    <li class="media">
                                        <i class="fas fa-square"></i>
                                        <div class="media-body">We're passionate about our work and it shows</div>
                                    </li>
                                </ul>
                            </div> <!-- end of tab-pane -->
                            <!-- end of tab -->
        
                        </div> <!-- end of tab-content -->
                        <!-- end of tabs content -->
        
                    </div> <!-- end of tabs-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6 col-xl-7">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> 

    <!-- Testimonials -->
    <div class="slider-1" id="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                            @foreach(App\Models\Posting::all() as $posting)
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="cards-1">
                                        <img class="card-image" src="{{ url('/images/'.$posting->gambar) }}" alt="alternative">
                                        <div class="card-body">
                                            <span><?php echo substr("$posting->deskripsi", 0, 70);?></span>
                                        </div>
                                    </div>
                                </div> 
                                <!-- end of swiper-slide -->
                                <!-- end of slide -->
                            @endforeach
                            
                            </div> <!-- end of swiper-wrapper -->
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
        
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-1 -->
    <!-- end of testimonials -->

     <!-- Details 1 -->
     <div id="konsul" class="basic-1 bg-dark-blue">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xl-7">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('themes-frontend/images/konsul.png') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6 col-xl-5">
                    <div class="text-container">
                        <h2>KONSUL</h2>
                        <p>Menu ini adalah fasilitas untuk anggota dapat berkonsultasi terkait arsiparis</p>
                        <ul class="list-unstyled li-space-lg">
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body"><strong>Klik Login</strong> sesuai akun anda</div>
                            </li>
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body"><strong>Kirim Pesan</strong> anda akan dijawab langsung oleh admin</div>
                            </li>
                        </ul>
                        <a class="btn-solid-reg popup-with-move-anim" href="#">Klik</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-1 -->
    <!-- end of details 1 -->

    <!-- Kontak -->
    <div id="kontak" class="form-1 bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h2>Kontak Kami</h2>
                            <p>Silahkan Hubungi kami untuk informasi lebih lanjut didalam Forum AAI ( Asosiasi Arsiparis Indonesia ) DKI Jakarta</p>
                            <ul class="list-unstyled li-space-lg">
                                <li class="media">
                                    <i class="fas fa-square"></i><div class="media-body"><strong>Email : </strong> admin@aaijakarta.or.id / aai.dkijakarta@gmail.com</div>
                                </li>
                                <li class="media">
                                    <i class="fas fa-square"></i><div class="media-body"><strong>Phone : </strong> with faster with efficient components</div>
                                </li>
                            </ul>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6">

                        <!-- Registration Form -->
                        <form id="registrationForm">
                            <div class="form-group">
                                <input type="text" class="form-control-input" id="rname" required>
                                <label class="label-control" for="rname">Name</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control-input" id="roccupation" required>
                                <label class="label-control" for="roccupation">Occupation</label>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control-input" id="remail" required>
                                <label class="label-control" for="remail">Email</label>
                            </div>
                            <div class="form-group checkbox">
                                <input type="checkbox" id="rterms" value="Agreed-to-Terms" required>I agree with the website's <a href="privacy.html">Privacy Policy</a> and <a href="terms.html">Terms & Conditions</a>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control-submit-button">SIGN UP</button>
                            </div>
                        </form>
                        <!-- end of registration form -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of form-1 -->
        <!-- end of registration -->
