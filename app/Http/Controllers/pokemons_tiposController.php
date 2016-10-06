<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pokemons_tipos;
use App\pokemons;
use App\tipos;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;

class pokemons_tiposController extends Controller
{
    public function agregarTipo(Request $request, $id_pokemon){
        $id_tipo=$request->input('id_tipo');

        //Guardar en BD
        $nuevo = new pokemons_tipos;
        $nuevo->id_pokemon= $id_pokemon;
        $nuevo->id_tipo=$id_tipo;
        $nuevo->save();

        return Redirect('/administrarPokemon/'.$id_pokemon);
    }

    public function agregarDebilidad(Request $request, $id_pokemon){
        $id_tipo=$request->input('id_tipo');

        //Guardar en BD
        $nuevo = new pokemons_tipos;
        $nuevo->id_pokemon= $id_pokemon;
        $nuevo->id_tipo=$id_tipo;
        $nuevo->debilidad=1;
        $nuevo->save();

        return Redirect('/administrarPokemon/'.$id_pokemon);
    }

    public function quitarTipo($id_pokemon, $id_tipo){
        $deleted = DB::delete('
            delete from pokemons_tipos 
            where id_pokemon = ? and id_tipo = ?', [$id_pokemon, $id_tipo]);

        return Redirect('/administrarPokemon/'.$id_pokemon);
    }

    public function quitarTipo2($id_pokemon, $id_tipo){
        $deleted = DB::delete('
            delete from pokemons_tipos 
            where id_pokemon = ? and id_tipo = ?', [$id_pokemon, $id_tipo]);

        return Redirect('/consultarPorTipo/'.$id_tipo);
    }

    public function administrarPokemon($id_pokemon){
        $tipos = DB::select('
    		select * 
			from tipos 
			where (	select count(*) 
			    	from pokemons_tipos
			    	where id_tipo = id 
			      	    and debilidad = 0) > 0');


        $pokemon = pokemons::find($id_pokemon);
        $tiposP = DB::select('
            select * 
            from tipos 
            where id not in (select id_tipo 
                         from pokemons_tipos   
                         where id_pokemon = ?)', [$id_pokemon]);
        $tiposP2 = DB::select('
            select * 
            from tipos 
            where id in (select id_tipo 
                         from pokemons_tipos   
                         where id_pokemon = ?
                             and debilidad = 0)', [$id_pokemon]);

        $debilidades = DB::select('
            select * 
            from tipos 
            where id not in (select id_tipo 
                         from pokemons_tipos   
                         where id_pokemon = ?)', [$id_pokemon]);
        $debilidadesP = DB::select('
            select * 
            from tipos 
            where id in (select id_tipo 
                         from pokemons_tipos   
                         where id_pokemon = ?
                             and debilidad = 1)', [$id_pokemon]);

        return view('administrarPokemon', compact('pokemon', 'tiposP', 'tiposP2', 'tipos', 'debilidades', 'debilidadesP'));
    }

}
