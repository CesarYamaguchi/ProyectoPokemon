@extends('principal')
@section('encabezado')
	<h1>Registrar Tipo</h1>
@stop

@section('contenido')
	<div class="container" style="background-color: black; border-radius: 20px">
		<hr>
		<form action="{{url('/guardarTipo')}}" method="POST">
			<input type="hidden" name="_token" value="{{csrf_token() }}">
			<div class="row">
				<div class="col-xs-12">
					<label for="nombre">Nombre</label>
					<input type="text" class="form-control" name="nombre" required>
				</div>
			</div>
			<hr>
			<input type="submit" class="btn btn-primary">
			<a href="{{url('/inicio')}}" class="btn btn-danger">Cancelar</a>
		</form>
		<hr>
	</div>
@stop