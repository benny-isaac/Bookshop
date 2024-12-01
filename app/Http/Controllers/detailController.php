<?php

namespace App\Http\Controllers;
use App\Models\Book;
use Illuminate\Http\Request;

class detailController extends Controller
{
    //
    public function Details($id){
        $book = Book::find($id);
        return view('shop-detail',compact('book'));
    }
}
