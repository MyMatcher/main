package com.bbdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Usuarios;

/**
 * Clase que centraliza los métodos de acceso a BBDD
 * 
 * @author AK y AM
 * @since 10/05/2022
 */

public class ConexionBBDD {

	static Connection conexion; 
	int port = 3306;
	String host= "localhost";
	String db  = "mymatcher";
	String user="root";
	String password="";

	String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", host, port, db);

	public void conectar() throws SQLException {

		conexion =  DriverManager.getConnection(url, user, password);
	}	


	public void desconectar() {

		try {
			
			conexion.close();
		} catch (SQLException sqlex) {
			
			System.out.println("Error: " + sqlex.getMessage());
		}
	}

	/**
	 * ejecutarConsulta
	 * @param consulta
	 * @return
	 */
	public ResultSet ejecutarConsulta(String consulta) {

		ResultSet rsResultado = null;
		try {
			System.out.println("Ejecutando: " + consulta);
			PreparedStatement prepStatement = conexion.prepareStatement(consulta);
			rsResultado = prepStatement.executeQuery();
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
		}
		return rsResultado;
	}

	/**
	 * insertarUsuario
	 * @param usuario
	 * @return
	 */
	public int insertarUsuario(Usuarios usuario) {

		int iRes = 0;
		String sInsert = "insert into usuarios (user, password, nombre, apellidos, fechanac, correo)"
				+ "values (?, ?, ?, ?, ?, ?)"; 

		try {

			System.out.println("Ejecutando: "+ sInsert);
			System.out.println("Datos a insertar: "+ usuario);
			PreparedStatement prepStatement = conexion.prepareStatement(sInsert);
			prepStatement.setString(1, usuario.getUser());
			prepStatement.setString(2, usuario.getPassword());
			prepStatement.setString(3, usuario.getNombre());
			prepStatement.setString(4, usuario.getApellidos());
			prepStatement.setString(5, usuario.getFechanac());
			prepStatement.setString(6, usuario.getCorreo());
			
			iRes = prepStatement.executeUpdate();

		} catch (SQLException sqlex) {

			System.out.println("*Error*"+ sqlex.getMessage());
			sqlex.printStackTrace();
		}

		return iRes; 
	}
	
	public static int insertarAtributos(String sNombreUsuario, Usuarios usuario) {

		int iUpd = 0;
		String sConsultaUpdate="UPDATE usuarios SET descripcion = ?, atributo1 = ?, atributo2 = ?, atributo3 = ?, atributo4 = ?, atributo5 = ?, "
				+ "atributo6 = ?, atributo7 = ?, atributo8 = ?, atributo9 = ?, atributo10 = ?, "
				+ "atributo11 = ?, atributo12 = ?, atributo13 = ?, atributo14 = ?, atributo15 = ? where user= '"+sNombreUsuario+"';";
	
		try {

			System.out.println("Ejecutando: "+ sConsultaUpdate);
			System.out.println("Datos a modificar: "+ usuario);
			PreparedStatement prepStatement = conexion.prepareStatement(sConsultaUpdate);
			prepStatement.setString(8, usuario.getAtributo1());
			prepStatement.setString(9, usuario.getAtributo2());
			prepStatement.setString(10, usuario.getAtributo3());
			prepStatement.setString(11, usuario.getAtributo4());
			prepStatement.setString(12, usuario.getAtributo5());
			prepStatement.setString(13, usuario.getAtributo6());
			prepStatement.setString(14, usuario.getAtributo7());
			prepStatement.setString(15, usuario.getAtributo8());
			prepStatement.setString(16, usuario.getAtributo9());
			prepStatement.setString(17, usuario.getAtributo10());
			prepStatement.setString(18, usuario.getAtributo11());
			prepStatement.setString(19, usuario.getAtributo12());
			prepStatement.setString(20, usuario.getAtributo13());
			prepStatement.setString(21, usuario.getAtributo14());
			prepStatement.setString(22, usuario.getAtributo15());
			
			iUpd = prepStatement.executeUpdate();

		} catch (SQLException sqlex) {

			System.out.println("*Error*"+ sqlex.getMessage());
			sqlex.printStackTrace();
		}
		return iUpd;

	}
	
}
