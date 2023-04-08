@extends('layouts.backend-menu')

@section('content')
<div class="main-content">
    <section class="#">
        <div class="section-header">
            <br />
        </div>
        <div class="section-body">
        <!-- card-body -->
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-ticket"> My Tickets</i>
                    </div>

                    <div class="panel-body">
                        @if($tickets->isEmpty())
                            <p>You have not created any tickets.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No Ticket</th>
                                        <th>Kategori</th>
                                        <th>Judul</th>
                                        <th>Status</th>
                                        <th>Update Terakhir</th>
                                        <th>Tindakan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($tickets as $ticket)
                                        <tr>
                                            <td>{{ $ticket->ticket_id }}</td>
                                            <td>
                                                {{ $ticket->category->name }}
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
                    </div>
                </div>
            </div>
        </div>
        <!-- card-body -->      
 </section>
</div>

@endsection