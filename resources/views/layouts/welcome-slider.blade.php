<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<br>
<div class="col-sm-12 col-xl-6" style="width: 1200px; height: 550px;">
    <div class=" carousel slide"id="demo" data-ride="carousel" style="width: 1200px; height: 550px;">
        <!-- <h6 class="mb-4">Testimonial</h6>
        <div class="owl-carousel testimonial-carousel">
            <div class="testimonial-item text-center">
                <img class="img-fluid " src="{{ asset('themes/img/testimonial-1.jpg') }}" style="width: 100px; height: 100px;">
    
            </div>
            <div class="testimonial-item text-center">
                <img class="img-fluid " src="{{ asset('themes/img/testimonial-2.jpg') }}" style="width: 100px; height: 100px;">
              
            </div>
        </div> -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
            <img src="{{ asset('themes/img/testimonial-1.jpg') }}" alt="Los Angeles" style="width: 1200px; height: 550px;">
            <div class="carousel-caption">
                <h3>Los Angeles</h3>
                <p>We had such a great time in LA!</p>
            </div>   
            </div>
            <div class="carousel-item">
            <img src="{{ asset('themes/img/testimonial-1.jpg') }}" alt="Chicago" style="width: 1200px; height: 550px;">
            <div class="carousel-caption">
                <h3>Chicago</h3>
                <p>Thank you, Chicago!</p>
            </div>   
            </div>
            <div class="carousel-item">
            <img src="{{ asset('themes/img/testimonial-1.jpg') }}" alt="New York" style="width: 1200px; height: 550px;">
            <div class="carousel-caption">
                <h3>New York</h3>
                <p>We love the Big Apple!</p>
            </div>   
            </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style>