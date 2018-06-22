@if(Auth::check())
@if (Auth::user()->is_likeing($item->id))

    {!! Form::open(['route' => 'item_user.dont_like', 'method' => 'delete']) !!}
        {!! Form::hidden('itemId', $item->id) !!}
        {!! Form::submit('Dont Like!', ['class' => 'btn btn-info']) !!}
    {!! Form::close() !!}
@else

    {!! Form::open(['route' => 'item_user.like']) !!}
        {!! Form::hidden('itemId', $item->id) !!}
        {!! Form::submit('Like it', ['class' => 'btn btn-primary']) !!}
    {!! Form::close() !!}
@endif
@endif