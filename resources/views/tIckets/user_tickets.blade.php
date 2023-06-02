@extends('layouts.backend-menu')

@section('content')
<!-- Main Content -->
<div class="main-content">
    <section class="#">
        <div class="card">    
            <div class="card-header">
                <h3>List Ticket Konsul</h3>
            </div>
        </div>
        <div class="section-body">
        <!-- card-body -->
        <div class="row">
            <div class="col-12 table-responsive">
                <div class="panel panel-default">
                    <div class="panel-body">
                        @if($tickets->isEmpty())
                            <p>You have not created any tickets.</p>
                        @else
                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>No Ticket</th>
                                        <th>Kategori</th>
                                        <th>Judul</th>
                                        <th>Status</th>
                                        <th>Update Terakhir</th>
                                        <th>Tindakan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($tickets as $key =>$ticket)
                                        <tr>
                                            <td>{{ ($tickets->currentpage()-1) * $tickets->perpage() + $key + 1 }}</td>
                                            <td>{{ $ticket->ticket_id }}</td>
                                            <td>
                                                {{ $ticket->category->nama }}
                                            </td>
                                            <td>
                                                   {{ $ticket->title }}
                                            </td>
                                            <td>
                                                @if($ticket->status == "Open")
                                                    <button class="btn btn-danger">{{ $ticket->status }}</button>
                                                @else
                                                    <button class="btn btn-success">{{ $ticket->status }}</button>
                                                @endif
                                            </td>
                                            <td>
                                                {{ $ticket->updated_at }}
                                            </td>
                                            <td><form action="{{ url('tickets/' . $ticket->ticket_id) }}"><button class="btn btn-primary">View</button></form></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            {{ $tickets->render() }}
                        @endif
                        <div class="col-md-12 text-center">
							<ul class="pagination">
							{{ $tickets->links() }}
							</ul>
							<div class="pagination-help-text">
							Halaman : {{ $tickets->currentPage() }} &mdash; 
							Data Per Halaman : {{ $tickets->perPage() }}
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- card-body -->      
 </section>
</div>

@endsection