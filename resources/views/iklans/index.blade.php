@extends('layouts.backend-menu')
@section('content')

<div class="main-content">
    <section class="#">
        <div class="card">    
            <div class="card-header">
                <h3>List Iklan</h3>
            </div>
        </div>
        <div align="right">
            <button type="button" name="create_record" id="create_record" class="btn btn-success"> <i class="bi bi-plus-square"></i> Add</button>
        </div>
        <div class="section-body">
            <!-- card-body -->
            <div class="row">
                <div class="col-12 table-responsive">
                <br />
                    <table class="table text-start align-middle table-bordered table-hover mb-0 hal_datatable"> 
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama Pembuat</th>
                                <th>Nama Iklan</th>
                                <th>Waktu Pemasangan</th>
                                <th>Waktu Selesai</th>
                                <th>Gambar</th>
                                <!-- <th>Deskripsi</th> -->
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
                        <div class="modal-content">
                        <form method="post" id="sample_form" enctype="multipart/form-data" class="form-horizontal">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalLabel">Tambah Halaman</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
                            </div>
                            <div class="modal-body">
                                <span id="form_result"></span>
                                <div class="form-floating mb-3" hidden>
                                    <input type="text" name="id_user" id="id_user" value="{{ Auth::user()->id }}" class="form-control"/>
                                    <label for="floatingInput">ID User </label>
                                </div>
                                <div class="form-group">
                                    <label>Judul Iklan: </label>
                                    <input type="text" name="judul" id="judul" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Mulai Pemasangan: </label>
                                    <input type="date" name="mulai_pemasangan" id="mulai_pemasangan" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Akhir Pemasangan: </label>
                                    <input type="date" name="akhir_pemasangan" id="akhir_pemasangan" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Link Media: </label>
                                    <input type="text" name="link_media" id="link_media" class="form-control" />
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="file" name="gambar" id="gambar" class="form-control form-control-sm" accept="images/*" onchange="readURL(this);" />
                                    <!-- <input type="text" name="gambar" id="gambar" class="form-control" /> -->
                                    <input type="hidden" name="hidden_image" id="hidden_image">
                                    <label for="floatingInput">Gambar Iklan</label>
                                </div>
                                <div class="form-floating mb-3" name="tampilgambar" id="tampilgambar">
                                    <img name="tampilgambar" id="tampilgambar">
                                </div>
                                <div class="form-floating">
                                    <textarea type="text" class="form-control" name="deskripsi" id="deskripsi"/></textarea>
                                    <label for="floatingInput">Deskripsi </label>
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
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
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
<script>
    tinymce.init({
      selector: '#deskripsi',
      menubar: true,
      toolbar: true,
      inline: false,
    });
  </script>
<script type="text/javascript">
$(document).ready(function() {
    var table = $('.hal_datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('iklans.index') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'id_user', name: 'id_user'},
            {data: 'judul', name: 'judul'},
            {data: 'mulai_pemasangan', name: 'mulai_pemasangan'},
            {data: 'akhir_pemasangan', name: 'akhir_pemasangan'},
            {data: 'gambar', name: 'gambar', "render": function (data, type, row, meta) {
                    return '<img src="/images-iklan/' + data + '" alt="' + data + '"height="100px" width="100px"/>';
                } },
            // {data: 'deskripsi', name: 'deskripsi'},
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
            action_url = "{{ route('iklans.store') }}";
        }
 
        if($('#action').val() == 'Edit')
        {
            action_url = "{{ route('iklans.update') }}";
        }
 
        $.ajax({
            type: 'post',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url: action_url,
            data:$(this).serialize(),
            dataType: 'json',
            processData: false,  // Important!
            contentType: false,
            cache: false,
            data: formData,
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
                    $('#hal_datatable').DataTable().ajax.reload();
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
            url :"/iklan/edit/"+id+"/",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
            processData: false,  
            contentType: false,
            cache: false,
            success:function(data)
            {
                console.log('success: '+data);
                tinyMCE.activeEditor.setContent(data.result.deskripsi);
                $('#id_user').val(data.result.id_user);
                $('#judul').val(data.result.judul);
                $('#mulai_pemasangan').val(data.result.mulai_pemasangan);
                $('#akhir_pemasangan').val(data.result.akhir_pemasangan);
                $('#link_media').val(data.result.link_media);
                $('#tampilgambar').html(
                `<img src="/images-iklan/${data.result.gambar}" width="100" class="img-fluid img-thumbnail">`);
                $('#deskripsi').val(data.result.deskripsi);
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
            url:"iklan/destroy/"+id,
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
            }
        })
    });
});
</script>
@endsection