@extends('layouts.welcome-menu-register')

@section('content')
<section class="page">
<div class="container">
    <div class="row">
		<div class="col-md-8 col-md-offset-2">
                <div class="card-body">
                <section class="best-of-the-week text-center">
							<div class="row">
								<div class="col-lg-4 col-md-12 mb-4">
									<div class="card">
										<div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
											<!-- untuk gambar -->
											<i class="btn btn-primary icon ion-person"></i> 
										</div>
										<div class="card-body">
											<h5 class="card-title">PNS</h5>
											<p class="card-text">
											Jika Anda PNS
											</p>
											<a href="{{ route('frontends.register-pns') }}" class="btn btn-primary">Daftar</a>
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
											<h5 class="card-title">Non PNS</h5>
											<p class="card-text">
											JIka Anda NON PNS / Swasta
											</p>
											<a href="{{ route('frontends.register-nonpns') }}" class="btn btn-primary">Daftar</a>
										</div>
										</div>
									</div>
								</div>
							</div>
						<!--Main layout-->
						</section>
                </div>
        </div>
    </div>
</div>
</section>
@endsection
