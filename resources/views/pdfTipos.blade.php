<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Listado completo de tipos</title>
	<link rel="stylesheet" type="text/css" href="{{asset("css/pdf.css")}}">
</head>
<body>
	<div class="top">
		<img src="{{ asset('/img/EncabezadoPokemon.png')}}" width="100%" height="250px" alt="Pokemon">
	</div>
	<div align="center" class="centro2">
		<h1>Listado de tipos</h1>
		<table>
			<thead>
				<tr>
					<th>#</th>
					<th>Nombre:</th>
				</tr>
			</thead>
			<tbody>
				@foreach($tipos as $t)
					<tr>
						<td class="centrado">{{$t->id}}</td>
						<td class="centrado">{{$t->nombre}}</td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	<footer class="tabla">Copyright &copy; Pokémon 2016</footer>
</body>
</html>