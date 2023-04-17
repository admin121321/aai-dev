<section class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="headline">
							<div class="nav" id="headline-nav">
								<a class="left carousel-control" role="button" data-slide="prev">
									<span class="ion-ios-arrow-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" role="button" data-slide="next">
									<span class="ion-ios-arrow-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
							<div class="owl-carousel owl-theme" id="headline">
								@foreach(App\Models\Posting::all() as $posting)							
								<div class="item">
									<a href="{{ url('/berita/' . str_replace(' ', '-', $posting->judul) ) }}"><div class="badge"><?php echo strip_tags("$posting->judul");?></div><?php echo strip_tags("$posting->deskripsi");?></a>
								</div>
								@endforeach
							</div>
						</div>
						<div class="owl-carousel owl-theme slide" id="featured">
						@foreach(App\Models\Posting::latest()->paginate(1) as $posting)
							<div class="item">
								<article class="featured">
									<div class="overlay"></div>
									<figure>
										<img src="{{ url('/images/'.$posting->gambar) }}" alt="Sample Article">
									</figure>
									<div class="details">
										<div class="category"><a href="{{ url('/berita/' . str_replace(' ', '-', $posting->judul) ) }}"><?php echo strip_tags("$posting->judul");?></a></div>
										<h1><a href="{{ url('/berita/' . str_replace(' ', '-', $posting->judul) ) }}"><?php echo strip_tags("$posting->deskripsi");?></a></h1>
										<div class="time"><?php echo strip_tags("$posting->created_at");?></div>
									</div>
								</article>
							</div>
						@endforeach
						</div>
					</div>
					<div class="col-xs-6 col-md-4 sidebar" id="sidebar">
						<div class="sidebar-title for-tablet">Sidebar</div>
						<aside id="sponsored">
						<div class="badge-item"><i class="ion-star"></i> Featured</div>
							<!-- <h1 class="aside-title">Sponsored</h1> -->
							<div class="aside-body">
								<ul class="sponsored">
								   <li>
										<a href="#">
											<img src="{{ asset('themes-frontend/images/sponsor/logo-anri.jpg') }}" alt="Sponsored">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="{{ asset('themes-frontend/images/sponsor/logo-jdih.png') }}" alt="Sponsored">
										</a>
									</li>  
									<li>
										<a href="#">
											<img src="{{ asset('themes-frontend/images/sponsor/logo-dispusip.jpg') }}" alt="Sponsored">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="{{ asset('themes-frontend/images/sponsor/logo-jakarta.png') }}" alt="Sponsored">
										</a>
									</li> 
									<li>
										<a href="#">
											<img src="{{ asset('themes-frontend/images/sponsor/logo-ptsp-jakarta.png') }}" alt="Sponsored">
										</a>
									</li> 
								</ul>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</section>