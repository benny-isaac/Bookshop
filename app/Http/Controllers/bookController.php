<?php

namespace App\Http\Controllers;
use App\Models\Book;
use App\Models\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class bookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $books = Book::all();
        $stores = Store::all();
        return view('books.index',compact('books','stores'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $stores = Store::all();
        return view('books.create',compact('stores'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    // Validate the input data
    $request->validate([
        'title' => 'required|string|max:255',
        'author' => 'required|string|max:255',
        'description' => 'nullable|string',
        'genre' => 'nullable|string|max:255',
        'price' => 'required|numeric|min:0',
        'image' => 'required|image|mimes:jpg,jpeg,png,webp|max:4048',
        'store' => 'required|string|max:255',
    ]);

    $filePath = null; // Default value for the file path

    // Handle the file upload
    if ($request->hasFile('image')) {
        $timestamp = time();
        $extension = $request->file('image')->getClientOriginalExtension();
        $filename = $timestamp . '_' . uniqid() . '.' . $extension;
        $filePath = 'books/' . $filename;
        $request->file('image')->storeAs('books', $filename, 'public');
    }

    // Create a new book entry in the database
    Book::create([
        'title' => $request->input('title'),
        'author' => $request->input('author'),
        'description' => $request->input('description'),
        'genre' => $request->input('genre'),
        'price' => $request->input('price'),
        'file_path' => $filePath,
        'store' => $request->input('store'),
    ]);

    // Redirect back with a success message
    return redirect()->route('books.index')->with('success', 'Book added successfully!');
}

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Book $book)
    {
        //
        $stores = Store::all();
        return view('books.edit',compact('book','stores'));
    }

    /**
     * Update the specified resource in storage.
     */
    
     public function update(Request $request, string $id)
{
    // Validate the input data
    $request->validate([
        'title' => 'required|string|max:255',
        'author' => 'required|string|max:255',
        'description' => 'nullable|string',
        'genre' => 'nullable|string|max:255',
        'price' => 'nullable|numeric|min:0',
        'image' => 'nullable|image|mimes:jpg,jpeg,png,webp|max:4048', // Made optional in case no new image is uploaded
        'store' => 'required|string|max:255',
    ]);

    // Retrieve the book by ID
    $book = Book::findOrFail($id);
    $filePath = $book->file_path; // Default to current image path

    // Handle the image upload if a new file is provided
    if ($request->hasFile('image')) {
        // Delete the old image file if it exists
        if ($book->file_path && Storage::disk('public')->exists($book->file_path)) {
            Storage::disk('public')->delete($book->file_path);
        }

        // Store the new image
        $filePath = $request->file('image')->store('books', 'public');
    }

    // Update the book data
    $book->update([
        'title' => $request->input('title'),
        'author' => $request->input('author'),
        'description' => $request->input('description'),
        'genre' => $request->input('genre'),
        'price' => $request->input('price'),
        'file_path' => $filePath,
        'store' => $request->input('store'),
    ]);

    // Redirect back with a success message
    return redirect()->route('books.index')->with('success', 'Book updated successfully!');
}


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
