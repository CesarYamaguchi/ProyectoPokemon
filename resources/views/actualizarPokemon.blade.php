@extends('principal')
@section('encabezado')
	<h1>Actualizar Pokémon</h1>
@stop

@section('contenido')

	<div class="container" style="background-color: black; border-radius: 20px">
		<hr>
		<form action="{{url('/actualizar')}}/{{$pokemon->id}}" method="POST">
			<input type="hidden" name="_token" value="{{csrf_token() }}">
			<div class="row">
				<div class="col-xs-12">
					<label for="nombre">Nombre</label>
					<input type="text" class="form-control" name="nombre" required value="{{$pokemon->nombre}}">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-12">
					<label for="descripcion">Descripción</label>
					<textarea type="text" class="form-control" name="descripcion" rows="5" required >{{$pokemon->descripcion}}</textarea>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="peso">Peso</label>
					<input type="number" step="any" class="form-control" name="peso" required value="{{$pokemon->peso}}">
				</div>
				<div class="col-xs-6">
					<label for="altura">Altura</label>
					<input type="number" step="any" class="form-control" name="altura" required value="{{$pokemon->altura}}">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="caramelos">Caramelos</label>
					<input type="number" class="form-control" name="caramelos" required value="{{$pokemon->caramelos}}">
				</div>
				<div class="col-xs-6">
					<label for="puntos_combate">Puntos de Combate</label>
					<input type="number" class="form-control" name="puntos_combate" required value="{{$pokemon->puntos_combate}}">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-4">
					<label for="vida">Vida</label>
					<input type="number" class="form-control" name="vida" required value="{{$pokemon->vida}}">
				</div>
				<div class="col-xs-4">
					<label for="defensa">Defensa</label>
					<input type="number" class="form-control" name="defensa" required value="{{$pokemon->defensa}}">
				</div>
				<div class="col-xs-4">
					<label for="velocidad">velocidad</label>
					<input type="number" class="form-control" name="velocidad" required value="{{$pokemon->velocidad}}">
				</div>
			</div>
			<hr>
			<input type="submit" class="btn btn-primary">
			<a href="{{url('/inicio')}}" class="btn btn-danger">Cancelar</a>
		</form>
		<hr>
	</div>
@stop