<?php

namespace App\Http\Controllers;
use App\Models\Store;
use Illuminate\Http\Request;

class storeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        //
        $stores = Store::all();
        $total = Store::count();
        return view('stores.index',compact('stores','total'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('stores.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Store $store, Request $request)
    {
        //
        $validated = $request->validate([
            'store' => 'required|string',
            'location'=> 'required|string',
        ]);
        Store::create($validated);
        return redirect()->route('stores.index')->with('success', 'New Store Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $store = Store::findOrFail($id);
        return view('stores.index', compact('store'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Store $store)
    {
        //
        return view('stores.edit',compact('store'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Store $store, Request $request)
    {
        //
        $validated = $request->validate([
            'store' => 'required|string',
            'location'=> 'required|string',
        ]);

        $store->store = $validated['store'];
        $store->location=$validated['location'];
        $store->save();
        return redirect()->route('stores.index')->with('success', 'updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
