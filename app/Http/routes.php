<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

//Principal
Route::get('/', 'principalController@index');  

Route::get('/', 'principalController@inicio');

Route::get('/registrarPokemon', 'principalController@registrarPokemon');

Route::get('/registrarTipo', 'principalController@registrarTipo');

Route::get('/cunsultar/{id}', 'usuariosController@eliminar');

//Pokemons
Route::get('/consultarPokemons', 'pokemonsController@consultarPokemons');

Route::get('/consultarPorTipo/{id_tipo}', 'pokemonsController@consultarPorTipo');

Route::post('/guardarPokemon', 'pokemonsController@guardar');

Route::get('/actualizarPokemon/{id}', 'pokemonsController@actualizar');

Route::post('/actualizar/{id}', 'pokemonsController@actualizarPokemon');

Route::get('/eliminarPokemon/{id}', 'pokemonsController@eliminar');

Route::get('/pdfPokemons', 'pokemonsController@pdfPokemons');

Route::get('/pdfPokemon/{id}', 'pokemonsController@pdfPokemon');

Route::post('/darCaramelos/{id}', 'pokemonsController@darCaramelos');

Route::get('/subirNivelPokemon/{id}', 'pokemonsController@subirNivelPokemon');

//Tipos
Route::get('/consultarTipos', 'tiposController@consultarTipos');

Route::post('/guardarTipo', 'tiposController@guardar');

Route::get('/actualizarTipo/{id}', 'tiposController@actualizarTipo');

Route::post('/actualizaTipo/{id}', 'tiposController@actualizaTipo');

Route::get('/eliminarTipo/{id}', 'tiposController@eliminar');

Route::get('/pdfTipos', 'tiposController@pdfTipos');


//Pokemons_Tipos
Route::get('/administrarPokemon/{id}', 'pokemons_tiposController@administrarPokemon');

Route::post('/agregarTipo/{id}', 'pokemons_tiposController@agregarTipo');

Route::get('/quitarTipo/{id_pokemon}/{id_tipo}', 'pokemons_tiposController@quitarTipo');

Route::get('/quitarTipo2/{id_pokemon}/{id_tipo}', 'pokemons_tiposController@quitarTipo2');

Route::post('/agregarDebilidad/{id}', 'pokemons_tiposController@agregarDebilidad');



//pruebas
Route::get('/pruebas', 'pokemonsController@pruebas');