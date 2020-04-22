package com.orange.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class DBUtil {
	public static Connection conn = null;
	
	public static Connection getConnection(String dbType) throws SQLException, ClassNotFoundException {
		
		//For  connection
		conn = getMySqlConnection(dbType);
		
		//For Local machine
	   // conn = getLocalConnection(dbType);	
		conn.setAutoCommit(false);
		return conn;
	}
	
	public static Connection getMySqlConnection(String dbType) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com/sansthas_natkhat001", "sansthas_admin", "sansthasahyog");
		return conn;
	}
	
	public static Connection getLocalConnection(String dbType) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/natkhat001", "root", "");
		return conn;
	}
}
