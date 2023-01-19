@extends('layouts.app-menu')
@section('content')
<!-- Recent Sintring Start -->
 <div class="container-fluid pt-4 px-4">
                <div class="bg-light text-center rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0"><b>List Posting</b></h6>
                        <a href="">Tampikan Semua</a>
                    </div>
                    <!-- card-body -->
                    <div class="row">
                        <div class="col-12 table-responsive">
                        <div align="right">
                            <button type="button" name="create_record" id="create_record" class="btn btn-success"> <i class="bi bi-plus-square"></i> Add</button>
                        </div>
                        <br />
                            <table class="table text-start align-middle table-bordered table-hover mb-0 posting_datatable"> 
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>ID User</th>
                                        <th>Kategori</th>
                                        <th>Judul</th>
                                        <th>Gambar</th>
                                        <th>Deskripsi</th>
                                        <th width="180px">Action</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                    <!-- card-body -->
                </div>
                 <!-- Modal -->
                 <div class="modal fade" id="formModal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                        <form method="post" id="sample_form" enctype="multipart/form-data" class="form-horizontal">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalLabel">Tambah Posting</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <span id="form_result"></span>
                                <div class="form-group">
                                    <label>ID user: </label>
                                    <input type="text" name="id_user" id="id_user" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>ID Kategori: </label>
                                    <select class="form-control" id="id_kategori" name="id_kategori">
                                        <option>--Pilih Unit Kerja--</option>
                                        @foreach(App\Models\KategoriPosting::all() as $kategori)
                                        <option value="{{ $kategori->id}}" id="id_kategori">{{ $kategori->nama_kategori }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Judul: </label>
                                    <input type="text" name="judul" id="judul" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Gambar: </label>
                                    <input type="text" name="gambar" id="gambar" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Deskripsi: </label>
                                    <textarea type="text" name="deskripsi" id="deskripsi" rows="5" /></textarea>
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
 <script>
    tinymce.init({
      selector: 'textarea',
      plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss',
      toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name',
      mergetags_list: [
        { value: 'First.Name', title: 'First Name' },
        { value: 'Email', title: 'Email' },
      ]
    });
  </script>

 <script type="text/javascript">

    $(document).ready(function() {
    var table = $('.posting_datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('postings.index') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'id_user', name: 'id_user'},
            {data: 'id_kategori', name: 'id_kategori'},
            {data: 'judul', name: 'judul'},
            {data: 'gambar', name: 'gambar'},
            {data: 'deskripsi', name: 'deskripsi'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });

    $(document).ready(function() {
        $(document).on('change', '.kategoriPost', function() {
            var id =  $('.kategoriPost').val();     // get id the value from the select
            $('.id').val(id);   // set the textbox value

            // if you want the selected text instead of the value
            // var air_text = $('.aircraftsName option:selected').text(); 
        });
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
            action_url = "{{ route('postings.store') }}";
        }
 
        if($('#action').val() == 'Edit')
        {
            action_url = "{{ route('postings.update') }}";
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
                    $('#posting_table').DataTable().ajax.reload();
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
            url :"/posting/edit/"+id+"/",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
            success:function(data)
            {
                console.log('success: '+data);
                $('#id_user').val(data.result.id_user);
                $('#id_kategori').val(data.result.id_kategori);
                $('#judul').val(data.result.judul);
                $('#gambar').val(data.result.gambar);
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
            url:"posting/destroy/"+id,
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