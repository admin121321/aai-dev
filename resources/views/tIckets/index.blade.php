@extends('layouts.backend-menu')

@section('title', 'All Tickets')
@section('content')
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
                  @if ($tickets->isEmpty())
                        <p>There are currently no tickets.</p>
                    @else
                    <table class="table text-start align-middle table-bordered table-hover mb-0 posting_datatable"> 
                    <thead>
                            <tr>
                                <th>Category</th>
                                <th>Title</th>
                                <th>ID User</th>
                                <th>Status</th>
                                <th>Last Updated</th>
                                <th style="text-align:center" colspan="2">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($tickets as $ticket)
                                <tr>
                                    <td>
                                        {{ $ticket->category->name }}
                                    </td>
                                    <td>
                                        <a href="{{ url('tickets/'. $ticket->ticket_id) }}">
                                            #{{ $ticket->ticket_id }} - {{ $ticket->title }}
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{ url('tickets/'. $ticket->ticket_id) }}">
                                            {{ $ticket->user_id }}
                                        </a>
                                    </td>
                                    <td>
                                        @if ($ticket->status === 'Open')
                                            <span class="label label-success">{{ $ticket->status }}</span>
                                        @else
                                            <span class="label label-danger">{{ $ticket->status }}</span>
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
                    {{ $tickets->render() }}
                    @endif
                </div>
            </div>
            <!-- card-body -->      
    </section>
</div>
@endsection