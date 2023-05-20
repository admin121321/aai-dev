<section class="page">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
	          <ol class="breadcrumb">
	          	<li><a href="#">Home</a></li>
	            <li class="active">Kontak Kami</li>
	          </ol>
						<h1 class="page-title">Kontak Kami</h1>
						<p class="page-subtitle">silahkan hubungi</p>
						<div class="line thin"></div>
						<div class="page-description">
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<h3>Kontak</h3>
									<p>
										Silahkan hubungi kami untuk menanyakan sekitar kearsipan atau ingin menjadi anggota kami
									<p>
										Email : <span class="bold">admin@aaijakarta.or.id</span> atau <span class="bold">aai.dkijakarta@gmail.com</span>
										
									</p>
								</div>
									<div class="col-md-6 col-sm-6">
										@if(Session::has('success'))
									<div class="alert alert-success">
										{{Session::get('success')}}
									</div>
								@endif
							
								<form method="POST" action="{{ route('kirim.show') }}" id="contactUSForm">
									{{ csrf_field() }}
									
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<strong>Name:</strong>
												<input type="text" name="name" class="form-control" placeholder="Name" value="{{ old('name') }}">
												@if ($errors->has('name'))
													<span class="text-danger">{{ $errors->first('name') }}</span>
												@endif
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<strong>Email:</strong>
												<input type="text" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}">
												@if ($errors->has('email'))
													<span class="text-danger">{{ $errors->first('email') }}</span>
												@endif
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<strong>Handphone:</strong>
												<input type="text" name="phone" class="form-control" placeholder="Handphone" value="{{ old('phone') }}">
												@if ($errors->has('phone'))
													<span class="text-danger">{{ $errors->first('phone') }}</span>
												@endif
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<strong>Subject:</strong>
												<input type="text" name="subject" class="form-control" placeholder="Subject" value="{{ old('subject') }}">
												@if ($errors->has('subject'))
													<span class="text-danger">{{ $errors->first('subject') }}</span>
												@endif
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<strong>Message:</strong>
												<textarea name="message" rows="3" class="form-control">{{ old('message') }}</textarea>
												@if ($errors->has('message'))
													<span class="text-danger">{{ $errors->first('message') }}</span>
												@endif
											</div>  
										</div>
									</div>
							
									<div class="form-group text-center">
										<button class="btn btn-primary btn-submit">Submit</button>
									</div>
								</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- <section class="maps">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7927.32512614206!2d106.75366058323345!3d-6.564206896052583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1377e9bdc02eea68!2zNsKwMzMnNDkuOCJTIDEwNsKwNDUnMjAuNiJF!5e0!3m2!1sen!2sid!4v1495165466482" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</section> -->