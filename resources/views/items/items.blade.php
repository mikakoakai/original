@if ($items)
    <div class="row">
        @foreach ($items as $item)
            <div class="item">
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center">
                            <img src="{{  url('/images/'.$item->image_url) }}" alt="" width=250px, height=200px>
                        </div>
                        <div class="panel-body">
                            <p class="item-title"><a href="#">{{ $item->name }}</a></p>
                            <div class="buttons text-center">
                                @include('items.like_button', ['item' => $item])
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endif
