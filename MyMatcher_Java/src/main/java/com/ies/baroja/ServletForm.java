package com.ies.baroja;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Usuarios;

/**
 * Servlet implementation class ServletForm
 */
@WebServlet("/ServletForm")
public class ServletForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

			if (request.getParameter("email") != null) {
				
				loginUsuario(request, response);			
			} else if (request.getParameter("nombre") != null) {
				actualizarUsuario(request, response);
				insertarUsuario(request, response);
			}

		} catch (Exception ex) {
			System.out.println("Error en servlet");
			ex.printStackTrace();
			mostrarError(response);
		}
	}

	private static void loginUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession sesion = request.getSession();
		String usu, pass;
		String sEmail = request.getParameter("email");
		String sPwd = request.getParameter("pwd");
		// deberíamos buscar el usuario en la base de datos, pero 
		//ponemos un ejemplo en el mismo código
		if (sEmail.equals("micorreo@gmail.com") && sPwd.equals("password") 
				&& sesion.getAttribute("email") == null) {
			// si coincide email y password y además no hay sesión iniciada
			sesion.setAttribute("email", sEmail);
			// redirijo a página con información de login exitoso
			response.sendRedirect("loginExito.jsp");
		} else {
			// lógica para login inválido
			mostrarError(response);
		}

	}


	private static void insertarUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Usuarios usuario = new Usuarios (
				request.getParameter("user"),
				request.getParameter("password"),
				request.getParameter("nombre"),
				request.getParameter("apellidos"),
				request.getParameter("fechanac"),
				request.getParameter("correo"),
				request.getParameter("descripcion"),
				request.getParameter("atributo1"),
				request.getParameter("atributo2"),
				request.getParameter("atributo3"),
				request.getParameter("atributo4"),
				request.getParameter("atributo5"),
				request.getParameter("atributo6"),
				request.getParameter("atributo7"),
				request.getParameter("atributo8"),
				request.getParameter("atributo9"),
				request.getParameter("atributo10"),
				request.getParameter("atributo11"),
				request.getParameter("atributo12"),
				request.getParameter("atributo13"),
				request.getParameter("atributo14"),
				request.getParameter("atributo15"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarUsuario(usuario);

		/** 3- Mostrar resultado por pantalla */
		if (bRes) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<HTML>\n" + "<HEAD><TITLE>Página de JAGD</TITLE>" + "  <meta charset=\"utf-8\">\r\n"
					+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
					+ "  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n"
					+ "  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
					+ "</HEAD>\n" + "<BODY><p>INSERCION CORRECTA</p></BODY></HTML>");
			out.close();

		} else {
			// Mostramos que se ha producido un error
			mostrarError(response); 

		}
	}
	
	private static void actualizarUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Usuarios usuario = new Usuarios (
				request.getParameter("user"),
				request.getParameter("password"),
				request.getParameter("nombre"),
				request.getParameter("apellidos"),
				request.getParameter("fechanac"),
				request.getParameter("correo"),
				request.getParameter("descripcion"),
				request.getParameter("atributo1"),
				request.getParameter("atributo2"),
				request.getParameter("atributo3"),
				request.getParameter("atributo4"),
				request.getParameter("atributo5"),
				request.getParameter("atributo6"),
				request.getParameter("atributo7"),
				request.getParameter("atributo8"),
				request.getParameter("atributo9"),
				request.getParameter("atributo10"),
				request.getParameter("atributo11"),
				request.getParameter("atributo12"),
				request.getParameter("atributo13"),
				request.getParameter("atributo14"),
				request.getParameter("atributo15"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.actualizarUsuario(usuario);

		/** 3- Mostrar resultado por pantalla */
		if (bRes) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<HTML>\n" + "<HEAD><TITLE>Página de JAGD</TITLE>" + "  <meta charset=\"utf-8\">\r\n"
					+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
					+ "  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n"
					+ "  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
					+ "</HEAD>\n" + "<BODY><p>ACTUALIZACIÓN CORRECTA</p></BODY></HTML>");
			out.close();

		} else {
			// Mostramos que se ha producido un error
			mostrarError(response); 

		}
	}

	private static void mostrarError(HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML>\n" + "<HEAD><TITLE>Página de JAGD</TITLE>" + "  <meta charset=\"utf-8\">\r\n"
				+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
				+ "  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n"
				+ "  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
				+ "</HEAD>\n" + "<BODY>\n" + "<div class=\"container mt-3\">\n"
				+ "<h1 class=\"text-danger\">Error interno<h1>\n"
				+ "<img src=\"img/error.jpg\" class=\"rounded\" alt=\"error interno\">" + "</div></BODY></HTML>");
		out.close();
	}
}
