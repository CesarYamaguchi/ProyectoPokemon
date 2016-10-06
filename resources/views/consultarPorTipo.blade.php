@extends('principal')

@section('encabezado')
	<h2>Pokemón tipo {{$nt[0]->nombre}} </h2>
@stop

@section('contenido')
	@foreach($pokemons_tipos as $pt)
		<div class="col-xs-4">
		   	<div class="thumbnail" style="border-radius: 50px; ">
		   	  	<div style="Background-image:url({{asset('img/base.png')}}); background-size: 100%"  align="center">
		   	  		<img src="{{ asset('/img/'.$pt->pokemon.'.png') }}" width="70%" alt="{{$pt->pokemon}}">
		   	  	</div>
		      	<div class="caption" align="center">
		          	<h3>{{$pt->pokemon}}</h3>
		          	<p>
		          	<a href="{{url('/quitarTipo2')}}/{{$pt->id_pokemon}}/{{$pt->id_tipo}}" class="btn btn-danger">Eliminar</a> 
		          	<a href="{{url('/pdfPokemon')}}/{{$pt->id_pokemon}}" class="btn btn-default">Descargar</a>
		          	</p>
		      	</div>
		   	</div>
		 </div>
	@endforeach
	<hr>
@stop