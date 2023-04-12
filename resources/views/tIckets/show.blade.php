@extends('layouts.backend-menu')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
        <h1>Detail Tiket Yang Dibuat</h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
            <div class="breadcrumb-item">Activities</div>
        </div>
        </div>
        <!-- Detail Message -->
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="">
                            <p>Judul : {{ $ticket->title }}</p>
                        </span>
                        <span class="">
                            <p>No Ticket : {{ $ticket->ticket_id }}</p>
                        </span>
                    </div>

                    <div class="panel-body">
                        @if (session('status'))
                            <div class="alert alert-success">
                                <p>Status : {{ session('status') }}</p>
                            </div>
                        @endif

                        <div class="ticket-info">
                            <p>Isi Pesan   : {{ $ticket->message }}</p>
                            <p>Kategori    : {{ $ticket->category->nama }}</p>
                            <p>
                                @if ($ticket->status === 'Open')
                                    Status: <span class="label label-success">{{ $ticket->status }}</span>
                                @else
                                    Status: <span class="label label-danger">{{ $ticket->status }}</span>
                                @endif
                            </p>
                            <p>Created on: {{ $ticket->created_at->diffForHumans() }}</p>
                        </div>

                    </div>
                </div>

                <hr>

                @include('tickets.comments')

                <hr>

                @include('tickets.reply')

            </div>
        </div>
        <!-- end Detail -->
    </section>
</div>
@endsection