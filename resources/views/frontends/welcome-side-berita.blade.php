
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
		@foreach(App\Models\Posting::paginate(0) as $posting)
			<article class="article">
				<div class="inner">
				@if ($posting->verifikasi_posting == "0")
							
				@elseif ($posting->verifikasi_posting == "1")
					<figure>
						<a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">
							<img src="{{ url('/images/'.$posting->gambar) }}" alt="Sample Article" style=" display: block; margin-left: auto; margin-right: auto; width: 80%;">
						</a>
					</figure>
					<div class="padding">
						<div class="detail">
								<div class="time"><?php echo strip_tags("$posting->created_at");?></div>
								<div class="category"><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}">detail</a></div>
						</div>
						<h2><a href="{{ route('berita.show',str_replace('', '-', $posting->judul)) }}"><?php echo str_replace('-', ' ', $posting->judul);?></a></h2>
						<p><?php echo substr($posting->deskripsi, 0, 50);?>.</p>
					</div>
				@endif
				</div>
			</article>		
		@endforeach
		</div>
	</div>
</section>
