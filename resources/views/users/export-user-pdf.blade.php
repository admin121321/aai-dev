<div class="main-content">
    <section class="#">
        <div class="section-header">
            <br />
        </div>
        <div class="section-body">
            <!-- card-body -->
            <div class="row">
                <div class="col-12 table-responsive">
                <br />
                  @if ($users->isEmpty())
                        <p>Tidak Ada Data Anggota</p>
                    @else
                    <table id="example" class="table text-start align-middle table-bordered table-hover mb-0 posting_datatable"> 
                            <thead>
                                <tr>
                                    <th><p>ID Anggota</p></th>
                                    <th><p>Nama</p></th>
                                    <th><p>Jenis Kelamin</p></th>
                                    <th><p>Email</p></th>
                                    <th><p>No Handphone</p></th>
                                    <th><p>Kategori Pekerjaan</p></th>
                                    <th><p>Institusi/Perusahaan/Perguruan Tinggi</p></th>
                                    <th><p>Verifikasi Akun</p></th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td><p>{{ $user->id_anggota }}</p></td>
                                    <td><p>{{ $user->name }}</p></td>
                                    <td><p>{{ $user->j_k }}</p></td>
                                    <td><p>{{ $user->email }}</p></td>
                                    <td><p>{{ $user->no_telpn }}</p></td>
                                    <td><p>{{ $user->kategori }}</p></td>
                                    <td><p>{{ $user->inst }}</p></td>
                                    <td><p>{{ $user->verifikasi }}</p></td>
                                </tr>
                            @endforeach
                            </tbody>
                    </table>
                    @endif
                </div>
            </div>
            <!-- card-body -->      
    </section>
</div>