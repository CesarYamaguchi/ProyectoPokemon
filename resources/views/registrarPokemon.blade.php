@extends('principal')
@section('encabezado')
	<h1>Registrar Pokémon</h1>
@stop

@section('contenido')
	<div class="container" style="background-color: black; border-radius: 20px">
		<hr>
		<form action="{{url('/guardarPokemon')}}" method="POST">
			<input type="hidden" name="_token" value="{{csrf_token() }}">
			<div class="row">
				<div class="col-xs-12">
					<label for="nombre">Nombre</label>
					<input type="text" class="form-control" name="nombre" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-12">
					<label for="descripcion">Descripción</label>
					<textarea type="text" class="form-control" name="descripcion" rows="5" required></textarea>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="peso">Peso</label>
					<input type="number" step="any" class="form-control" name="peso" required>
				</div>
				<div class="col-xs-6">
					<label for="altura">Altura</label>
					<input type="number" step="any" class="form-control" name="altura" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="caramelos">Caramelos</label>
					<input type="number" class="form-control" name="caramelos" required>
				</div>
				<div class="col-xs-6">
					<label for="puntos_combate">Puntos de Combate</label>
					<input type="number" class="form-control" name="puntos_combate" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-4">
					<label for="vida">Vida</label>
					<input type="number" class="form-control" name="vida" required>
				</div>
				<div class="col-xs-4">
					<label for="defensa">Defensa</label>
					<input type="number" class="form-control" name="defensa" required>
				</div>
				<div class="col-xs-4">
					<label for="velocidad">velocidad</label>
					<input type="number" class="form-control" name="velocidad" required>
				</div>
			</div>
			<hr>
			<input type="submit" class="btn btn-primary">
			<a href="{{url('/inicio')}}" class="btn btn-danger">Cancelar</a>
		</form>
		<hr>
	</div>
@stop