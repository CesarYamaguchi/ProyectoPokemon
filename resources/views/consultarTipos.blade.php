@extends('principal')

@section('encabezado')
	<h2>
		Consultar Tipos
		<a href="{{url('/pdfTipos')}}">
			<span class="glyphicon glyphicon-file" aria-hiden="true"></span>
		</a>
	</h2>
@stop

@section('contenido')
		<table class="table" style="border-radius: 20px">
			<thead>
				<tr>
					<th class="col-xs-3">#</th>
					<th class="col-xs-3">Nombre</th>
					<th class="col-xs-3">Imagen</th>
					<th class="col-xs-3">Opciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($tipos2 as $t)
					<tr> 
						<td>{{$t->id}}</td>
						<td>{{$t->nombre}}</td>
						<td><img src="{{ asset('/img/'.$t->nombre.'.png') }}"></td>
						<td>
							<a href="{{url('/actualizarTipo')}}/{{$t->id}}" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-edit" aria-hidden="true">Editar</span></a>
						
							<a href="{{url('/eliminarTipo')}}/{{$t->id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove" aria-hidden="true">Eliminar</span></a>
						</td>
					</tr>
				@endforeach
			</tbody>
		</table>
	{!! $tipos2->render() !!}
@stop