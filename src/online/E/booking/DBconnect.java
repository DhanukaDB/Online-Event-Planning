package online.E.booking;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBconnect {

	private static String dbURL = "jdbc:mysql://localhost:3306/online_event";
	private static String dbUsername = "root";
	private static String password = "12345678";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(dbURL,dbUsername,password);
			
		}
		catch(Exception e){
			System.out.println("DB Connection is Success");
		}
		
		return con;
		
	}
}
