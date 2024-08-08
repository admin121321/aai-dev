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
										
										<div class="wizard">
											<div class="wizard-inner">
												<div class="connecting-line"></div>
												<ul class="nav nav-tabs" role="tablist" hidden>
													<li role="presentation" class="active">
														<a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" aria-expanded="true"><span class="round-tab">Syarat & Ketentuan </span></a>
													</li>
													<li role="presentation" class="disabled">
														<a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" aria-expanded="false"><span class="round-tab">Form Daftar</span></a>
													</li>
												</ul>
											</div>

											<div class="tab-content" id="main_form">	
												<!-- Syarat & Ketentuan -->
												<div class="tab-pane active" role="tabpanel" id="step1">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Syarat & Ketentuan</h4>
													</div>													
													<div class="card-body">
													@foreach(App\Models\Halamans::latest()->paginate(1) as $halaman)
														@if ( $halaman->id=='15')
														<div class="modal-body">
															<div class="card-body">
															{!! $halaman->deskripsi !!}
															</div>
														</div>
														@endif
													@endforeach
													</div>
													<ul class="list-inline pull-right">
														<li><button type="button" class="btn btn-warning btn-lg prev-step" data-dismiss="modal">Close</button></li>
														<li><button type="button" class="btn btn-primary btn-lg next-step">Lanjut Daftar</button></li>
													</ul>
												</div>
												
												<!-- Form Daftar -->
												<div class="tab-pane" role="tabpanel" id="step2">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Daftar Anggota</h4>
													</div>													
												   <div class="card-body">
													<form method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
															@csrf
															<div class="card-body">
																<div class="form-group row">
																<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama') }}</label>
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
																		<input id="no_telpn" type="text" minlength="11" min="11" maxlength="12" max="12" class="form-control @error('no_telpn') is-invalid @enderror" name="no_telpn" value="{{ old('no_telpn') }}" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="no_telpn" autofocus>
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
																			<option value="PNS (Arsiparis DKI Jakarta)">PNS (Arsiparis DKI Jakarta)</option>
																			<option value="PNS (Non Arsiparis DKI Jakarta)">PNS (Non Arsiparis DKI Jakarta)</option>
																			<option value="PPPK (Non PNS DKI Jakarta)">PPPK (Non PNS DKI Jakarta)</option>
																			<option value="PNS Luar DKI/Pegawai BUMN/BUMD/Swasta">PNS Luar DKI/Pegawai BUMN/BUMD/Swasta</option>
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
																	<label for="bukti_pembayaran" class="col-md-4 col-form-label text-md-right">{{__('Bukti Pembayaran') }}</label>
																	<div class="col-md-6">
																		<input id="bukti_pembayaran" type="file" class="form-control @error('bukti_pembayaran') is-invalid @enderror" name="bukti_pembayaran" value="{{ old('bukti_pembayaran') }}" required autocomplete="bukti_pembayaran" autofocus>
																		@error('bukti_pembayaran')
																			<span class="invalid-feedback" role="alert">
																				<strong>{{ $message }}</strong>
																			</span>
																		@enderror
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
													<br>
													<br>
													<br>
													<ul class="list-inline pull-right">
														<li><button type="button" class="btn btn-warning prev-step" data-dismiss="modal">Close</button></li>
														<li><button type="button" class="btn btn-primary prev-step">Kembali</button></li>
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>

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

<script>
	$(document).ready(function () {
		$('.nav-tabs > li a[title]').tooltip();
		
		//Wizard
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {

			var target = $(e.target);
		
			if (target.parent().hasClass('disabled')) {
				return false;
			}
		});

		$(".next-step").click(function (e) {

			var active = $('.wizard .nav-tabs li.active');
			active.next().removeClass('disabled');
			nextTab(active);

		});
		$(".prev-step").click(function (e) {

			var active = $('.wizard .nav-tabs li.active');
			prevTab(active);

		});
	});

	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}


	$('.nav-tabs').on('click', 'li', function() {
		$('.nav-tabs li.active').removeClass('active');
		$(this).addClass('active');
	});

</script>
@endsection
