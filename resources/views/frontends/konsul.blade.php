<section class="page">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
			@foreach($data as $halaman)
				@if ( $halaman->id=="13")
				<ol class="breadcrumb">
					<li><a href="{{ url('/') }}">Home</a></li>
					<li class="active">{{ $halaman->judul }}</li>
				</ol>
					<h1 class="page-title">{{ $halaman->judul }}</h1>
						<!-- <p class="page-subtitle">AAI Jakarta</p>
						<div class="line thin"></div> -->
						<div class="page-description">
							{!! $halaman->deskripsi !!}
						</div>
						<section class="best-of-the-week text-center">
							<div class="row">
								<div class="col-lg-4 col-md-12 mb-4">
									<div class="card">
										<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
											<!-- untuk gambar -->
											<i class="btn btn-primary icon ion-person"></i> 
										</div>
										<div class="card-body">
											<h5 class="card-title">ADVOKASI KESEHATAN</h5>
											<p class="card-text">
											Some quick example text to build on the card title and make up the bulk of the
											card's content.
											</p>
											<!-- <a href="#!" class="btn btn-primary">Read</a> -->
										</div>
									</div>
								</div>

								<div class="col-lg-4 col-md-6 mb-4">
									<div class="card">
										<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
											<!-- untuk gambar -->
											<i class="btn btn-primary icon ion-person"></i> 
										</div>
										<div class="card-body">
											<h5 class="card-title">ADVOKASI HUKUM</h5>
											<p class="card-text">
											Some quick example text to build on the card title and make up the bulk of the
											card's content.
											</p>
											<!-- <a href="#!" class="btn btn-primary">Read</a> -->
										</div>
									</div>
								</div>

								<div class="col-lg-4 col-md-6 mb-4">
									<div class="card">
										<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
											<!-- untuk gambar -->
											<i class="btn btn-primary icon ion-person"></i> 
										</div>
										<div class="card-body">
											<h5 class="card-title">ADVOKASI KEARSIPAN</h5>
											<p class="card-text">
											Some quick example text to build on the card title and make up the bulk of the
											card's content.
											</p>
											<!-- <a href="#!" class="btn btn-primary">Read</a> -->
										</div>
										</div>
									</div>
								</div>
							</div>
						<!--Main layout-->
						</section>
					@endif		
			@endforeach
			</div>
		</div>
</section>
