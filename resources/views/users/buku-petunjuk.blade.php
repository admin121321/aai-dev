@extends('layouts.backend-menu')
@section('content')

<div class="main-content">
    <section class="">
        <div class="card">    
            <div class="card-header">
                <h3>Buku Petunjuk</h3>
            </div>
        </div>
        <div class="card card-body">
            <embed type="application/pdf" src="{{ asset('themes-frontend/pdf/buku-petunjuk.pdf') }}" width="300" height="500"></embed>
        </div>
    </section>
</div>
@endsection