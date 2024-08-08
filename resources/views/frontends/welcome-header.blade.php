<!-- google translate -->
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<header class="primary">
    <div class="firstbar">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="brand">
                        <a href="{{ url('/') }}">
                            <img src="{{ asset('themes-frontend/images/logo-aai.png') }}" alt="Aai Jakarta Logo">
                        </a>
                    </div>						
                </div>
                <div class="col-md-6 col-sm-12">
                    <form class="search" autocomplete="off">
                        <div class="form-group" id="google_translate_element">
                            <div class="input-group">
                                <input type="text" name="q" class="form-control" placeholder="Type something here">									
                                <div class="input-group-btn">
                                    <button class="btn btn-primary"><i class="ion-search"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="help-block">
                            <ul>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </form>							
                </div> 
                <div class="col-md-3 col-sm-12 text-right">	
                    <div class="nav-icons brand">
                        <a href="{{ url('/') }}">
                            <img src="{{ asset('themes-frontend/images/sponsor/logo-jakarta.png') }}" alt="Aai Jakarta Logo" style="width: 50px; height: 60px;">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Start nav -->
    @include('frontends.welcome-modal')  
    @include('frontends.welcome-navigation')
    <!-- End nav -->
</header>
</body>