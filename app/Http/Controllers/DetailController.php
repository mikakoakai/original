<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Detail;

class DetailController extends Controller
{
     public function show($id)
    { 
        
         $items = Detail::find($id);
         
        
        return view('detail.show', [
            'items' => $items,
            ]);
}

}