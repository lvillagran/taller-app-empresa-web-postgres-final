package com.empresa.modulo.conexion;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnect {
	protected static Connection conn;
	static String servidor = "127.0.0.1";
	static String base = "desa";
	static String url = "jdbc:postgresql://" + servidor + ":5432/" + base;

	public static Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			conn = DriverManager.getConnection(url, "postgres", "root");
			return conn;
		} catch (Exception ex) {
			System.out.println("DataConnect -->" + ex.getMessage());
			return null;
		}
	}

	public void cerrarConexion() throws Exception {
		try {
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception("DataConnect -> " + e.getMessage());
		}
	}

	public void realizarCommit() throws Exception {
		try {
			conn.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception("DataConnect -> " + e.getMessage());
		}
	}

	public void realizarRollback() throws Exception {
		try {
			conn.rollback();
		} catch (Exception e) {
			throw new Exception("DataConnect -> " + e.getMessage());
		}
	}

	/* Test de conexion */
	public static void main(String[] args) {

		Connection conResult;
		DataConnect conn = new DataConnect();
		try {

			conResult = conn.getConnection();

			if (conResult.isClosed()) {
				System.out.println("La conexi�n est� cerrada.");
			} else {
				System.out.println("La conexi�n est� abierta.");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}