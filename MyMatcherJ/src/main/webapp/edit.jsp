<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>MyMatcher | Editar datos</title>
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
        <p class="card-text text-end mt-5">Bienvenido/a, ${sessionScope.user}

          <a href="index.html">
            <button type="button" class="btn" id="salir"><i class="fa-solid fa-right-from-bracket"></i></button>
          </a>

        </p>
      </div>

    </div>
  </div>



  <footer class="text-center fixed-bottom">
    <p>&copy; 2022 MyMatcher from IES P�o Baroja</p>
  </footer>
  <%
	HttpSession misesion = request.getSession();
	String user = (String) misesion.getAttribute("user");
	%>
</body>

</html>
