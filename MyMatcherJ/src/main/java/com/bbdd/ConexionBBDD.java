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
	
	public int actualizarUsuario(Usuarios usuario) {

		int iRes = 0;
		String sUpdate = "update usuarios set "+
				"atributo1= "+ usuario.getAtributo1()+
				"atributo2= "+ usuario.getAtributo2()+
				"atributo3= "+ usuario.getAtributo3()+
				"atributo4= "+ usuario.getAtributo4()+
				"atributo5= "+ usuario.getAtributo5()+
				"atributo6= "+ usuario.getAtributo6()+
				"atributo7= "+ usuario.getAtributo7()+
				"atributo8= "+ usuario.getAtributo8()+
				"atributo9= "+ usuario.getAtributo9()+
				"atributo10= "+ usuario.getAtributo10()+
				"atributo11= "+ usuario.getAtributo11()+
				"atributo12= "+ usuario.getAtributo12()+
				"atributo13= "+ usuario.getAtributo13()+
				"atributo14= "+ usuario.getAtributo14()+
				"atributo15= "+ usuario.getAtributo15()+
				"where user='Alex'";

		try {

			System.out.println("Ejecutando: "+ sUpdate);
			System.out.println("Datos a insertar: "+ usuario);
			PreparedStatement prepStatement = conexion.prepareStatement(sUpdate);
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
			
			iRes = prepStatement.executeUpdate();

		} catch (SQLException sqlex) {

			System.out.println("*Error*"+ sqlex.getMessage());
			sqlex.printStackTrace();
		}

		return iRes; 
	}

}
