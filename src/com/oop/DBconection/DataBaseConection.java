package com.oop.DBconection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConection {

	
	private static String url = "\"jdbc:mysql://localhost:3306/video_browsing_system";
	private static String userName = "root";
	private static String password = "";
	private static Connection con;
	
	public static Connection getConnection(){
		
		
		  try {
			// register the mysql driver class
			Class.forName("com.mysql.jdbc.Driver");
			//establish connection with database
			con = DriverManager.getConnection(url, userName, password);
			}
			catch(Exception e){
			System.out.println("cannot connect Database");
			}
			return con;
	   }
	
	
	
}