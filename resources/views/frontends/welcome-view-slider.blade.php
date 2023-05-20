<style>
	img {
		border-radius: 8px;
		margin-left: auto;
		margin-right: auto;
	}
	figure.image {
		border-radius: 8px;
		margin-left: auto;
		margin-right: auto;
	}
</style>
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
									<a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><div class="badge"><?php echo strip_tags("$posting->judul");?></div><?php echo strip_tags("$posting->deskripsi");?></a>
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
										<img src="{{ url('/images/'.$posting->gambar) }}" alt="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">
									</figure>
									<div class="details">
										<div class="category"><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo strip_tags("$posting->judul");?></a></div>
										<h1><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo substr("$posting->deskripsi", 0, 33);?></a></h1>
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
								<h6 class="page-title" style="text-align: center;">Iklan</h6>
								<div class="aside-body">
								@foreach(App\Models\Iklans::latest()->paginate(2) as $iklan)
									<ul class="sponsored">
										<li>
											<a href="{{ url($iklan->link_media) }}">
												<img src="{{ url('/images-iklan/'.$iklan->gambar) }}" alt="Sponsored" style=" display: block; margin-left: auto; margin-right: auto; width: 100%;">
											</a>
										</li>
									</ul>
								@endforeach
								</div>
							</aside>
							<aside id="sponsored">
								<h6 class="page-title" style="text-align: center;">Info Social Media Kami</h6>
								<iframe width="350" height="320" src="https://www.instagram.com/aai.jakarta/embed" frameborder="0"></iframe>
							</aside>
					</div>
				</div>
			</div>
		</section>