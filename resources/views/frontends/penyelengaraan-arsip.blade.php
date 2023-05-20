<section class="page">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="card-body">
					<section class="best-of-the-week text-center">
							<!-- Large modal -->
							<h3>Penyelengaraan Kearsipan</h3>
							<div>
								<p>Peraturan Terkait Penyelengaraan Kearsipan</p>
							</div>
							<div class="col-md-8 col-md-offset-2">
								<p>
									<button class="btn btn-primary text-center" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
										UU 8/97
									</button>
								</p>
								<div class="collapse" id="collapseExample">
									<div class="card card-body">
										<embed type="application/pdf" src="{{ asset('themes-frontend/pdf/uu-8-1997.pdf') }}" width="300" height="500"></embed>
									</div>
								</div>
							</div>
							<div class="col-md-8 col-md-offset-2">
								<p>
									<button class="btn btn-primary text-center" type="button" data-toggle="collapse" data-target="#collapseEx" aria-expanded="false" aria-controls="collapseExample">
										UU 43/2009
									</button>
								</p>
								<div class="collapse" id="collapseEx">
									<div class="card card-body">
									<embed  width="300" height="500" type="application/pdf" src="{{ asset('themes-frontend/pdf/uu-43-2009.pdf') }}"></embed>
									</div>
								</div>
							</div>
							<div class="col-md-8 col-md-offset-2">
								<p>
									<button class="btn btn-primary text-center" type="button" data-toggle="collapse" data-target="#collapseExi" aria-expanded="false" aria-controls="collapseExample">
										PP 28/2012
									</button>
								</p>
								<div class="collapse" id="collapseExi">
									<div class="card card-body">
										<embed  width="300" height="500" type="application/pdf" src="{{ asset('themes-frontend/pdf/pp-28-2012.pdf') }}"></embed>
									</div>
								</div>
							</div>
							<div class="col-md-8 col-md-offset-2">
								<p>
									<button class="btn btn-primary text-center" type="button" data-toggle="collapse" data-target="#collapseExy" aria-expanded="false" aria-controls="collapseExample">
										PERDA 12/2013
									</button>
								</p>
								<div class="collapse" id="collapseExy">
									<div class="card-body">
										<embed  width="300" height="500" type="application/pdf" src="{{ asset('themes-frontend/pdf/perda-12-2013.pdf') }}"></embed>
									</div>
								</div>
							</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</section>
<style>
embed {
	width : 100%;
	position: center;
}
</style>