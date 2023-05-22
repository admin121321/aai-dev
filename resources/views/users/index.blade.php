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
                    <div class="row">
                        <div class="col-12 table-responsive">
                        <br />
                            <table class="table table-striped table-bordered user_datatable"> 
                                <thead>
                                    <tr>
                                        <th>ID Anggota</th>
                                        <th>Nama</th>
                                        <th>Verifikasi</th>
                                        <th>Email</th>
                                        <th width="180px">Action</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                
                    <div class="modal fade" id="formModal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <form method="post" id="sample_form" class="form-horizontal">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel">Add New Record</h5>
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
                                        <input id="t_lahir" type="text" name="t_lahir" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Tgl Lahir : </label>
                                        <input id="tgl_lahir" type="text" name="tgl_lahir" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Jenis Kelamin : </label>
                                        <input id="j_k" type="text" name="j_k" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>ID Anggota : </label>
                                        <input type="text" name="id_anggota" id="id_anggota" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label>NRK : </label>
                                        <input id="nrk" type="text" name="nrk" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>NIP : </label>
                                        <input id="nip" type="text" name="nip" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>No Seri Karpeg : </label>
                                        <input id="no_ser_kar" type="text" name="no_ser_kar" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Pangkat : </label>
                                        <input id="pang" type="text" name="pang" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Golongan : </label>
                                        <input id="gol" type="text" name="gol" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>TMT Pangkat : </label>
                                        <input id="tmt_pang" type="text" name="tmt_pang" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Tingkat : </label>
                                        <input id="ting" type="text" name="ting" class="form-control">
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
                                        <input id="no_telpn" type="no_telpn" name="no_telpn" class="form-control">
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
          </div>
    </section>
</div>
<script type="text/javascript">
$(document).ready(function() {
    var table = $('.user_datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('users.index') }}",
        columns: [
            {data: 'id_anggota', name: 'id_anggota'},
            {data: 'name', name: 'name'},
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
            {data: 'email', name: 'email'},
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
            type: 'post',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: action_url,
            data:$(this).serialize(),
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
                    $('#user_table').DataTable().ajax.reload();
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
        var id = $(this).attr('id'); alert(id);
        $('#form_result').html('');
 
         
 
        $.ajax({
            url :"/users/edit/"+id+"/",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
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
 
    var user_id;
 
    $(document).on('click', '.delete', function(){
        user_id = $(this).attr('id');
        $('#confirmModal').modal('show');
    });
 
    $('#ok_button').click(function(){
        $.ajax({
            url:"users/destroy/"+user_id,
            beforeSend:function(){
                $('#ok_button').text('Deleting...');
            },
            success:function(data)
            {
                setTimeout(function(){
                $('#confirmModal').modal('hide');
                $('#user_table').DataTable().ajax.reload();
                alert('Data Deleted');
                }, 2000);
                window.location.reload();
            }
        })
    });
});
</script>
@endsection