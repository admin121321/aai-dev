<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KategoriPostingsController;

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
Route::get('/kategori-posting', [App\Http\Controllers\KategoriPostingsController::class, 'index'])->name('kategori-postings');
Route::post('/kategori-posting/cari/', [App\Http\Controllers\KategoriPostingsController::class, 'getKategoripostings'])->name('KategoriPostings.cari');
Route::post('/kategori-posting', [App\Http\Controllers\KategoriPostingsController::class, 'create'])->name('create-kategori-postings');
