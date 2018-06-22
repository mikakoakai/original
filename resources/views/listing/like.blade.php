@extends('layouts.app')

@section('content')
    <h1>My Like List</h1>
    @include('items.items', ['items' => $items])
    
    
@endsection