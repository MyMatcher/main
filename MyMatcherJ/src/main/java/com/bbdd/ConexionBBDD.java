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

	Connection conexion; 
	int port = 3306;
	String host= "localhost";
	String db  = "mymatcher";
	String user="root";
	String password="";

	String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", host, port, db);

	/**
	 * Método conectar() para la conexión a la base de datos
	 * 
	 * @throws SQLException
	 */
	public void conectar() throws SQLException {

		conexion =  DriverManager.getConnection(url, user, password);
	}	

	/**
	 * Método desconectar() para la desconexion de la base de datos
	 */
	public void desconectar() {

		try {
			
			conexion.close();
		} catch (SQLException sqlex) {
			
			System.out.println("Error: " + sqlex.getMessage());
		}
	}

	/**
	 * Método ejecutarConsulta() que ejecuta la consulta que le pasemos con el parámetro "consulta" (SELECT)	
	 * 
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
	 * Método ejecutarUpdate() que ejecuta la consulta que le pasemos con el parámetro "consulta" (UPDATE)
	 * 
	 * @param consulta
	 * @return iUpd
	 */
	public int ejecutarUpdate(String consulta) {

		int iUpd = 0;
		try {
			System.out.println("Ejecutando: " + consulta);
			PreparedStatement prepStatement = conexion.prepareStatement(consulta);
			iUpd = prepStatement.executeUpdate();
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
		}
		return iUpd;
	}

	/**
	 * Método insertarUsuario() para insertar un usuario nuevo
	 * 
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
}
