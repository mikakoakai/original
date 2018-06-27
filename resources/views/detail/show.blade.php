@extends('layouts.app')

@section('content')
<div style ="text-align:center">
    <h1>Detail Page</h1>
     <div class="item">
         <div style ="text-align:center">
        
            <div class="well well-lg">
                <div class="panel-heading text-center">
                    <img src="{{  url('/images/'.$item->image_url) }}" alt="" width=500px, height=450px>
                </div>
                <div class="panel-body">
                    <h3 class="item-title">{!! link_to_route('detail.show', $item->name, ['id' => $item->id]) !!}</h3>
                    <div class="buttons text-center">
                        @include('items.like_button', ['item' => $item])
                    </div>
                    <div>
                        <br>
                <h3>{{$item->message}}</h3>
                </div>
                </div>
            </div>
        </div>
        </div>
        </div>

    </div>
@endsection