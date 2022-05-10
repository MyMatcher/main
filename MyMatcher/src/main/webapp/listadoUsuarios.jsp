<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Listado de jugadores de la NBA</title>
</head>
<body>
	<div class="container mt-3">
		<h1>Listado de usuarios</h1>
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>Usuario</th>
					<th>Contraseña</th>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Fecha de nacimiento</th>
					<th>Correo</th>
					<th>Descripción</th>
					<th>Atributo 1</th>
					<th>Atributo 2</th>
					<th>Atributo 3</th>
					<th>Atributo 4</th>
					<th>Atributo 5</th>
					<th>Atributo 6</th>
					<th>Atributo 7</th>
					<th>Atributo 8</th>
					<th>Atributo 9</th>
					<th>Atributo 10</th>
					<th>Atributo 11</th>
					<th>Atributo 12</th>
					<th>Atributo 13</th>
					<th>Atributo 14</th>
					<th>Atributo 15</th>
				</tr>
			</thead>
			<tbody>

				<%
				LinkedList<Usuarios> lista = Controller.getUsuarios();
				for (int i = 0; i < lista.size(); i++) {
					if (i % 2 == 0) {
						out.println("<tr class='table-primary'>");
					} else {
						out.println("<tr class='table-success'>");
					}
					out.println("<td>" + lista.get(i).getUser() + "</td>");
					out.println("<td>" + lista.get(i).getPassword() + "</td>");
					out.println("<td>" + lista.get(i).getNombre() + "</td>");
					out.println("<td>" + lista.get(i).getApellidos() + "</td>");
					out.println("<td>" + lista.get(i).getFechanac() + "</td>");
					out.println("<td>" + lista.get(i).getCorreo() + "</td>");
					out.println("<td>" + lista.get(i).getDescripcion() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo1() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo2() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo3() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo4() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo5() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo6() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo7() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo8() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo9() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo10() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo11() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo12() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo13() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo14() + "</td>");
					out.println("<td>" + lista.get(i).getAtributo15() + "</td>");
					out.println("</tr>");
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>