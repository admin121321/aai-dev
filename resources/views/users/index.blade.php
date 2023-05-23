@extends('layouts.backend-menu')
@section('content')

<div class="main-content">
    <section class="#">
        <div class="section-header">
            <br />
            <div align="right">
                <button type="button" name="create_record" id="create_record" class="btn btn-success"> <i class="bi bi-plus-square"></i> Add</button>
            </div>
        </div>
        <div class="section-body">
            <!-- card-body -->
            <div class="row">
                <div class="col-12 table-responsive">
                <br />
                    <table class="table text-start align-middle table-bordered table-hover mb-0 posting_datatable"> 
                        <thead>
                            <tr>
                                <th>ID Anggota</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>No Handphone</th>
                                <th>Foto</th>
                                <th>Verifikasi</th>
                                <th width="180px">Action</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
            <!-- card-body -->
            <!-- Modal -->
            <div class="modal fade" id="formModal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content bg-light rounded h-100 p-4">
                        <form method="post" id="sample_form" enctype="multipart/form-data" class="form-horizontal">
                        <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel">Add User</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
                                </div>
                                <div class="modal-body">
                                    <span id="form_result"></span>
                                    <div class="form-group">
                                        <label>Name : </label>
                                        <input type="text" name="name" id="name" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label>Tempat Lahir : </label>
                                        <input type="text" id="t_lahir" name="t_lahir" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Tgl Lahir : </label>
                                        <input type="date" id="tgl_lahir" name="tgl_lahir" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Kelamin : </label>
                                        <select name="j_k" class="form-control" required>
                                            <option value="LAKI-LAKI">LAKI-LAKI</option>
                                            <option value="PEREMPUAN">PEREMPUAN</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>ID Anggota : </label>
                                        <input type="number" name="id_anggota" id="id_anggota" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label>Kategori : </label>
                                        <select name="kategori" class="form-control" required>
                                            <option value="Pegawai Negeri Sipil">Pegawai Negeri Sipil</option>
                                            <option value="Pegawai BUMN/BUMD/Swasta">Pegawai BUMN/BUMD/Swasta</option>
											<option value="Masyarakat Pemerhati Arsip (*termasuk mahasiswa) ">Masyarakat Pemerhati Arsip (*termasuk mahasiswa)</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>NRK : </label>
                                        <input type="text" id="nrk" name="nrk" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>NIP : </label>
                                        <input type="number" id="nip" name="nip" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>No Seri Karpeg : </label>
                                        <input type="text" id="no_ser_kar" name="no_ser_kar" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Pangkat : </label>
                                        <select name="pang" class="form-control">
                                            <option value="PENGATUR">PENGATUR</option>
                                            <option value="PENGATUR Tk.1">PENGATUR Tk.1</option>
                                            <option value="PENGATUR Tk.2">PENGATUR Tk.2</option>
                                            <option value="PENATA">PENATA</option>
                                            <option value="PENATA Tk.1">PENATA Tk.1</option>
                                            <option value="PENATA Tk.2">PENATA Tk.2</option>
                                            <option value="PENATA MUDA">PENATA MUDA</option>
                                            <option value="PENATA MUDA Tk.1">PENATA MUDA Tk.1</option>
                                            <option value="Penata Muda Tk.2">PENATA MUDA Tk.2</option>
                                            <option value="TIDAK ADA">TIDAK ADA</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Golongan : </label>
                                        <select name="gol" class="form-control">
                                            <option value="II-c">II-c</option>
                                            <option value="II-d">II-d</option>
                                            <option value="III-a">III-a</option>
                                            <option value="III-b">III-b</option>
                                            <option value="III-c">III-c</option>
                                            <option value="III-d">III-d</option>
                                            <option value="TIDAK ADA">TIDAK ADA</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>TMT Pangkat : </label>
                                        <input id="tmt_pang" type="text" name="tmt_pang" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Tingkat : </label>
                                        <select name="ting" class="form-control">
                                            <option value="AHLI MUDA">AHLI MUDA</option>
                                            <option value="AHLI PERTAMA">AHLI PERTAMA</option>
                                            <option value="TERAMPIL">TERAMPIL</option>
                                            <option value="MAHIR">MAHIR</option>
                                            <option value="PENYELIA">PENYELIA</option>
                                            <option value="TINGKATAN">TINGKATAN</option>
                                            <option value="TIDAK ADA">TIDAK ADA</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>TMT Tingkat : </label>
                                        <input id="tmt_ting" type="text" name="tmt_ting" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Unit Kerja : </label>
                                        <input id="u_k" type="text" name="u_k" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Instansi : </label>
                                        <input id="inst" type="text" name="inst" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>No Handphone : </label>
                                        <input type="number" id="no_telpn" name="no_telpn" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Kategori Kerja : </label>
                                        <input id="kategori" type="kategori" name="kategori" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Email : </label>
                                        <input type="email" name="email" id="email" class="form-control" />
                                    </div>
                                    <div class="form-group editpass">
                                        <label>Password : </label>
                                        <input type="password" name="password" id="password" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label  for="floatingTextarea">Level Akses: </label>
                                        <select class="form-control" aria-label=".form-select-lg example" id="level" name="level">
                                            <option>--Pilih Level--</option>
                                            @foreach (App\Models\User::all() as $users)
                                            <option value="{{ $users->level }}" id="level">{{ $users->level }}</option>
                                            @endforeach
                                            <!-- <option value="USERS">USERS</option>
                                            <option value="ADMIN">ADMIN</option>
                                            <option value="SUPER ADMIN">SUPER ADMIN</option> -->
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="floatingTextarea">Level Konsul: </label>
                                        <select class="form-control" aria-label=".form-select-lg example" id="is_admin" name="is_admin">
                                            <option selected>Pilih Salah Satu</option>
                                            @foreach (App\Models\User::all() as $users)
                                            <option value="{{ $users->is_admin }}" id="is_admin">{{ $users->is_admin }}</option>
                                            @endforeach
                                            <!-- <option value="0">User</option>
                                            <option value="1">Admin</option> -->
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="floatingTextarea">Verifikasi Anggota: </label>
                                        <select class="form-control" aria-label=".form-select-lg example" id="verifikasi" name="verifikasi">
                                            <option selected>Pilih Salah Satu</option>
                                            @foreach (App\Models\User::all() as $users)
                                            <option value="{{ $users->verifikasi }}" id="verifikasi">{{ $users->verifikasi }}</option>
                                            @endforeach
                                            <!-- <option value="0">Tidak Aktif</option>
                                            <option value="1">Aktif</option> -->
                                        </select>
                                    </div>
                                <div class="form-floating mb-3">
                                    <input type="file" name="foto" id="foto" class="form-control form-control-sm" accept="images-foto/*" onchange="readURL(this);" />
                                    <input type="hidden" name="hidden_image" id="hidden_image">
                                    <label for="floatingInput">Foto </label>
                                </div>
                                <div class="form-floating mb-3" name="tampilgambar" id="tampilgambar">
                                    <img name="tampilgambar" id="tampilgambar">
                                </div>
                                <input type="hidden" name="action" id="action" value="Add" />
                                <input type="hidden" name="hidden_id" id="hidden_id" />
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <input type="submit" name="action_button" id="action_button" value="Add" class="btn btn-info" />
                            </div>
                        </form>  
                        </div>
                    </div>
                </div>
 
                <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                    <div class="modal-content">
                    <form method="post" id="sample_form" class="form-horizontal">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabel">Confirmation</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <h4 align="center" style="margin:0;">Are you sure you want to remove this data?</h4>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" name="ok_button" id="ok_button" class="btn btn-danger">OK</button>
                        </div>
                    </form>  
                    </div>
                    </div>
                </div>
        </div>        
    </section>
</div>
<!-- Modal -->
<div class="modal fade" id="fModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <span id="detail_result"></span>
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Detail Lisensi Pengguna</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <h6><b>Data Pribadi</b></h6>
            <p><strong>Nama:</strong><span id="name-detail"></span></p>
            <p><strong>Tempat / Tanggal Lahir:</strong> <span id="lt_lahir-detail"></span> / <span id="tgl_lahir"></span></p>
            <p><strong>Jenis Kelamin:</strong> <span id="j_k-detail"></span></p>
            <p><strong>NIP / NIK:</strong> <span id="nip-detail"></span></p>
            <p><strong>No Handphone:</strong> <span id="no_telpn-detail"></span></p>
            <p><strong>Email:</strong> <span id="email-detail"></span></p>
            <p><strong>ID Anggota:</strong> <span id="id_anggota-detail"></span></p>
            <p><strong>Verifikasi Akun:</strong> <span id="verifikasi-detail"></span></p>
            <p><strong>Foto:</strong> <span id="tampil-gambar"></span></p>
            <h6><b>Pekerjaan</b></h6>
            <p><strong>Kategori Pekerjaan:</strong> <span id="kategori-detail"></span></p>
            <p><strong>NRK:</strong> <span id="nrk-detail"></span></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
        </div>
    </div>
</div>
 <script type="text/javascript">

    $(document).ready(function() {
    var table = $('.posting_datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('users.index') }}",
        columns: [
            {data: 'id_anggota', name: 'id_anggota'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'no_telpn', name: 'no_telpn'},
            {data: 'foto', name: 'foto', "render": function (data, type, row, meta) {
                    return '<img src="/images-foto/' + data + '" alt="' + data + '"height="100px" width="100px"/>';
                } },
            {data: 'verifikasi', name: 'verifikasi', orderable:true,
                render: function(data, type, row, meta){
                    if(row.verifikasi==0){
                    return `
                            <div class='btn-group mr-2'>
                              <button type='button' class='btn btn-danger btn-sm' style="width:50px;">Belum</button>
                            </div>
                    `
                    }
                    else{
                        return `
                            <div class='btn-group mr-2'>
                              <button type='button' class='unpublish btn btn-success btn-sm' style="width:50px;">Sudah</button>
                            </div>
                        `
                    }
                }},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
 
    $('#create_record').click(function(){
        $('.modal-title').text('Add New Record');
        $('#action_button').val('Add');
        $('#action').val('Add');
        $('#form_result').html('');
 
        $('#formModal').modal('show');
    });
 
    $('#sample_form').on('submit', function(event){
        event.preventDefault();
        var formData = new FormData($(this)[0]);
        var action_url = '';
 
        if($('#action').val() == 'Add')
        {
            action_url = "{{ route('users.store') }}";
        }
 
        if($('#action').val() == 'Edit')
        {
            action_url = "{{ route('users.update') }}";
        }
 
        $.ajax({
            type: 'POST',
            enctype: 'multipart/form-data',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: action_url,
            processData: false,  // Important!
            contentType: false,
            cache: false,
            // data:$(this).serialize(),
            data: formData,
            dataType: 'json',
            success: function(data) {
                console.log('success: '+data);
                var html = '';
                if(data.errors)
                {
                    html = '<div class="alert alert-danger">';
                    for(var count = 0; count < data.errors.length; count++)
                    {
                        html += '<p>' + data.errors[count] + '</p>';
                    }
                    html += '</div>';
                }
                if(data.success)
                {
                    html = '<div class="alert alert-success">' + data.success + '</div>';
                    $('#sample_form')[0].reset();
                    $('#posting_table').DataTable().ajax.reload();
                    window.location.reload();
                }
                $('#form_result').html(html);
            },
            error: function(data) {
                var errors = data.responseJSON;
                console.log(errors);
            }
        });
    });
 
    $(document).on('click', '.edit', function(event){
        event.preventDefault();
        // var formData = new FormData($(this)[0]); 
        // var SITEURL = '{{ URL::to('') }}';
        var id = $(this).attr('id'); alert(id);
        $('#form_result').html('');
 
         
 
        $.ajax({
            url :"/users/edit/"+id+"/",
            enctype: 'multipart/form-data',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
            // Important!
            processData: false,  
            contentType: false,
            cache: false,
            // data: formData,

            success:function(data)
            {
                console.log('success: '+data);
                $('#name').val(data.result.name);
                $('#nrk').val(data.result.nrk);
                $('#nip').val(data.result.nip);
                $('#no_ser_kar').val(data.result.no_ser_kar);
                $('#t_lahir').val(data.result.t_lahir);
                $('#tgl_lahir').val(data.result.tgl_lahir);
                $('#j_k').val(data.result.j_k);
                $('#pang').val(data.result.pang);
                $('#gol').val(data.result.gol);
                $('#tmt_pang').val(data.result.tmt_pang);
                $('#ting').val(data.result.ting);
                $('#tmt_ting').val(data.result.tmt_ting);
                $('#u_k').val(data.result.u_k);
                $('#inst').val(data.result.inst);
                $('#email').val(data.result.email);
                $('#level').val(data.result.level);
                $('#is_admin').val(data.result.is_admin);
                $('#verifikasi').val(data.result.verifikasi);
                $('#id_anggota').val(data.result.id_anggota);
                $('#no_telpn').val(data.result.no_telpn);
                $('#kategori').val(data.result.kategori);
                $('#tampilgambar').html(
                `<img src="/images-foto/${data.result.foto}" width="100" class="img-fluid img-thumbnail">`);
                $('#hidden_id').val(id);
                $('.modal-title').text('Edit Record');
                $('#action_button').val('Update');
                $('#action').val('Edit'); 
                $('.editpass').hide(); 
                $('#formModal').modal('show');
            },
            error: function(data) {
                var errors = data.responseJSON;
                console.log(errors);
            }
        })
    });
 
    var id;
 
    $(document).on('click', '.delete', function(){
        id = $(this).attr('id');
        $('#confirmModal').modal('show');
    });
 
    $('#ok_button').click(function(){
        $.ajax({
            url:"users/destroy/"+id,
            beforeSend:function(){
                $('#ok_button').text('Deleting...');
            },
            success:function(data)
            {
                setTimeout(function(){
                $('#confirmModal').modal('hide');
                $('#posting_table').DataTable().ajax.reload();
                alert('Data Deleted');
                }, 2000);
                window.location.reload();
            }
        })
    });

     // detail
     $(document).on('click', '.detailButton', function(event){
        event.preventDefault(); 
        var id = $(this).attr('id'); alert(id);
        $('#detail_result').html('');

        $.ajax({
            url :"/users/detail/"+id+"/",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
            processData: false,  
            contentType: false,
            cache: false,
            success:function(data)
            {
                
                $('#name-detail').text(data.name);
                $('#nrk-detail').text(data.nrk);
                $('#nip-detail').text(data.nip);
                $('#no_ser_kar-detail').text(data.no_ser_kar);
                $('#t_lahir-detail').text(data.t_lahir);
                $('#tgl_lahir-detail').text(data.tgl_lahir);
                $('#j_k-detail').text(data.j_k);
                $('#pang-detail').text(data.pang);
                $('#gol-detail').text(data.gol);
                $('#tmt_pang-detail').text(data.tmt_pang);
                $('#ting-detail').text(data.ting);
                $('#tmt_ting-detail').text(data.tmt_ting);
                $('#u_k-detail').text(data.u_k);
                $('#inst-detail').text(data.inst);
                $('#email-detail').text(data.email);
                $('#level-detail').text(data.level);
                $('#is_admin-detail').text(data.is_admin);
                $('#verifikasi-detail').text(data.verifikasi);
                $('#id_anggota-detail').text(data.id_anggota);
                $('#no_telpn-detail').text(data.no_telpn);
                $('#kategori-detail').text(data.kategori);
                $('#tampil-gambar').html(
                `<img src="/images-foto/${data.foto}" width="100" class="img-fluid img-thumbnail">`);
                $('.modal-title').text('Detail');
                $('#fModal').modal('show');

                // console.log(
                //     'desktop-id: '+data.desktop_id,
                //     'lisensi-id:'+ data.lisensi_id,
                //     'qtY:'+ data.qty,
                //      $('#user-id')
                //     );
                
            },
        })
    });
    
});
</script>
@endsection