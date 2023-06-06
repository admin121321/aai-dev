@extends('layouts.welcome-menu-register')

@section('content')
<section class="page">
<div class="container">
    <div class="row">
		<div class="col-md-8 col-md-offset-2">
            <div class="card-body">
                <section class="best-of-the-week text-center">
						<!-- Large modal -->
							<!-- <h2>Informasi</h2> -->
							<div>
								<p>Pendaftaran bagi Pegawai Swasta/BUMN/BUMD dan Masyarakat Pemerhati Arsip (termasuk mahasiswa)</p>
								<p>Bagi Arsiparis (PNS) DKI Jakarta akan didaftarkan oleh Admin.</p>
							</div>
							<div>
								<a class="btn btn-primary btn-lg nav-link-style fs-ms text-black-50 text-primary text-decoration-none" data-toggle="modal" data-target="#mySyarat">
									{{ __('Lanjut Daftar') }}
								</a>
							<div>
				</section>
            </div>
        </div>
    </div>
</div>
</section>
	
<!-- Modal Syarat & Ketentuan -->
<section class="page">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="card-body">
					<section class="best-of-the-week text-center">
							<!-- Modal -->
							<div class="modal fade" id="mySyarat" role="dialog">
								<div class="modal-dialog">
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Syarat Dan Ketentuan</h4>
										</div>
										@foreach(App\Models\Halamans::latest()->paginate(1) as $halaman)
										@if ( $halaman->id=="14")
										<div class="modal-body">
											<div class="card-body">
											{!! $halaman->deskripsi !!}
											</div>
										</div>
										@endif
										@endforeach
										<div class="modal-footer">
										<button type="button" class="btn btn-warning btn-lg" data-dismiss="modal">Close</button>
										<!-- Trigger the modal with a button -->
										<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Lanjut Daftar</button>				
										<!--Main layout-->
										</div>
									</div>
									
								</div>
							</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</section>	
<!-- Modal Daftar -->
<section class="page">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="card-body">
					<section class="best-of-the-week text-center">
							<!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Pendaftaran Anggota</h4>
										</div>
										<div class="modal-body">
										<div class="card-body">
											<form method="POST" action="{{ route('register') }}">
												@csrf
												<div class="card-body">
													<div class="form-group row">
													<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>
														<div class="col-md-6">
															<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

															@error('name')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>
												
												<div class="card-body">
													<div class="form-group row">
													<label for="t_lahir" class="col-md-4 col-form-label text-md-right">{{ __('Tempat Lahir') }}</label>

													<div class="col-md-6">
													<input id="t_lahir" type="text" name="t_lahir"  class="form-control @error('t_lahir') is-invalid @enderror" name="t_lahir" value="{{ old('t_lahir') }}" required autocomplete="t_lahir" autofocus>

														@error('t_lahir')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="tgl_lahir" class="col-md-4 col-form-label text-md-right">{{ __('Tanggal Lahir') }}</label>
													<div class="col-md-6">
													<input id="tgl_lahir" type="date" name="tgl_lahir"  class="form-control @error('tgl_lahir') is-invalid @enderror" name="tgl_lahir" value="{{ old('tgl_lahir') }}" required autocomplete="t_lahir" autofocus>

														@error('tgl_lahir')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="j_k" class="col-md-4 col-form-label text-md-right">{{ __('Jenis Kelamin') }}</label>
													<div class="col-md-6">
													<select name="j_k" class="form-control" required>
															<option>---Pilih Jenis Kelamin---</option>
															<option value="LAKI-LAKI">LAKI-LAKI</option>
															<option value="PEREMPUAN">PEREMPUAN</option>
														</select>

														@error('j_k')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="nip" class="col-md-4 col-form-label text-md-right">{{__('NIP / NIK') }}</label>
													<div class="col-md-6">
														<input id="nip" type="number" class="form-control @error('nip') is-invalid @enderror" name="nip" value="{{ old('nip') }}" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="nip" autofocus>

														@error('nip')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="no_telpn" class="col-md-4 col-form-label text-md-right">{{__('No Handphone') }}</label>
													<div class="col-md-6">
														<input id="no_telpn" type="number" class="form-control @error('no_telpn') is-invalid @enderror" name="no_telpn" value="{{ old('no_telpn') }}" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="no_telpn" autofocus>
														@error('no_telpn')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="inst" class="col-md-4 col-form-label text-md-right">{{ __('Perusahaan/Instansi/Perguruan Tinggi') }}</label>
														<div class="col-md-6">
															<input id="inst" type="text" class="form-control @error('inst') is-invalid @enderror" name="inst" value="{{ old('inst') }}" required autocomplete="inst" autofocus>

															@error('inst')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="ketegori" class="col-md-4 col-form-label text-md-right">{{__('Kategori Pekerjaan') }}</label>
														<div class="col-md-6">
														<select name="kategori" class="form-control" required>
															<option>-----Pilih Kategori Pekerjaan-----</option>
															<option value="PNS (Non Arsiparis DKI Jakarta)">PNS (Non Arsiparis DKI Jakarta)</option>
															<option value="PPPK (Non PNS DKI Jakarta)">PPPK (Non PNS DKI Jakarta)</option>
															<option value="Pegawai BUMN/BUMD/Swasta">Pegawai BUMN/BUMD/Swasta</option>
															<option value="Masyarakat Pemerhati Arsip">Masyarakat Pemerhati Arsip</option>
															<option value="Mahasiswa">Mahasiswa</option>
														</select>
															@error('kategori')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Email Address') }}</label>

													<div class="col-md-6">
														<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

														@error('email')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

													<div class="col-md-6">
														<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

														@error('password')
															<span class="invalid-feedback" role="alert">
																<strong>{{ $message }}</strong>
															</span>
														@enderror
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

													<div class="col-md-6">
														<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
													</div>
												</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
														<input type="checkbox"
															class="form-check-input @error('persetujuan') is-invalid @enderror"
															value="setuju"
															name="persetujuan"
															id="persertujuan"
															{{ !old('persetujuan') ?: 'checked' }}
														>
														<label class="form-check-label fs-sm">
															{{ __('Saya menyetujui Syarat & Ketentuan') }}
														</label>
													</div>
												</div>

												<div class="row mb-0">
													<div class="col-md-6 offset-md-4">
														<button type="submit" class="btn btn-primary">
															{{ __('Daftar') }}
														</button>
													</div>
												</div>
											</form>
										</div>
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
									
								</div>
							</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</section>			
@endsection
