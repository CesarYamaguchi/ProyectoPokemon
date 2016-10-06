<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tipos;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;

class tiposController extends Controller
{
    public function consultarTipos(){
        $tipos2=DB::table('tipos')->paginate(10);
        $tipos = DB::select('
    		select * 
			from tipos 
			where (	select count(*) 
			    	from pokemons_tipos
			    	where id_tipo = id 
			      	    and debilidad = 0) > 0');
        return view('consultarTipos', compact('tipos', 'tipos2'));
    }

    public function guardar(Request $request){
        $nombre=$request->input('nombre');
        

        //Guardar en BD

        $nuevo = new tipos;
        $nuevo->nombre=$nombre;
        
        $nuevo->save();

        return Redirect('/consultarTipos');

    }

    public function actualizarTipo($id){
        $tipos = DB::select('
            select * 
            from tipos 
            where ( select count(*) 
                    from pokemons_tipos
                    where id_tipo = id 
                        and debilidad = 0) > 0');

        $tipo = tipos::find($id);
        return view('actualizarTipo', compact('tipo', 'tipos'));
    }

    public function actualizaTipo($id, Request $datos){
        $tipo = tipos::find($id);
        $tipo->nombre = $datos->input('nombre');
        $tipo->save();

        return Redirect('/consultarTipos');
    }

    public function eliminar($id){
        tipos::find($id)->delete();
        return Redirect('/consultarTipos');
    }

    public function pdfTipos(){
        $tipos=tipos::all();

        $vista=view('pdfTipos', compact('tipos'));
        $dompdf=\App::make('dompdf.wrapper');
        $dompdf->loadHTML($vista);
        return $dompdf->stream();
    }
}
