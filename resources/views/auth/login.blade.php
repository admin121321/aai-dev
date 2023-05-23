@extends('layouts.welcome-app')
@section('content')
@if(session()->get('success'))
          <script>
            window.alert('{{ session()->get('success') }}') ;
          </script>
@endif
@endsection
