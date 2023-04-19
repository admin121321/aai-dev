<section class="page">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
			
					@foreach($data as $halaman)
					@if ( $halaman->id=="11")
					<ol class="breadcrumb">
						<li><a href="{{ url('/') }}">Home</a></li>
						<li class="active">{{ $halaman->judul }}</li>
					</ol>
						<h1 class="page-title">{{ $halaman->judul }}</h1>
								<p class="page-subtitle">AAI Jakarta</p>
								<div class="line thin"></div>
								<div class="page-description">
								    {!! $halaman->deskripsi !!}
								</div>
								
								<div class="question">
										Ingin Bertanya? <a href="{{ url('/kontak-kami') }}" class="btn btn-primary">Kontak Kami</a>
									</div>
						@endif
								
						@endforeach
					</div>
				</div>
			</div>
		</section>
