@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12 col-md-offset-3">
            <div class="item">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        <img src="{{ $item->image_url }}" alt="">
                    </div>
                    <div class="panel-body">
                        <p class="item-title">{{ $item->name }}</p>
                        <div class="buttons text-center">
                            @if (Auth::check())
                                @include('items.like_button', ['item' => $item])
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="like-users">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        Likeしたユーザ
                    </div>
                    <div class="panel-body">
                        @foreach ($like_users as $user)
                            <a href="{{ route('users.show', $user->id) }}">{{ $user->name }}</a>
                        @endforeach
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection