<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
  <meta charset="utf-8">
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
  textarea:focus,
  input:focus,
  input[type]:focus {
    border-color: #E9B0BF;
    box-shadow: 0 1px 1px #E9B0BF inset, 0 0 8px #E9B0BF;
  }

  textarea:focus,
  button:focus,
  button[type]:focus {
    border-color: #E9B0BF;
    box-shadow: 0 1px 1px #E9B0BF inset, 0 0 8px #E9B0BF;
  }
</style>

<body style="background-color: #FFF6F5">

  <div class="container" style="margin-bottom: 100px;">
    <div class="card" style="background-color:#FFF6F5; border-color:#FFF6F5; height: 125px;">
      <a href="main.html"><img src="img/horizontal.png" alt="horizontal" class="w-25 fixed-top mx-auto mt-3"></a>

      <div class="card-block">
        <p class="card-text text-end mt-5">Bienvenido/a, Alex

          <a href="index.html">
            <button type="button" class="btn" id="salir"><i class="fa-solid fa-right-from-bracket"></i></button>
          </a>

        </p>
      </div>

    </div>
  </div>
<div class="container mt-3">
		<h1>Mi perfil</h1>
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

  <footer class="text-center fixed-bottom">
    <p>&copy; 2022 MyMatcher from IES Pío Baroja</p>
  </footer>
</body>

</html>
