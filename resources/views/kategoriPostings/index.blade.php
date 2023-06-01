@extends('layouts.backend-menu')
@section('content')

<div class="main-content">
    <section class="#">
        <div class="card">    
            <div class="card-header">
                <h3>List Kategori Posting</h3>
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
                    <table class="table text-start align-middle table-bordered table-hover mb-0 kategori_datatable"> 
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama Kategori</th>
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
                    <div class="modal-dialog">
                        <div class="modal-content">
                        <form method="post" id="sample_form" class="form-horizontal">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalLabel">Tambah Kategori</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
                            </div>
                            <div class="modal-body">
                                <span id="form_result"></span>
                                <div class="form-group">
                                    <label>Name Kategori: </label>
                                    <input type="text" name="nama_kategori" id="nama_kategori" class="form-control" />
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

<script type="text/javascript">
$(document).ready(function() {
    var table = $('.kategori_datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('kategoriPostings.index') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'nama_kategori', name: 'nama_kategori'},
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
            action_url = "{{ route('kategoriPostings.store') }}";
        }
 
        if($('#action').val() == 'Edit')
        {
            action_url = "{{ route('kategoriPostings.update') }}";
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
                    $('#kategori_datatable').DataTable().ajax.reload();
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
            url :"/kategori-posting/edit/"+id+"/",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType:"json",
            success:function(data)
            {
                console.log('success: '+data);
                $('#nama_kategori').val(data.result.nama_kategori);
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
            url:"kategori-posting/destroy/"+id,
            beforeSend:function(){
                $('#ok_button').text('Deleting...');
            },
            success:function(data)
            {
                setTimeout(function(){
                $('#confirmModal').modal('hide');
                $('#kategori_table').DataTable().ajax.reload();
                alert('Data Deleted');
                }, 2000);
            }
        })
    });
});
</script>
@endsection