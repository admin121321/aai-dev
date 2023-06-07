@extends('layouts.backend-menu')

@section('content')
 @if(session()->get('success'))
          <script>
            window.alert('{{ session()->get('success') }}') ;
          </script>
    @endif
<div class="main-content">
    <section class="#">
        <div class="section-header">
            <br />
            <h3> Profile </h3>
        </div>
            <div class="section-body">
            <form method="POST" action="./update/{{ $users->id }}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                    <div class="card-header"><b>Data Diri</b></div>
                    <div class="card-body">

                        <div class="form-group row">
                            <label for="nrk" class="col-md-4 col-form-label text-md-right">{{__('NRK') }}</label>
                            <div class="col-md-6">
                                <input id="nrk" type="text" name="nrk" placeholder="{{ $users->nrk }}" class="form-control" value="{{ $users->nrk }}">
                                @error('nrk')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                         <div class="form-group row">
                            <label for="nip" class="col-md-4 col-form-label text-md-right">{{__('NIP') }}</label>
                            <div class="col-md-6">
                                <input id="nip" type="text" name="nip" placeholder="{{ $users->nip }}" class="form-control" value="{{ $users->nip }}">
                                @error('nip')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="no_ser_kar" class="col-md-4 col-form-label text-md-right">{{ __('No. Seri Karpeg') }}</label>
                            <div class="col-md-6">
                                <input id="no_ser_kar" type="text" class="form-control" name="no_ser_kar" placeholder="{{ $users->no_ser_kar }}" value="{{ $users->no_ser_kar }}">
                                @error('no_ser_kar')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama') }}</label>
                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" placeholder="{{ $users->name }}" value="{{ $users->name }}">

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="t_lahir" class="col-md-4 col-form-label text-md-right">{{ __('Tempat Lahir') }}</label>
                            <div class="col-md-6">
                                <input id="t_lahir" type="text" class="form-control" name="t_lahir" placeholder="{{ $users->t_lahir }}" value="{{ $users->t_lahir }}">
                                @error('t_lahir')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="tgl_lahir" class="col-md-4 col-form-label text-md-right">{{ __('Tanggal Lahir') }}</label>
                            <div class="col-md-6">
                                <input id="tgl_lahir" type="date" class="form-control" name="tgl_lahir" placeholder="{{ $users->tgl_lahir }}" value="{{ $users->tgl_lahir }}">
                                @error('tgl_lahir')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="j_k" class="col-md-4 col-form-label text-md-right">{{ __('Jenis Kelamin') }}</label>
                            <div class="col-md-6">
                               <select name="j_k" class="form-control">
                                    <option>{{ $users->j_k }}</option>
                                    <option value="LAKI-LAKI">LAKI-LAKI</option>
                                    <option value="PEREMPUAN">PEREMPUAN</option>
                                </select>
                                @error('j_K')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="no_telpn" class="col-md-4 col-form-label text-md-right">{{ __('No Handphone') }}</label>
                        <div class="col-md-6">
                            <input id="no_telpn" type="text" class="form-control" name="no_telpn" placeholder="{{ $users->no_telpn }}" value="{{ $users->no_telpn }}">
                            @error('no_telpn')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="id_anggota" class="col-md-4 col-form-label text-md-right">{{ __('ID Anggota') }}</label>
                        <div class="col-md-6">
                            <input id="id_anggota" type="text" class="form-control" name="id_anggota" placeholder="{{ $users->id_anggota }}" value="{{ $users->id_anggota }}">
                            @error('id_anggota')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    
                    @if (Auth::User()->kategori=="PNS Arsiparis")
                     <div class="card-header"><b>Pangkat</b></div>
                     <div class="card-body">
                        <div class="form-group row">
                            <label for="pang" class="col-md-4 col-form-label text-md-right">{{ __('Pangkat') }}</label>
                            <div class="col-md-6">
                               <select name="pang" class="form-control" readonly>
                                    <option>{{ $users->pang }}</option>
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

                        <div class="form-group row">
                            <label for="gol" class="col-md-4 col-form-label text-md-right">{{ __('Golongan') }}</label>
                            <div class="col-md-6">
                               <select name="gol" class="form-control" readonly>
                                    <option>{{ $users->gol }}</option>
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

                        <div class="form-group row">
                            <label for="tmt_pang" class="col-md-4 col-form-label text-md-right">{{ __('TMT Pangkat') }}</label>
                                <div class="col-md-6">
                                <input id="tmt_pang" type="date" class="form-control"  name="tmt_pang" placeholder="{{ $users->tmt_pang }}" value="{{ $users->tmt_pang }}">
                                @error('tmt_pang')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div>
                        </div>


                     <div class="card-header"><b>Jabatan</b></div>
                     <div class="card-body">
                        <div class="form-group row">
                            <label for="ting" class="col-md-4 col-form-label text-md-right">{{ __('Tingkatan') }}</label>
                            <div class="col-md-6">
                               <select name="ting" class="form-control" readonly>
                                    <option>{{ $users->ting }}</option>
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

                        <div class="form-group row">
                            <label for="tmt_ting" class="col-md-4 col-form-label text-md-right">{{ __('TMT Tingkatan') }}</label>
                                <div class="col-md-6">
                                <input id="tmt_ting" type="date" class="form-control"  name="tmt_ting" placeholder="{{ $users->tmt_ting }}" value="{{ $users->tmt_ting }}">
                                @error('tmt_ting')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div>
                        </div>
                    @else
                    <input id="pang" type="date" class="form-control"  name="pang" placeholder="{{ $users->pang }}" value="{{ $users->pang }}" hidden>
                    <input id="tmt_pang" type="date" class="form-control"  name="tmt_pang" placeholder="{{ $users->tmt_pang }}" value="{{ $users->tmt_pang }}" hidden>
                    <input id="gol" type="date" class="form-control"  name="gol" placeholder="{{ $users->gol }}" value="{{ $users->gol }}" hidden>
                    <input id="ting" type="date" class="form-control"  name="ting" placeholder="{{ $users->ting }}" value="{{ $users->ting }}" hidden>
                    <input id="tmt_ting" type="date" class="form-control"  name="tmt_ting" placeholder="{{ $users->tmt_ting }}" value="{{ $users->tmt_ting }}" hidden>
                    @endif
                     <div class="card-header"><b>Unit Kerja</b></div>
                     <div class="card-body">
                        <div class="form-group row">
                            <label  class="col-md-4 col-form-label text-md-right">{{ __('Unit Kerja') }}</label>
                            <div class="col-md-6">
                            <select class="form-control" id="kategori" name="kategori">
                                <option>{{ $users->kategori }}</option>
                                <option value="PNS Arsiparis">PNS Arsiparis</option>
                                <option value="PNS (Non Arsiparis DKI Jakarta)">PNS (Non Arsiparis DKI Jakarta)</option>
                                <option value="PPPK (Non PNS DKI Jakarta)">PPPK (Non PNS DKI Jakarta)</option>
                                <option value="Pegawai BUMN/BUMD/Swasta">Pegawai BUMN/BUMD/Swasta</option>
                                <option value="Masyarakat Pemerhati Arsip">Masyarakat Pemerhati Arsip</option>
                                <option value="Mahasiswa">Mahasiswa</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="u_k" class="col-md-4 col-form-label text-md-right">{{ __('Unit Kerja') }}</label>
                            <div class="col-md-6">
                                <input id="u_k" type="text" class="form-control"  name="u_k" placeholder="{{ $users->u_k }}" value="{{ $users->u_k }}">
                                @error('u_k')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                     <div class="card-header"><b>Instansi</b></div>
                     <div class="card-body">
                        <div class="form-group row">
                            <label for="inst" class="col-md-4 col-form-label text-md-right">{{ __('Instansi') }}</label>
                            <div class="col-md-6">
                            <input id="inst" type="text" class="form-control"  name="inst" placeholder="{{ $users->inst }}" value="{{ $users->inst }}">
                                @error('ting')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                <div class="card-header"><b>User Login</b></div>
                   <div class="card-body">
                     <div class="form-group row">
                            <label for="foto" class="col-md-4 col-form-label text-md-right">{{ __('Foto') }}</label>
                            <div class="col-md-6">
                                <img src="{{ URL::to('/') }}/images-foto/{{ $users->foto }}" class="img-thumbnail" width="100" />
                                <input type="file" name="foto" />
                                <input type="hidden" name="hidden_image" value="{{ $users->foto }}" />
                                @error('foto')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" hidden="">
                            <label for="level" class="col-md-4 col-form-label text-md-right">{{ __('Level') }}</label>
                            <div class="col-md-6">
                                <select name="level" class="form-control" readonly>
                                    <option>{{ $users->level }}</option>
                                    <option value="SUPERADMIN">SUPER ADMIN</option>
                                    <option value="ADMIN">ADMIN</option>
                                    <option value="USERS">USERS</option>
                                </select>
                                @error('level')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Update') }}
                                </button>
                            </div>
                        </div>

                        <div><a href="/home" class="btn btn-primary">Kembali</a></div>
                    </div>
                    </form>
            </div>        
    </section>
</div>
@endsection