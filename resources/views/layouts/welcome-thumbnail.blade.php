<!-- Testimonials -->
<div class="slider-1">
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
                                            <span class="span-small"><?php echo substr("$posting->deskripsi", 0, 70);?></span>
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