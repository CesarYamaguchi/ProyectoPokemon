<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Información de pokémon</title>
	<link rel="stylesheet" type="text/css" href="{{asset("css/pdf.css")}}">
</head>
<body>
	<div class="top">
		<img src="{{ asset('/img/EncabezadoPokemon.png')}}" width="100%" height="250px" alt="Pokemon">
	</div>
	<div align="center">
		<img src="{{ asset('/img/'.$pokemon->imagen) }}" width=180 height=180 alt="{{$pokemon->nombre}}">
		<div class="centro" align="center">
			<h1>{{$pokemon->nombre}}</h1>
			<table>
				<thead>
					<tr>
						<th>Peso: </th>
						<th>Altura: </th>
						<th>Caramelos: </th>
						<th colspan="3">Puntos de combate: </th>
						
					</tr>
				</thead>
				<tr>
					<td class="centrado">{{$pokemon->peso}}</td>
					<td class="centrado">{{$pokemon->altura}}</td>
					<td class="centrado">{{$pokemon->caramelos}}</td>
					<td class="centrado" colspan="3">{{$pokemon->puntos_combate}}</td>
				</tr>
				<thead>
					<tr>
						<th>Vida: </th>
						<th>Defensa: </th>
						<th>Velocidad: </td>
						<th colspan="3">Cant. de caramelos: </th>
					</tr>
				</thead>
				<tr>
					<td class="centrado">{{$pokemon->vida}}</td>
					<td class="centrado">{{$pokemon->defensa}}</td>
					<td class="centrado">{{$pokemon->velocidad}}</td>
					<td class="centrado" colspan="3">{{$pokemon->cantidad_caramelos}}</td>
				</tr>
			</table>
			<table>
				<thead>
					<tr>
						<th>Tipos</th>
					</tr>
				</thead>
				<tbody>
					@foreach($tipos as $t)
						<tr>
							<td class="centrado">{{$t->nombre}}</td>
						</tr>
					@endforeach
				</tbody>
			</table>
			<table>
				<thead>
					<tr>
						<th>Debilidades</th>
					</tr>
				</thead>
				<tbody>
					@foreach($debilidades as $d)
						<tr>
							<td class="centrado">{{$d->nombre}}</td>
						</tr>
					@endforeach
				</tbody>
			</table>
		    <h2>Descripción:</h2>
		    <p>{{$pokemon->descripcion}}</p>
		</div>
	</div>
	<footer class="tabla">Copyright &copy; Pokémon 2016</footer>
</body>
</html>