<?php
 
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductController;
 
Route::get('/', function () {
    return view('welcome');
});

Route::get('/products/create', function() {
    return view('products.create');
})->name('products.create');

Route::get('/analisis', function() {
    return view('analisis');
})->name('analisis');

Route::get('/products/publikasi', function() {
    return view('publikasi');
})->name('/publikasi');

Route::get('/publikasi', function() {
    return view('publikasi');
})->name('/publikasi');

Route::get('/products/index', function() {
    return view('products.index');
})->name('products.index');


Route::get('/auth/login', function() {
    return view('auth/login');
});
 
Route::controller(AuthController::class)->group(function () {
    Route::get('register', 'register')->name('register');
    Route::post('register', 'registerSave')->name('register.save');
  
    Route::get('login', 'login')->name('login');
    Route::post('login', 'loginAction')->name('login.action');
  
    Route::get('logout', 'logout')->middleware('auth')->name('logout');
});
  
Route::middleware('auth')->group(function () {
    Route::get('dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/profile', [App\Http\Controllers\AuthController::class, 'profile'])->name('profile');
    Route::get('/dataexport', [ProductController::class, 'dataexport'])->name('dataexport');
});
 
Route::controller(ProductController::class)->prefix('products')->group(function () {
    Route::get('', 'index')->name('products');
    Route::post('store', 'store')->name('products.store');
    Route::get('show/{id}', 'show')->name('products.show');
    Route::get('edit/{id}', 'edit')->name('products.edit');
    Route::put('edit/{id}', 'update')->name('products.update');
    Route::delete('destroy/{id}', 'destroy')->name('products.destroy');
});
 
    