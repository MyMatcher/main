<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
	<meta charset="ISO-8859-1">
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

	<div class="container" style="margin-bottom: 100px;">
		<div class="card"
			style="background-color: #FFF6F5; border-color: #FFF6F5; height: 125px;">
			<a href="main.html"><img src="img/horizontal.png"
				alt="horizontal" class="w-25 fixed-top mx-auto mt-3"></a>

			<div class="card-block">
				<p class="card-text text-end mt-5">
					Bienvenido/a, ${sessionScope.user} <a href="index.html">
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
				LinkedList<Usuarios> lista = Controller.getUsuarios();
				for (int i = 0; i < lista.size(); i++) {

					out.println("<h3>" + "DATOS PERSONALES " + "</h3>");
					out.println("<p>" + "<b>USUARIO: </b>" + lista.get(i).getUser() + "</p>");
					out.println("<p>" + "<b>NOMBRE: </b>" + lista.get(i).getNombre() + "</p>");
					out.println("<p>" + "<b>APELLIDOS: </b>" + lista.get(i).getApellidos() + "</p>");
					out.println("<p>" + "<b>FECHA DE NACIMIENTO: </b>" + lista.get(i).getFechanac() + "</p>");
					out.println("<p>" + "<b>CORREO: </b>" + lista.get(i).getCorreo() + "</p>");
					out.println("<p>" + "<b>DESCRIPCIÓN: </b>" + lista.get(i).getDescripcion() + "</p>");

				}
				%>

			</div>

			<div class="col col-25">

				<%
				for (int i = 0; i < lista.size(); i++) {

					out.println("<h3>" + "GUSTOS " + "</h3>");
					out.println("<p>" + lista.get(i).getAtributo1() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo2() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo3() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo4() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo5() + "</p>");

				}
				%>

			</div>

			<div class="col col-25">

				<%
				for (int i = 0; i < lista.size(); i++) {

					out.println("<h3>" + "AFICIONES " + "</h3>");
					out.println("<p>" + lista.get(i).getAtributo6() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo7() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo8() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo9() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo10() + "</p>");

				}
				%>

			</div>

			<div class="col col-25">

				<%
				for (int i = 0; i < lista.size(); i++) {

					out.println("<h3>" + "ATRIBUTOS 3 " + "</h3>");
					out.println("<p>" + lista.get(i).getAtributo11() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo12() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo13() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo14() + "</p>");
					out.println("<p>" + lista.get(i).getAtributo15() + "</p>");

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