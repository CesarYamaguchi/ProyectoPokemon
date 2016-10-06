<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Listado completo de pokémons</title>
	<link rel="stylesheet" type="text/css" href="{{asset("css/pdf.css")}}">
</head>
<body>
	<div class="top">
		<img src="{{ asset('/img/EncabezadoPokemon.png')}}" width="100%" height="250px" alt="Pokemon">
	</div>
	<div align="center" class="centro2">
		<h1>Lista de pokémons:</h1>
		<table>
			<thead>
				<tr>
					<th>#:</th>
					<th>Nombre:</th>
					<th>Imagen:</th>
					<th>Descripción:</th>
				</tr>
			</thead>
			@foreach($pokemons as $p)
				<tr>
					<td class="centrado">{{$p->id}}</td>
					<td class="centrado">{{$p->nombre}}</td>
					<td class="centrado">
						<img src="{{ asset('/img/'.$p->nombre.'.png') }}" width=50 height=50 alt="{{$p->nombre}}">
					</td>
					<td class="justificado">{{$p->descripcion}}</td>
				</tr>
			@endforeach
		</table>
	</div>
	<footer class="tabla">Copyright &copy; Pokémon 2016</footer>
</body>
</html>