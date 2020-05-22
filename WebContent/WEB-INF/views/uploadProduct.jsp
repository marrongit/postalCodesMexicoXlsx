<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Subir producto</h1>
	
	<form action="/example/uploadProduct/upload" method="post">
		<input type="text" value="Titulo" name="titulo">
		<input type="text" value="Descripcion" name="desc">
		<input type="text" value="Precio" name="precio">
		<label>Nuevo</label>
		<input type="radio" value="Nuevo" id="rNuevo" checked name="rNuevo">
		<label>Usado</label>
		<input type="radio" value="Usado" id="rUsado" name="rUsado">
		<span>¿Aplica promocion?</span><input type="checkbox" value="Si" id="promocion" name="promocion">
		<div id="div_promocion" style="display:none;">
			<label>Precio con descuento:</label>
			<input type="text" value="Precio con descuento" name="descuento">
		</div>
		<input type="file" name="file">
		<input type="submit" value="Subir Articulo">
	</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script>

	$(document).ready(function(){
		$("#rNuevo").click(function(){
			$(this).prop("checked",true);
			$("#rUsado").prop("checked",false);
		});
		$("#rUsado").click(function(){
			$(this).prop("checked",true);
			$("#rNuevo").prop("checked",false);
		});
		
		$("#promocion").click(function(){
			if($("#promocion").is(":checked",true)){
				$("#div_promocion").show();	
			} else {
				$("#div_promocion").hide();
			}
		});
		
	});
</script>
</body>
</html>