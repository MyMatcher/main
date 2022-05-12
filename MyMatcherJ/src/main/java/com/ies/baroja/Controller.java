package com.ies.baroja;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import com.bbdd.ConexionBBDD;
import com.model.Usuarios;

public class Controller {

	private static String sConsultaTodos="select user, password, nombre, apellidos, fechanac, correo, descripcion, "
			+ "atributo1, atributo2, atributo3, atributo4, atributo5, "
			+ "atributo6, atributo7, atributo8, atributo9, atributo10, "
			+ "atributo11, atributo12, atributo13, atributo14, atributo15 from usuarios ;";

	/** getJugadores
	 * @return LinkedList<Jugadores>
	 * @author Alex
	 */
	public static LinkedList<Usuarios> getUsuarios() {

		//OBJETO CON LA LISTA DE LOS USUARIOS
		LinkedList<Usuarios> listaUsuarios = new LinkedList<Usuarios>();
		ConexionBBDD miConexion = new ConexionBBDD();

		try {
			miConexion.conectar();
			//LANZAMOS LA CONSULTA
			ResultSet rsResultado = miConexion.ejecutarConsulta(sConsultaTodos);

			if (rsResultado != null) {

				while (rsResultado.next()) {

					Usuarios usuario = new Usuarios (rsResultado.getString("user"),
							rsResultado.getString("password"),
							rsResultado.getString("nombre"),
							rsResultado.getString("apellidos"),
							rsResultado.getString("fechanac"),
							rsResultado.getString("correo"),
							rsResultado.getString("descripcion"),
							rsResultado.getString("atributo1"),
							rsResultado.getString("atributo2"),
							rsResultado.getString("atributo3"),
							rsResultado.getString("atributo4"),
							rsResultado.getString("atributo5"),
							rsResultado.getString("atributo6"),
							rsResultado.getString("atributo7"),
							rsResultado.getString("atributo8"),
							rsResultado.getString("atributo9"),
							rsResultado.getString("atributo10"),
							rsResultado.getString("atributo11"),
							rsResultado.getString("atributo12"),
							rsResultado.getString("atributo13"),
							rsResultado.getString("atributo14"),
							rsResultado.getString("atributo15"));

					listaUsuarios.add(usuario);
				}

			} else {

				System.out.println("Error: NO HAY DATOS");
			}

		} catch (SQLException sqlex) {

			sqlex.printStackTrace();			
		} finally {

			//DESCONEXION BBDD
			miConexion.desconectar();
		}

		return listaUsuarios;
	}

	public static Usuarios getUsuario(String sNombreUsuario) {

		//OBJETO CON LA LISTA DE LOS USUARIOS
		ConexionBBDD miConexion = new ConexionBBDD();
		Usuarios miUsuario = null;
		try {
			String sConsulta="select user, password, nombre, apellidos, fechanac, correo, descripcion, "
					+ "atributo1, atributo2, atributo3, atributo4, atributo5, "
					+ "atributo6, atributo7, atributo8, atributo9, atributo10, "
					+ "atributo11, atributo12, atributo13, atributo14, atributo15 from usuarios where user= '"+sNombreUsuario+"';";
			miConexion.conectar();
			//LANZAMOS LA CONSULTA
			ResultSet rsResultado = miConexion.ejecutarConsulta(sConsulta);

			if (rsResultado != null) {

				while (rsResultado.next()) {

					miUsuario = new Usuarios (rsResultado.getString("user"),
							rsResultado.getString("password"),
							rsResultado.getString("nombre"),
							rsResultado.getString("apellidos"),
							rsResultado.getString("fechanac"),
							rsResultado.getString("correo"),
							rsResultado.getString("descripcion"),
							rsResultado.getString("atributo1"),
							rsResultado.getString("atributo2"),
							rsResultado.getString("atributo3"),
							rsResultado.getString("atributo4"),
							rsResultado.getString("atributo5"),
							rsResultado.getString("atributo6"),
							rsResultado.getString("atributo7"),
							rsResultado.getString("atributo8"),
							rsResultado.getString("atributo9"),
							rsResultado.getString("atributo10"),
							rsResultado.getString("atributo11"),
							rsResultado.getString("atributo12"),
							rsResultado.getString("atributo13"),
							rsResultado.getString("atributo14"),
							rsResultado.getString("atributo15"));
					 
				}

			} else {

				System.out.println("Error: NO HAY DATOS");
			}

		} catch (SQLException sqlex) {

			sqlex.printStackTrace();			
		} finally {

			//DESCONEXION BBDD
			miConexion.desconectar();
		}

		return miUsuario;
	}
	
	public static boolean insertarUsuario(Usuarios usuario) {

		boolean bRes = true;

		/**1. Conectar a la base de datos**/
		ConexionBBDD miConn = new ConexionBBDD();

		try {

			/**2. Obtener conexion*/
			miConn.conectar();

			/**3. Insertar jugador*/
			int iRes = miConn.insertarUsuario(usuario);
			System.out.println("Resultado de insertar usuario = "+iRes);

		} catch (SQLException sqlex) {

			System.out.println("*Error*"+ sqlex.getMessage());
			sqlex.printStackTrace();

		} finally {

			/**4. Desconectar la BBDD*/
			miConn.desconectar();
			
		}

		return bRes;
	}
	
	public static boolean actualizarUsuario(Usuarios usuario) {

		boolean bRes = true;

		/**1. Conectar a la base de datos**/
		ConexionBBDD miConn = new ConexionBBDD();

		try {

			/**2. Obtener conexion*/
			miConn.conectar();

			/**3. Insertar jugador*/
			int iRes = miConn.actualizarUsuario(usuario);
			System.out.println("Resultado de actualizar usuario = "+iRes);

		} catch (SQLException sqlex) {

			System.out.println("*Error*"+ sqlex.getMessage());
			sqlex.printStackTrace();

		} finally {

			/**4. Desconectar la BBDD*/
			miConn.desconectar();
			
		}

		return bRes;
	}

}