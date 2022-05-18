<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>MyMatcher | Mi perfil</title>
	<link rel="icon" href="img/icon.png">
	<link rel="stylesheet" href="css/master.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Maven+Pro&display=swap" rel="stylesheet">
	<script src="js/master.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</head>
<style media="screen">
textarea:focus, input:focus, input[type]:focus {
	border-color: #E9B0BF;
	box-shadow: 0 1px 1px #E9B0BF inset, 0 0 8px #E9B0BF;
}

textarea:focus, button:focus, button[type]:focus {
	border-color: #E9B0BF;
	box-shadow: 0 1px 1px #E9B0BF inset, 0 0 8px #E9B0BF;
}
</style>

<body style="background-color: #FFF6F5">

	<div class="container" style="margin-bottom: 50px;">
		<div class="card"
			style="background-color: #FFF6F5; border-color: #FFF6F5; height: 125px;">
			<a href="main.jsp"><img src="img/horizontal.png"
				alt="horizontal" class="w-25 fixed-top mx-auto mt-3"></a>

			<div class="card-block">
				<p class="card-text text-end mt-5">
					Bienvenido/a, ${sessionScope.objUser.user} <a href="index.jsp">
						<button type="button" class="btn" id="salir">
							<i class="fa-solid fa-right-from-bracket"></i>
						</button>
					</a>
				</p>
			</div>
		</div>
	</div>
	<div class="container">

		<h1>Mi perfil</h1>
		<br>
		<div class="row">
			<div class="col col-25">

				<%
				HttpSession sesion = request.getSession();
				Usuarios objUsu = null;
				
				if (sesion.getAttribute("objUser") != null) {

					objUsu = (Usuarios) sesion.getAttribute("objUser");

					out.println("<h3>" + "DATOS PERSONALES" + "</h3>");
					out.println("<p>" + "<b>USUARIO: </b>" + objUsu.getUser() + "</p>");
					out.println("<p>" + "<b>NOMBRE: </b>" + objUsu.getNombre() + "</p>");
					out.println("<p>" + "<b>APELLIDOS: </b>" + objUsu.getApellidos() + "</p>");
					out.println("<p>" + "<b>FECHA DE NACIMIENTO: </b>" + objUsu.getFechanac() + "</p>");
					out.println("<p>" + "<b>CORREO: </b>" + objUsu.getCorreo() + "</p>");
					
					if (objUsu.getDescripcion() != null) {
						
						out.println("<p>" + "<b>DESCRIPCIÓN: </b>" + objUsu.getDescripcion() + "</p>");
						
					} else {
						
						out.println("<p>" + "<b>DESCRIPCIÓN: </b>No hay descripción</p>");
						
					}
					
				}else {
					
					out.println("<p>" + "NO HAY DATOS" + "</p>");
				}
				%>

			</div>

			<div class="col col-25">

				<%
				if (objUsu.getAtributo1() != null && objUsu.getAtributo2() != null && objUsu.getAtributo3() != null 
						&& objUsu.getAtributo4() != null && objUsu.getAtributo5() != null) {

					out.println("<h3>" + "ATRIBUTOS 1" + "</h3>");
					out.println("<p>" + objUsu.getAtributo1() + "</p>");
					out.println("<p>" + objUsu.getAtributo2() + "</p>");
					out.println("<p>" + objUsu.getAtributo3() + "</p>");
					out.println("<p>" + objUsu.getAtributo4() + "</p>");
					out.println("<p>" + objUsu.getAtributo5() + "</p>");
					
				} else {

					out.println("<h3>ATRIBUTOS 1</h3>");
					out.println("<p>NO HAY DATOS</p>");
				}
				%>

			</div>

			<div class="col col-25">

				<%
				if (objUsu.getAtributo6() != null && objUsu.getAtributo7() != null && objUsu.getAtributo8() != null 
						&& objUsu.getAtributo9() != null && objUsu.getAtributo10() != null) {
					
					out.println("<h3>" + "ATRIBUTOS 2" + "</h3>");
					out.println("<p>" + objUsu.getAtributo6() + "</p>");
					out.println("<p>" + objUsu.getAtributo7() + "</p>");
					out.println("<p>" + objUsu.getAtributo8() + "</p>");
					out.println("<p>" + objUsu.getAtributo9() + "</p>");
					out.println("<p>" + objUsu.getAtributo10() + "</p>");
					
				}else {
					
					out.println("<h3>ATRIBUTOS 2</h3>");
					out.println("<p>" + "NO HAY DATOS" + "</p>");
				}
				%>

			</div>

			<div class="col col-25">

				<%
				if (objUsu.getAtributo11() != null && objUsu.getAtributo12() != null && objUsu.getAtributo13() != null 
						&& objUsu.getAtributo14() != null && objUsu.getAtributo15() != null) {
					
					out.println("<h3>" + "ATRIBUTOS 3 " + "</h3>");
					out.println("<p>" + objUsu.getAtributo11() + "</p>");
					out.println("<p>" + objUsu.getAtributo12() + "</p>");
					out.println("<p>" + objUsu.getAtributo13() + "</p>");
					out.println("<p>" + objUsu.getAtributo14() + "</p>");
					out.println("<p>" + objUsu.getAtributo15() + "</p>");
					
				}else {
					
					out.println("<h3>ATRIBUTOS 3</h3>");
					out.println("<p>" + "NO HAY DATOS" + "</p>");
				}
				
				%>

			</div>
		</div>
	</div>

	<footer class="text-center fixed-bottom">
		<p>&copy; 2022 MyMatcher from IES Pío Baroja</p>
	</footer>
	<%
	HttpSession misesion = request.getSession();
	String user = (String) misesion.getAttribute("user");
	%>
</body>

</html>