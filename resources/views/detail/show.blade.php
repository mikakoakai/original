@extends('layouts.app')

@section('content')
    <h1>Detail Page</h1>
    @include('items.items', ['items' => $items])
    
    
@endsection