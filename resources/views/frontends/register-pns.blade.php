@extends('layouts.welcome-menu-register')

@section('content')
<section class="page">
<div class="container">
    <div class="row">
		<div class="col-md-8 col-md-offset-2">
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
                            <label for="pang" class="col-md-4 col-form-label text-md-right">{{ __('Pangkat') }}</label>
                            <div class="col-md-6">
                               <select name="pang" class="form-control" required>
                                    <option>---Pilih Pangkat---</option>
                                    <option value="PENGATUR">PENGATUR</option>
                                    <option value="PENGATUR Tk.1">PENGATUR Tk.1</option>
                                    <option value="PENGATUR Tk.2">PENGATUR Tk.2</option>
                                    <option value="PENATA">PENATA</option>
                                    <option value="PENATA Tk.1">PENATA Tk.1</option>
                                    <option value="PENATA Tk.2">PENATA Tk.2</option>
                                    <option value="PENATA MUDA">PENATA MUDA</option>
                                    <option value="PENATA MUDA Tk.1">PENATA MUDA Tk.1</option>
                                    <option value="Penata Muda Tk.2">PENATA MUDA Tk.2</option>
                                </select>
                                @error('gol_pang')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="form-group row">
                            <label for="gol" class="col-md-4 col-form-label text-md-right">{{ __('Golongan') }}</label>
                            <div class="col-md-6">
                               <select name="gol" class="form-control" required>
                                    <option>---Pilih Golongan---</option>
                                    <option value="II-c">II-c</option>
                                    <option value="II-d">II-d</option>
                                    <option value="III-a">III-a</option>
                                    <option value="III-b">III-b</option>
                                    <option value="III-c">III-c</option>
                                    <option value="III-d">III-d</option>
                                </select>
                                @error('gol_pang')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                          </div>
                        </div>

                        <div class="card-body">
                            <div class="form-group row">
                                <label for="ting" class="col-md-4 col-form-label text-md-right">{{ __('Tingkatan') }}</label>

                                <div class="col-md-6">
                                <select name="ting" class="form-control" required>
                                        <option>---Pilih Tingkatan---</option>
                                        <option value="AHLI MUDA">AHLI MUDA</option>
                                        <option value="AHLI PERTAMA">AHLI PERTAMA</option>
                                        <option value="TERAMPIL">TERAMPIL</option>
                                        <option value="MAHIR">MAHIR</option>
                                        <option value="PENYELIA">PENYELIA</option>
                                        <option value="TINGKATAN">TINGKATAN</option>
                                    </select>

                                    @error('ting')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                         
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="u_k" class="col-md-4 col-form-label text-md-right">{{ __('Unit Kerja') }}</label>

                                    <div class="col-md-6">
                                    <select name="u_k" class="form-control" required>
                                            <option>--Pilih Unit Kerja--</option>
                                            @foreach(App\models\Unitkerja::all() as $uk)
                                            <option value="{{ $uk->u_k }}"  onkeyup="this.value = this.value.toUpperCase()">{{ $uk->u_k }}</option>
                                            @endforeach
                                        </select>

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
                            <label for="no_telpn" class="col-md-4 col-form-label text-md-right">{{__('No Telpn') }}</label>
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

                        <div class="card-body" hidden>
                            <div class="form-group row">
                            <label for="ketgori" class="col-md-4 col-form-label text-md-right">{{__('Kategori') }}</label>
                            <div class="col-md-6">
                                <input id="kategori" type="text" value="PNS" class="form-control @error('kategori') is-invalid @enderror" name="kategori" value="{{ old('kategori') }}" onkeyup="this.value = this.value.toUpperCase()" required autocomplete="kategori" autofocus>
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
    </div>
</div>
</section>
@endsection
