@extends('layouts.backend-menu')

@section('title', 'All Tickets')
@section('content')
<div class="main-content">
    <section class="#">
        <div class="card">    
            <div class="card-header">
                <h3>List Posting</h3>
            </div>
        </div>
        <a href="{{ route('export-pdf') }}" class="btn btn-success mb-4">Export PDF</a>
        <a href="{{ route('export-excel') }}" class="btn btn-success mb-4">Export Excel</a>
            <!-- card-body -->
            <div class="card-header-action">
                <form>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                    <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                    </div>
                </div>
                </form>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                  @if ($tickets->isEmpty())
                        <p>There are currently no tickets.</p>
                    @else
                    <table class="table table-striped" id="table-2"> 
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
                            @endforeach
                            </tbody>
                    </table>
                </div>
                Jumlah Tiket : {{ $tickets->total() }} <br/>
                @endif
                <div class="card-footer text-right">
                    <nav class="d-inline-block">
                      <ul class="pagination mb-0">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1"><i class="fas fa-chevron-left">{{ $tickets->currentPage() }}</i></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#"></a>{{ $tickets->links() }}</li>
                        <li class="page-item">
                          <a class="page-link" href="#"><i class="fas fa-chevron-right">{{ $tickets->perPage() }}</i></a>
                        </li>
                      </ul>
                    </nav>
                </div>
            </div>
            <!-- card-body -->      
    </section>
</div>
@endsection