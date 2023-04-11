
<section class="best-of-the-week">
			<div class="container">
				<h1><div class="text">Berita Lain</div>
					<div class="carousel-nav" id="best-of-the-week-nav">
						<div class="prev">
							<i class="ion-ios-arrow-left"></i>
						</div>
						<div class="next">
							<i class="ion-ios-arrow-right"></i>
						</div>
					</div>
				</h1>
				<div class="owl-carousel owl-theme carousel-1">
				@foreach(App\Models\Posting::all() as $posting)
					<article class="article">
						<div class="inner">
							<figure>
								<a href="#">
									<img src="{{ url('/images/'.$posting->gambar) }}" alt="Sample Article">
								</a>
							</figure>
							<div class="padding">
								<div class="detail">
										<div class="time"><?php echo strip_tags("$posting->created_at");?></div>
										<div class="category"><a href="#">detail</a></div>
								</div>
								<h2><a href="#"><?php echo strip_tags("$posting->judul");?></a></h2>
								<p><?php echo substr("$posting->deskripsi", 0, 70);?>.</p>
							</div>
						</div>
					</article>		
				@endforeach
				</div>
			</div>
		</section>
