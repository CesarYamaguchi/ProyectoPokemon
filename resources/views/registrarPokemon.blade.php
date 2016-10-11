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
					<label for="nombre">Nombre:</label>
					<input type="text" class="form-control" name="nombre" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-12">
					<label for="descripcion">Descripción:</label>
					<textarea type="text" class="form-control" name="descripcion" rows="5" required></textarea>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="peso">Peso:</label>
					<input type="number" min="0" step="any" class="form-control" name="peso" required>
				</div>
				<div class="col-xs-6">
					<label for="altura">Altura:</label>
					<input type="number" min="0" step="any" class="form-control" name="altura" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">
					<label for="caramelos">Caramelos:</label>
					<input type="number" min="0" class="form-control" name="caramelos" required>
				</div>
				<div class="col-xs-6">
					<label for="puntos_combate">Puntos de Combate:</label>
					<input type="number" min="0" class="form-control" name="puntos_combate" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-4">
					<label for="vida">Vida:</label>
					<input type="number" min="0" class="form-control" name="vida" required>
				</div>
				<div class="col-xs-4">
					<label for="defensa">Defensa:</label>
					<input type="number" min="0" class="form-control" name="defensa" required>
				</div>
				<div class="col-xs-4">
					<label for="velocidad">Velocidad:</label>
					<input type="number" min="0" class="form-control" name="velocidad" required>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-12">
					<div class="input-group">
				      <span class="input-group-btn">
				        <button class="btn btn-default archivo" type="button">
				        	<span class="glyphicon glyphicon-picture" aria-hiden="true"></span>
				        	<input type="file" id="imagen" name="imagen" required>
				        </button>
				      </span>
				      <input class="form-control" id="rutaimagen" name="rutaimagen" disabled>
				    </div>
				</div>
			</div>
			<script type="text/javascript">
				document.getElementById("imagen").onchange = 
				function ()
				{
    				document.getElementById("rutaimagen").value=this.value;
    			};
			</script>
			<hr>
			<input type="submit" class="btn btn-primary">
			<a href="{{url('/')}}" class="btn btn-danger">Cancelar</a>
		</form>
		<hr>
	</div>
@stop