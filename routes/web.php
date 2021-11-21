<?php

use App\Http\Controllers\PagesController;
use App\Http\Controllers\AnonsController;
use App\Http\Controllers\EventsController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PhotosController;
use App\Http\Controllers\VideosController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\CategoriesController;
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

Route::get('/', [PagesController::class, 'index'])->name('home');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::post('analyzes/import', [\App\Http\Controllers\Voyager\VoyagerBaseController::class,'importAnalyses'])->name('analyzes.import');
    Route::post('services/import', [\App\Http\Controllers\Voyager\VoyagerBaseController::class,'importServices'])->name('services.import');

});

Route::get('/locale/{lang}',[PagesController::class,'setLocale'])->name('locale.set');

Route::get('/announcements', [AnonsController::class, 'index'])->name('anons');

Route::get('/announcements/{anons}', [AnonsController::class, 'show'])->name('anons.show');

Route::get('/event-page', function () {
    return view('event-page');
});
Route::get('/events', function () {
    return view('events');
});
Route::get('/events', [EventsController::class, 'index'])->name('events');
Route::get('/events/{event}', [EventsController::class, 'show'])->name('events.show');
Route::get('/events/{event}/download', [EventsController::class, 'download'])->name('events.download');
Route::get('/news', [NewsController::class, 'index'])->name('news');
Route::get('/news/categories/{category}', [CategoriesController::class, 'show'])->name('categories.show');
Route::get('/events-inner', function () {
    return view('events-inner');
});
Route::get('/gallery', [GalleryController::class, 'index'])->name('gallery');
Route::get('/photos', [PhotosController::class, 'index'])->name('photos.index');
Route::get('/videos', [VideosController::class, 'index'])->name('videos.index');
Route::get('/news/{article}', [NewsController::class, 'show'])->name('articles.show');
Route::get('/photos/{photo}', [PhotosController::class, 'show'])->name('photos.show');
Route::get('/videos/{video}', [VideosController::class, 'show'])->name('videos.show');

Route::post('search', [SearchController::class, 'index'])->name('search');

Route::get('/{page?}',[PagesController::class,'getPage'])->name('pages.get');

