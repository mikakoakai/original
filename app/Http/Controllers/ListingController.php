<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use App\Item;

class ListingController extends Controller
{
    public function like()
    {
        $items = \DB::table('item_user')
        ->join('items', 'item_user.item_id', '=', 'items.id')
        ->where('type', 'like')
        ->where('item_user.user_id',\Auth::user()->id)
        ->take(10)->get();
/*
         echo \DB::table('item_user')
        ->join('items', 'item_user.item_id', '=', 'items.id')
        ->where('type', 'like')
        ->where('item_user.user_id',\Auth::user()->id)
        ->toSql();*/

        return view('listing.like', [
            'items' => $items,
        ]);
    }
    }

