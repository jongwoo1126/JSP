package kr.co.board1.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {
	
	// ΩÃ±€≈Ê ∞¥√º
	private static DBConfig instance = new DBConfig();
	
	public static DBConfig getInstance() {
		return instance;
	}
	
	private DBConfig() {}
	
	private final String HOST = "jdbc:mysql://3.34.94.228:3306/lucky4527";
	private final String USER = "test";
	private final String PASS = "1234";
	
	public Connection getConnection() throws ClassNotFoundException, SQLException {
	
		// 1¥‹∞Ë
		Class.forName("com.mysql.jdbc.Driver");
		// 2¥‹∞Ë
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}
