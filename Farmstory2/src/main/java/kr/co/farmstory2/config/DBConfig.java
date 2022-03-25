package kr.co.farmstory2.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {
	
	// ½Ì±ÛÅæ °´Ã¼
	private static DBConfig instance = new DBConfig();
	
	public static DBConfig getInstance() {
		return instance;
	}
	
	private DBConfig() {}
	
	// ¹èÆ÷¿ë
	/*
	private final String HOST = "jdbc:mysql://localhost:3306/lucky4527";
	private final String USER = "test";
	private final String PASS = "1234";
		
	*/ 
	private final String HOST = "jdbc:mysql://3.34.94.228:3306/lucky4527";
	private final String USER = "test";
	private final String PASS = "1234";
	
	
	public Connection getConnection() throws ClassNotFoundException, SQLException {
	
		// 1´Ü°è
		Class.forName("com.mysql.jdbc.Driver");
		// 2´Ü°è
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
		
	}
}
