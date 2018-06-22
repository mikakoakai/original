<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use App\Item;

class ItemUserController extends Controller
{
    public function like()
    {
        var_dump($_POST);
    
        $item = Item::find($_POST['itemId']);
        \Auth::user()->like($item->id);
        return redirect()->back();
        //var_dump($item);
        //foreach($item as $k => $v) {
        //    echo $k .  " " . $v . "<br>";
    //    }
    /*
        $itemCode = request()->itemCode;

        // Search items from "itemCode"
        $client = new \RakutenRws_Client();
        $client->setApplicationId(env('RAKUTEN_APPLICATION_ID'));
        $rws_response = $client->execute('IchibaItemSearch', [
            'itemCode' => $itemCode,
        ]);
        $rws_item = $rws_response->getData()['Items'][0]['Item'];

        // create Item, or get Item if an item is found
        $item = Item::firstOrCreate([
            'code' => $rws_item['itemCode'],
            'name' => $rws_item['itemName'],
            'url' => $rws_item['itemUrl'],
            // remove "?_ex=128x128" because its size is defined
            'image_url' => str_replace('?_ex=128x128', '', $rws_item['mediumImageUrls'][0]['imageUrl']),
        ]);

        \Auth::user()->like($item->id);

        return redirect()->back();
        */
    }

    public function dont_like()
    {
        $itemId = request()->itemId;

        if (\Auth::user()->is_likeing($itemId)) {
            \Auth::user()->dont_like($itemId);
        }
        return redirect()->back();
    }
}