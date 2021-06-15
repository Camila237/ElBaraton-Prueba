<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/* Ruta de APIS */
Route::resource('categorias', 'CategoriasController');
Route::resource('subcategorias', 'SubcategoriasController');
Route::resource('subnivel', 'SubnivelController');
Route::resource('productos', 'ProductosController')->names('producto.resource');
Route::resource('carrito', 'CarritoController');
Route::get('productosById/{id}','ProductosController@mostrar');
Route::get('carritoAll', 'CarritoController@showAll');
Route::delete('carritoDelete', 'CarritoController@destroyAll');
/* Ruta de APIS ends*/