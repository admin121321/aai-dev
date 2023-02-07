       <!-- Header -->
 <header id="header" class="headerNew">
        <div class="container">
        <!-- Slider -->
          <div class="row">
                    <div class="col-lg-8" >
                        <!-- Text Slider -->
                        <div class="slider-container">
                            <div class="swiper-container text-slider">
                                <div class="swiper-wrapper">
                                @foreach(App\Models\Posting::latest()->paginate(1) as $posting) 
                                    <!-- Slide -->
                                    <div class="">
                                        <div class="row">
                                            <div class="col-lg-6 col-xl-7">
                                                <div class="image-container">
                                                    <img class="img-fluid" src="{{ url('/images/'.$posting->gambar) }}" alt="alternative" style="width: 609px; height: 406px;">
                                                </div> <!-- end of image-container -->
                                            </div> <!-- end of col -->
                                            <div class="col-lg-6 col-xl-5">
                                                <div class="text-container">
                                                    <h1 class="h1-small">
                                                        <?php echo strip_tags("$posting->judul");?></h1>
                                                    <p class="p-small"> 
                                                        <?php echo strip_tags("$posting->deskripsi");?></p>
                                                    <a class="btn-solid-lg page-scroll" href="#registration">Detail</a>
                                                    <!-- <a class="btn-outline-lg page-scroll" href="#features">DISCOVER</a> -->
                                                </div> <!-- end of text-container -->
                                            </div> <!-- end of col -->
                                        </div> <!-- end of row -->
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
                                    @endforeach
                                    <!-- Slide -->
                                  

                                </div> <!-- end of swiper-wrapper -->
                                
                                <!-- Add Arrows -->
                                <!-- <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div> -->
                                <!-- end of add arrows -->
                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of text slider -->
                    </div> <!-- end of col -->
                    <div class="slider-container">
                        <div class="col-lg-12"><p><b>SPONSOR</p></b>
                        <br>
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/vit.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/sprite.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                        <br>
                        </div>
                        &nbsp;
                        <div  class="col-lg-12"><p><b>Kolaborasi</p></b>
                        <br>
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/dki.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/b-logo-dispusip.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/c-logo-jdih.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/d-logo-anri.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="{{ asset('themes-frontend/images/e-logo-ptsp.png') }}" alt="alternative" style="width: 60px; height: 60px;">
                        <br>
                        </div>
                        
                    </div>
                </div> 
                <!-- end of row -->
            </div>
        <!-- End SLider -->
    </div><!-- end of container -->
</header> <!-- end of header -->
<!-- end of header -->