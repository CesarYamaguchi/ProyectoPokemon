@extends('principal')
@section('encabezado')
	
@stop

@section('contenido')
	<div class="jumbotron" style="Background-image:url({{asset('img/01.jpg')}}); background-size: 100%;  border-radius:  30px" >
	  	<img src="{{ asset('/img/Logo.png') }}" width="100%">
	</div>
@stop