@extends('principal')

@section('encabezado')
	<h2 align="center">{{$pokemon->nombre}}</h2>
@stop
 
@section('contenido')
	<div class="container" style="background-color: black; border-radius: 20px">
		<div class="col-xs-3" >
			<IMG  SRC="{{ asset('/img/'.$pokemon->nombre.'.png') }}" width="100%"  align="middle" ALT="{{$pokemon->nombre}}" >
		</div>
		<div class="col-xs-9">
			<h5>Puntos de combate: {{$pokemon->puntos_combate}}</h5>
		</div>
		<div class="col-xs-3">
			<h5>Caramelos necesarios: {{$pokemon->caramelos}}</h5>
		</div>
		<div class="col-xs-3">
			<h5>Caramelos: {{$pokemon->cantidad_caramelos}}</h5>
		</div>
		<div class="col-xs-3">
			@if ($pokemon->cantidad_caramelos >= $pokemon->caramelos)
				<a href="{{url('/subirNivelPokemon')}}/{{$pokemon->id}}">
					<button name="levelup" class="btn btn-default">Subir nivel</button>
				</a>
			@else
					<button name="levelup" class="btn btn-default" data-toggle="modal" data-target="#validarSubirNivel">Subir nivel</button>
			@endif
		</div>
		<hr>
		<div class="col-xs-9">
			<form action="{{url('/darCaramelos')}}/{{$pokemon->id}}" method="POST">
				<input type="hidden" name="_token" value="{{csrf_token() }}">
				<div class="form-group">
					<label for="caramelos">Agregar caramelos:</label>
					<input type="number" min="1" class="form-control" name="caramelos" required>
				</div>
				<input type="submit" value="Agregar Caramelos" class="btn btn-primary">
			</form>
		</div>
		<hr>
	</div>
	<hr>
	<div class="container" style="background-color: black; border-radius: 20px">
		<h1>Tipos</h1>
		<hr>
		<div>
			<form action="{{url('/agregarTipo')}}/{{$pokemon->id}}" method="POST">
				<input type="hidden" name="_token" value="{{csrf_token() }}">
				<div class="form-group">
					<label for="id_tipo">Tipo a asignar:</label>
					<select name="id_tipo" class="form-control">
						<option value="" selected>Selecione tipo... </option>
						@foreach($tiposP as $t)
							<option value="{{$t->id}}">{{$t->nombre}}</option>
						@endforeach
					</select>
				</div>
				<input type="submit" value="Agregar" class="btn btn-primary">
			</form>
		</div>
		<hr>
		<h2>Tipos asignados a {{$pokemon->nombre}}:</h2>
		<table class="table table-hover" style="background-color: grey; border-radius: 20px">
			<thead> 
				<tr>
					<th>#</th>
					<th>Tipo</th>
					<th>Imagen</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($tiposP2 as $tp)
					<tr>
						<td>{{$tp->id}}</td>
						<td>{{$tp->nombre}}</td>
						<td><img src="{{ asset('/img/'.$tp->nombre.'.png') }}" width="15%"></td>
						<td><a href="{{url('/quitarTipo')}}/{{$pokemon->id}}/{{$tp->id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove" aria-hidden="true">Quitar</span></a></td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<hr>
	<div class="container" style="background-color: black; border-radius: 20px">
		<h1>Debilidades</h1>
		<hr>
		<div>
			<form action="{{url('/agregarDebilidad')}}/{{$pokemon->id}}" method="POST">
				<input type="hidden" name="_token" value="{{csrf_token() }}">
				<div class="form-group">
					<label for="id_tipo">Debilidad a asignar:</label>
					<select name="id_tipo" class="form-control">
						<option value="" selected>Selecione debilidad... </option>
						@foreach($debilidades as $d)
							<option value="{{$d->id}}">{{$d->nombre}}</option>
						@endforeach
					</select>
				</div>
				<input type="submit" value="Agregar" class="btn btn-primary">
			</form>
		</div>
		<hr>
		<h2>Debilidades asignadas a {{$pokemon->nombre}}:</h2>
		<table class="table table-hover" style="background-color: grey; border-radius: 20px">
			<thead> 
				<tr>
					<th>#</th>
					<th>Tipo</th>
					<th>Imagen</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($debilidadesP as $dp)
					<tr>
						<td>{{$dp->id}}</td>
						<td>{{$dp->nombre}}</td>
						<td><img src="{{ asset('/img/'.$dp->nombre.'.png') }}" width="15%"></td>
						<td><a href="{{url('/quitarTipo')}}/{{$pokemon->id}}/{{$dp->id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove" aria-hidden="true">Quitar</span></a></td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>

	<div class="modal fade" id="validarSubirNivel" tabindex="-1" role="dialog" aria-labelledby="validarSubirNivelLabel">
	  	<div class="modal-dialog" role="document">
		    <div class="modal-content">
			    <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Aceptar">
			          	<span aria-hidden="true">&times;</span>
			        </button>
			        <h4 class="modal-title" id="pruebaLabel">Alerta!</h4>
			    </div>
		      	<div class="modal-body">
		        	<p>
				        No hay suficientes caramelos para subir de nivel.
		        	</p>
		      	</div>
		      	<div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
		      	</div>
		    </div>
	  	</div>
	</div>

@stop





