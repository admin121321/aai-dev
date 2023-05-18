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

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/berita/{id}/', function () {
//     return view('layouts.welcome-menu');
// });
Route::get('/', [App\Http\Controllers\WelcomesController::class, 'index'])->name('berita.index');
Route::get('/berita', [App\Http\Controllers\WelcomesController::class, 'all'])->name('berita.all');
Route::get('/berita/{slug}/', [App\Http\Controllers\WelcomesController::class, 'show'])->name('berita.show');
Route::get('/ad-art', [App\Http\Controllers\WelcomesController::class, 'showAdart'])->name('adart.show');
// Route::get('/keanggotaan', [App\Http\Controllers\WelcomesController::class, 'showKeanggotaan'])->name('keanggotaan.show');
Route::get('/kontak-kami', [App\Http\Controllers\WelcomesController::class, 'showKontak'])->name('kontak.show');
Route::get('/konsul', [App\Http\Controllers\WelcomesController::class, 'showKonsul'])->name('konsul.show');
Route::get('/tentang-kami', [App\Http\Controllers\WelcomesController::class, 'showTentang'])->name('tentang.show');
Route::get('/register-non-pns', [App\Http\Controllers\Auth\RegisterController::class, 'nonPns'])->name('auth.register-nonpns');
Route::get('/register-pns', [App\Http\Controllers\Auth\RegisterController::class, 'pns'])->name('auth.register-pns');


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
// Ticket
Route::get('new-ticket', [App\Http\Controllers\TicketsController::class, 'create']);
Route::post('new-ticket', [App\Http\Controllers\TicketsController::class, 'store']);
Route::get('my_tickets', [App\Http\Controllers\TicketsController::class, 'userTickets']);
Route::get('tickets/{ticket_id}', [App\Http\Controllers\TicketsController::class, 'show']);
Route::post('comment', [App\Http\Controllers\CommentsController::class, 'postComment']);
Route::group(['prefix' => 'admin', 'middleware' => 'admin'], function (){
    Route::get('tickets', [App\Http\Controllers\TicketsController::class, 'index'])->name('tickets');
    Route::get('tickets/export-pdf', [App\Http\Controllers\TicketsController::class, 'export_pdf'])->name('export-pdf');
    Route::get('tickets/export-excel', [App\Http\Controllers\TicketsController::class, 'export_excel'])->name('export-excel');
    Route::post('close_ticket/{ticket_id}', [App\Http\Controllers\TicketsController::class, 'close']);
});

//kategori-ticket
Route::get('/kategori-ticket', [App\Http\Controllers\CategoriesController::class, 'index'])->name('kategoritickets.index');
Route::post('/kategori-ticket/store/', [App\Http\Controllers\CategoriesController::class, 'store'])->name('kategoritickets.store');
Route::get('/kategori-ticket/edit/{id}', [App\Http\Controllers\CategoriesController::class, 'edit'])->name('kategoritickets.edit');
Route::post('/kategori-ticket/update', [App\Http\Controllers\CategoriesController::class, 'update'])->name('kategoritickets.update');
Route::get('/kategori-ticket/destroy/{id}', [App\Http\Controllers\CategoriesController::class, 'destroy'])->name('kategoritickets.destroy');