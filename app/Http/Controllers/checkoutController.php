<?php

namespace App\Http\Controllers;
use App\Models\Book;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;


class checkoutController extends Controller
{
    //
    public function checkout(Request $request){
        $request->validate([
            'book_id' => 'required|exists:books,id',
            'quantity' => 'required|integer|min:1',
        ]);
        // Retrieve the book
        $book = Book::findOrFail($request->book_id);

        // Calculate the total price
        $quantity = $request->quantity;
        $totalPrice = $book->price * $quantity;

        // Pass data to the checkout view
        return view('checkout', compact('book', 'quantity', 'totalPrice'));
    }

    
}
