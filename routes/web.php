<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
})->middleware(['auth'])->name('home');

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Auth::routes();
// Home
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// Users
Route::get('/users', [App\Http\Controllers\UserController::class, 'index'])->name('users.index');
Route::post('/users/store', [App\Http\Controllers\UserController::class, 'store'])->name('users.store');
Route::get('/users/edit/{id}/', [App\Http\Controllers\UserController::class, 'edit']);
Route::post('/users/update', [App\Http\Controllers\UserController::class, 'update'])->name('users.update');
Route::get('/users/destroy/{id}/', [App\Http\Controllers\UserController::class, 'destroy']);
// Kategori
Route::get('/kategori-posting', [App\Http\Controllers\KategoriPostingsController::class, 'index'])->name('kategoriPostings.index');
Route::post('/kategori-posting/store/', [App\Http\Controllers\KategoriPostingsController::class, 'store'])->name('kategoriPostings.store');
Route::get('/kategori-posting/edit/{id}', [App\Http\Controllers\KategoriPostingsController::class, 'edit'])->name('kategoriPostings.edit');
Route::post('/kategori-posting/update', [App\Http\Controllers\KategoriPostingsController::class, 'update'])->name('kategoriPostings.update');
Route::get('/kategori-posting/destroy/{id}', [App\Http\Controllers\KategoriPostingsController::class, 'destroy'])->name('kategoriPostings.destroy');