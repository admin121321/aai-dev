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
                                    <th>No Ticket</th>
                                    <th>Kategori</th>
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