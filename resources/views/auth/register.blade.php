@extends('layouts.welcome-menu-register')

@section('content')
<section class="page">
<div class="container">
    <div class="row">
		<div class="col-md-8 col-md-offset-2">
            <div class="card-body">
                <section class="best-of-the-week text-center">
						<!-- Large modal -->
							<h2>Informasi</h2>
							<div>
								<p>Pendaftaran hanya dilakukan untuk pegawai non ASN/ Swasta/ BUMN</p>
								<p>Untuk ASN DKI Jakarta akan didaftarkan oleh Admin</p>
							</div>
							<!-- Trigger the modal with a button -->
							<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Lanjut Daftar</button>				
							<!--Main layout-->
				</section>
            </div>
        </div>
    </div>
</div>
</section>
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
													<label for="u_k" class="col-md-4 col-form-label text-md-right">{{ __('Perusahaan/Instansi/Perguruan Tinggi') }}</label>
														<div class="col-md-6">
															<input id="u_k" type="text" class="form-control @error('u_k') is-invalid @enderror" name="u_k" value="{{ old('u_k') }}" required autocomplete="u_k" autofocus>

															@error('u_k')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body">
													<div class="form-group row">
													<label for="ketegori" class="col-md-4 col-form-label text-md-right">{{__('Kategori') }}</label>
														<div class="col-md-6">
														<select name="kategori" class="form-control" required>
															<option value="Pegawai BUMN/BUMD/Swasta">Pegawai BUMN/BUMD/Swasta</option>
															<option value="Masyarakat Pemerhati Arsip (*termasuk mahasiswa) ">Masyarakat Pemerhati Arsip (*termasuk mahasiswa)</option>
														</select>
															@error('kategori')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body" hidden>
													<div class="form-group row">
													<label for="pang" class="col-md-4 col-form-label text-md-right">{{__('Pangkat / Jabatan') }}</label>
														<div class="col-md-6">
															<input id="pang" type="text" class="form-control @error('pang') is-invalid @enderror" name="pang" value="0" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="pang" autofocus>
															@error('pang')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body" hidden>
													<div class="form-group row">
													<label for="ting" class="col-md-4 col-form-label text-md-right">{{__('Tingkatan') }}</label>
														<div class="col-md-6">
															<input id="ting" type="text" class="form-control @error('ting') is-invalid @enderror" name="ting" value="0" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="ting" autofocus>
															@error('ting')
																<span class="invalid-feedback" role="alert">
																	<strong>{{ $message }}</strong>
																</span>
															@enderror
														</div>
													</div>
												</div>

												<div class="card-body" hidden>
													<div class="form-group row">
													<label for="gol" class="col-md-4 col-form-label text-md-right">{{__('Tingkatan') }}</label>
														<div class="col-md-6">
															<input id="gol" type="text" class="form-control @error('gol') is-invalid @enderror" name="gol" value="0" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="gol" autofocus>
															@error('gol')
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

												<div class="row mb-0">
													<div class="col-md-6 offset-md-4">
														<button type="submit" class="btn btn-primary">
															{{ __('Register') }}
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
