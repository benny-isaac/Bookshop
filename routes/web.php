<?php

use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\storeController;
use App\Http\Controllers\bookController;
use App\Http\Controllers\booksController;
use App\Http\Controllers\detailController;
use App\Http\Controllers\checkoutController;
use App\Http\Controllers\orderController;


Route::post('log-in', [LoginController::class, 'Login'])->name('log-in');
Route::get('dashboard', [DashboardController::class, 'Dashboard'])->middleware(['auth', 'verified'])->name('dashboard');
Route::resource('stores', storeController::class)->middleware(['auth', 'verified']);
Route::resource('books', bookController::class)->middleware(['auth', 'verified']);
Route::get('/', [booksController::class, 'Books'])->name('home');
Route::get('shop-detail/{id}', [detailController::class, 'Details'])->name('shop-detail');
// Route::get('checkout',[checkoutController::class, 'checkoutView'])->name('checkout');
Route::post('checkout', [checkoutController::class, 'checkout'])->name('checkout');
Route::post('processOrder', [orderController::class, 'processOrder'])->name('processOrder');
Route::get('cash-memo', [orderController::class, 'Memo'])->name('cash-momo');
Route::get('performance', [DashboardController::class, 'analyze'])->name('performance');
// Route::get('dashboard/analyze/{store}', [DashboardController::class, 'analysis'])->name('dashboard.analysis');



Route::get('/about', function () {
    return view('about');
})->name('about');

// Route::get('cash-memo', function () {
//     return view('cash-memo');
// })->name('cash-memo');

Route::get('login', function () {
    return view('login');
})->name('login');

// Route::group(['middleware' => 'auth'], function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     });
// });

Route::post('/logout', function () {
    Auth::logout();
    return redirect('/login')->with('success', 'You are logged out.');
})->name('logout');