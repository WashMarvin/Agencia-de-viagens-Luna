package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLConnection {
	
	private static final String url = "jdbc:sqlserver://localhost;databaseName=luna_viagens;integratedSecurity=true";
	
	public static Connection createConnection() {
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Driver found!");
		}catch(ClassNotFoundException e) {
			System.out.println("Driver not found! " + e.getMessage());
		}
		
		try {
			Connection connection = DriverManager.getConnection(url);
			System.out.println("Connected to database!");
			return connection;
			
		} catch(SQLException e) {
			System.out.println("Not connected to database! " + e.getMessage());
			return null;
		}
	}
	
	

}
