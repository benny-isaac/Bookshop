<?php

namespace App\Http\Controllers;
use App\Models\Book;
use App\Models\Sale;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;


class orderController extends Controller
{
    //
    public function Memo(){
        return view('cash-memo');
    }
    public function processOrder(Request $request)
{
    $validated = $request->validate([
        'email' => 'required|email',
        'address' => 'required|string',
        'zip' => 'required|string',
        'date' => 'required|date',
        'name' => 'required|string',
        'card_number' => 'required|string',
        'expiration' => 'required|string',
        'cvv' => 'required|string',
        'store' => 'required|string',
        'title' => 'required|string',
        'price' => 'required|numeric',
        'author' => 'required|string',
        'quantity' => 'required|integer',
        'totalPrice' => 'required|numeric',
        'genre'=>'required|string',
    ]);

    // // Save the sale record
    // Save the order to the database
    $sale = Sale::create([
        'store' => $validated['store'],
        'title' => $validated['title'],
        'author' => $validated['author'],
        'price' => $validated['price'],
        'quantity' => $validated['quantity'],
        'totalPrice' => $validated['totalPrice'],
        'email' => $validated['email'],
        'address' => $validated['address'],
        'zip' => $validated['zip'],
        'genre'=>$validated['genre'],
        'date' => $validated['date'],
        'name' => $validated['name'],
        'card_num' => $validated['card_number'],
        'expiration' => $validated['expiration'],
        'cvv' => $validated['cvv'],
    ]);

    // Generate PDF for cash memo
    $pdf = PDF::loadView('cash-memo', compact('sale'));
    // Save or send PDF (optional)
    $filename = $sale->name . $sale->id . '.'. 'pdf';
    $pdf->save(public_path('uploads/memos/' . $filename));
    return $pdf->stream($filename);  // The PDF will be displayed in the browser
}
}
