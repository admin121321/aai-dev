@extends('layouts.backend-menu')

@section('title', 'All Tickets')
@section('content')
<div class="main-content">
    <section class="#">
        <div class="card">    
            <div class="card-header">
                <h3>List Ticket Konsul</h3>
            </div>
        </div>
        <a href="{{ route('export-pdf') }}" class="btn btn-success mb-4">Export PDF</a>
        <a href="{{ route('export-excel') }}" class="btn btn-success mb-4">Export Excel</a>
        <div class="section-body">
            <!-- card-body -->
            <div class="row">
                <div class="col-12 table-responsive">
                <br />
                  @if ($tickets->isEmpty())
                        <p>There are currently no tickets.</p>
                    @else
                    <table class="table table-striped"  id="table-note"> 
                            <thead>
                                <tr>
                                    <th>No Ticket</th>
                                    <th>Kategori</th>
                                    <th>Advokat</th>
                                    <th>Pemohon</th>
                                    <th>Judul</th>
                                    <th>Status</th>
                                    <th>Update Terakhir</th>
                                    <th>Tindakan</th>
                                </tr>
                            </thead>
                            <tbody>
                        
                                @foreach ($tickets as $ticket)
                                        @if( Auth::user()->id === $ticket->category->id_useri)
                                        <tr>
                                            <td>{{ $ticket->ticket_id }}</td>
                                            <td>{{ $ticket->category->nama }}</td>
                                            <td>{{ $ticket->category->id_useri }}</td>
                                            <td>{{ $ticket->user->name }}</td>
                                            <td>{{ $ticket->title }}</td>
                                            <td>
                                                @if($ticket->status == "Open")
                                                    <button class="btn btn-danger">{{ $ticket->status }}</button>
                                                @else
                                                    <button class="btn btn-success">{{ $ticket->status }}</button>
                                                @endif
                                            </td>
                                            <td>{{ $ticket->updated_at }}</td>
                                            <td>
                                                @if($ticket->status === 'Open')
                                                    <a href="{{ url('tickets/' . $ticket->ticket_id) }}" class="btn btn-primary">Comment</a>

                                                    <form action="{{ url('admin/close_ticket/' . $ticket->ticket_id) }}" method="POST">
                                                        {!! csrf_field() !!}
                                                        <button type="submit" class="btn btn-danger">Close</button>
                                                    </form>
                                                @endif
                                            </td>
                                        </tr>
                                        @endif
                            @endforeach
                            </tbody>
                    </table>
                    {{ $tickets->render() }}
                    @endif
                </div>
            </div>
            <!-- card-body -->      
    </section>
</div>
<script>
  $("#table-note").dataTable({
    "columnDefs": [
      { "sortable": true, "targets": [0] },
      { "width": "15%", "targets": 0 },
      { "width": "70%", "targets": 1 },
      // { "width": "15%", "targets": 2 },
      // { "width": "20%", "targets": 3 },
      { "width": "15%", "targets": 2 },
    ]
  });
</script>
@endsection