<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Pokémon</title>
	<script src="{{ asset("js/jquery.js") }}"></script>
	<link rel="stylesheet" href="{{asset("css/bootstrap.css")}}">
</head>
<body style="Background-image:url({{asset('img/02.jpg')}})">
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="{{url('/inicio')}}">			
	      		PokeProyecto
		  </a>
	    </div>

	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pokemón <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="{{url('/registrarPokemon')}}">Registrar pokemón</a></li>
	            <li><a href="{{url('/consultarPokemons')}}">Listado de pokemón</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tipos <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="{{url('/registrarTipo')}}">Registrar tipo</a></li>
	            <li><a href="{{url('/consultarTipos')}}">Listado de tipos</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Clasificación<span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	          	<li><p><strong>Tipos</strong></p></li>
	          	<li class="divider"></li>
	            @foreach($tipos as $t)
	            	<li><a href="{{url('/consultarPorTipo')}}/{{$t->id}}">{{$t->nombre}}</a></li>
	            @endforeach
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="container"> 
		<div class="row">
			<div class="col-xs-12">
				@yield('encabezado')
				<hr>
				@yield('contenido')
			</div>
		</div>
	</div>
	<footer style="background-color: black; float: bottom" align="center" >
		<hr>
		Proyecto pokémon &copy; 2016
	</footer>
	<script src="{{ asset("js/bootstrap.js") }}"></script>
</body>
</html>