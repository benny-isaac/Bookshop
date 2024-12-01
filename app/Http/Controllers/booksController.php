<?php

namespace App\Http\Controllers;
use App\Models\Book;
use App\Models\Store;
use Illuminate\Http\Request;

class booksController extends Controller
{
    //
    public function Books(){
        $books = Book::all();
        $stores = Store::all();
        return view('home',compact('books','stores'));
    }
}
