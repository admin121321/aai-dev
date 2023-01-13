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
// Kategori Posting
Route::get('/kategori-posting', [App\Http\Controllers\KategoriPostingsController::class, 'index'])->name('kategoriPostings.index');
Route::post('/kategori-posting/store/', [App\Http\Controllers\KategoriPostingsController::class, 'store'])->name('kategoriPostings.store');
Route::get('/kategori-posting/edit/{id}', [App\Http\Controllers\KategoriPostingsController::class, 'edit'])->name('kategoriPostings.edit');
Route::post('/kategori-posting/update', [App\Http\Controllers\KategoriPostingsController::class, 'update'])->name('kategoriPostings.update');
Route::get('/kategori-posting/destroy/{id}', [App\Http\Controllers\KategoriPostingsController::class, 'destroy'])->name('kategoriPostings.destroy');
// Posting
Route::get('/posting', [App\Http\Controllers\PostingsController::class, 'index'])->name('postings.index');
Route::post('/posting/store/', [App\Http\Controllers\PostingsController::class, 'store'])->name('postings.store');
Route::get('/posting/edit/{id}', [App\Http\Controllers\PostingsController::class, 'edit'])->name('postings.edit');
Route::post('/posting/update', [App\Http\Controllers\PostingsController::class, 'update'])->name('postings.update');
Route::get('/posting/destroy/{id}', [App\Http\Controllers\PostingsController::class, 'destroy'])->name('postings.destroy');
// Kategori Halaman
Route::get('/kategori-halaman', [App\Http\Controllers\KategoriHalamansController::class, 'index'])->name('kategoriHalamans.index');
Route::post('/kategori-halaman/store/', [App\Http\Controllers\KategoriHalamansController::class, 'store'])->name('kategoriHalamans.store');
Route::get('/kategori-halaman/edit/{id}', [App\Http\Controllers\KategoriHalamansController::class, 'edit'])->name('kategoriHalamans.edit');
Route::post('/kategori-halaman/update', [App\Http\Controllers\KategoriHalamansController::class, 'update'])->name('kategoriHalamans.update');
Route::get('/kategori-halaman/destroy/{id}', [App\Http\Controllers\KategoriHalamansController::class, 'destroy'])->name('kategoriHalamans.destroy');
//Halaman
Route::get('/halaman', [App\Http\Controllers\HalamansController::class, 'index'])->name('halamans.index');
Route::post('/halaman/store/', [App\Http\Controllers\HalamansController::class, 'store'])->name('halamans.store');
Route::get('/halaman/edit/{id}', [App\Http\Controllers\HalamansController::class, 'edit'])->name('halamans.edit');
Route::post('/halaman/update', [App\Http\Controllers\HalamansController::class, 'update'])->name('halamans.update');
Route::get('/halaman/destroy/{id}', [App\Http\Controllers\HalamansController::class, 'destroy'])->name('halamans.destroy');