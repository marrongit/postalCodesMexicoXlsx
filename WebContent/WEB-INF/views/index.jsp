<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources" var="urlPublic"></spring:url>
</head>
<body>

<span><img src="<c:url value="/resources/images/perfil.jpg" />" /></span>

<!-- Login Modal -->
		<div class="modal" tabindex="-1" role="dialog" id="modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="margin-left:30%">Bienvenido a</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="row">
      		<div class="col-12" style="text-align:center;">
      			<a href="#" class="button button-large btn-block si-colored si-facebook nott t400 ls0 center nomargin"><i class="icon-facebook-sign"></i> Log in with Facebook</a>
      		</div>	
      	</div>
      	<div class="row">
      		<div class="col-12" style="text-align:center;">
      			<div class="divider divider-center"><span class="position-relative" style="top: -2px">ó</span></div>
      		</div>	
      	</div>
			
			<form  class="nobottommargin row form_login" method="post"
			onSubmit="submitLogin(); return false" action="/example/login" >

			
				<div class="col-12">
					<input type="text" 
					id="name" 
					name="name" 
					value="" 
					class="form-control not-dark" 
					placeholder="Username" />
				</div>

				<div class="col-12 mt-4">
					<input type="password" 
					id="password"
					name="password" 
					value="" 
					class="form-control not-dark" 
					placeholder="Password" />
				</div>

				<div class="col-12">
					<a href="#" class="fright text-dark t300 mt-2" id="forgot_password">Olvido la constraseña?</a>
				</div>

				<div class="col-12 mt-4">
					<button class="button btn-block nomargin btn btn-primary"  value="login" id="login">Ingresar</button>
					<br>
					<span id="error_msj"></span>
				</div>
			</form>
			<form  class="nobottommargin row form_register" method="post"
			onSubmit="submitLogin(); return false" action="/example/register" style="display:none;">

				<div class="col-12">
					<input type="text" 
					id="name" 
					name="name" 
					value="" 
					class="form-control not-dark" 
					placeholder="Nombre usuario" />
				</div>

				<div class="col-12 mt-4">
					<input type="password" 
					id="password"
					name="password" 
					value="" 
					class="form-control not-dark" 
					placeholder="Contraseña" />
				</div>
				<div class="col-12 mt-4">
					<input type="password2" 
					id="password"
					name="password" 
					value="" 
					class="form-control not-dark" 
					placeholder="Confirmar contraseña" />
				</div>
				<div class="col-12 mt-4">
					<input type="text" 
					id="email"
					name="email" 
					value="" 
					class="form-control not-dark" 
					placeholder="Correo" />
				</div>

				<div class="col-12 mt-4">
					<button class="button btn-block nomargin btn btn-primary"  value="register" id="register">Registrarse</button>
					<br>
					<span id="error_msj"></span>
				</div>
				
				<div class="col-12">
					<a href="#" class="fright text-dark t300 mt-2" id="ir_login">Ir a Login</a>
				</div>
			</form>
		</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">index Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
   aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <span><img src="../../../perfil.jpg" class="img-thumbnail" /></span>
    <span class="col-md-1 offset-md-6" id="logeo">Login</span>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>


<script>

	$(document).ready(function(){
		$("#logeo").click(function(){
			$("#modal").modal("show");
		});	
		$("#forgot_password").click(function(){
			$(".form_register").show();
			$(".form_login").hide();
		});	
		$("#ir_login").click(function(){
			$(".form_login").show();
			$(".form_register").hide();
		});	
		$("#login").submit();
		$("#register").submit();
	});

</script>
</body>
</html>