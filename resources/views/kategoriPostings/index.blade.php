@extends('layouts.app-menu')
@section('content')
<!-- Recent Sintring Start -->
 <div class="container-fluid pt-4 px-4">
                <div class="bg-light text-center rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0"><b>List Kategori Posting</b></h6>
                        <a href="">Tampikan Semua</a>
                    </div>
                    <!-- card-body -->
                    <div class="card-body">
                        <div class="row row-sm">
                        <div class="col-6 col-lg-3">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                                Buat Kategori
                            </button>
                        </div>
                        <div class="col-6 col-lg-9">
                            <div class="col-lg-12">
                            <!-- input-group -->
                            <form action="#" method="GET">
                            <div class="input-group">
                                <input type="text" class="form-control" name="cari" placeholder="Cari Instansi .." value="{{ old('cari') }}">
                                <span class="input-group-btn">
                                <button class="btn btn-outline-secondary" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                            </form>
                            <!-- input-group -->
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- card-body -->
                    {{ csrf_field() }}
                    <div class="table-responsive">
                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                            <thead>
                                <tr class="text-dark">
                                    <!-- <th scope="col"><input class="form-check-input" type="checkbox"></th> -->
                                    <th scope="col">ID</th>
                                    <th scope="col">Nama Kategori</th>
                                    <th scope="col">Tgl Input</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($KategoriPostings as $KategoriPosting)
                                <tr>
                                    <!-- <td><input class="form-check-input" type="checkbox"></td> -->
                                    <td>{{ $KategoriPosting->id_kategori}}</td>
                                    <td>{{ $KategoriPosting->nama_kategori}}</td>
                                    <td>{{ $KategoriPosting->created_at}}</td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" href="">Detil</a>
                                        <a class="btn btn-sm btn-primary" href="">Update</a>
                                        <a class="btn btn-sm btn-primary" href="">Hapus</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                 <!-- Modal -->
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Input Kategori</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            Modal body..
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                        </div>

                        </div>
                    </div>
                </div>

 </div>
<!-- Recent Sintring End -->
<!-- <script>
        $(function() {
            $('.exampleModal').modal('show');
        });
      </script> -->
@endsection