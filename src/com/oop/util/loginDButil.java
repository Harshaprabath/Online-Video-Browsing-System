package com.oop.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.oop.DBconection.DataBaseConection;



public class loginDButil {
	
	private static Connection con=null;
	private static PreparedStatement ps1=null;
	
	public static int userID(String email,String pass) {
		
		    int userID=0;
		
		try {
			
			con =DataBaseConection.getConnection();
			String sql="select userID from user where email=? and password=? ";
			ps1=con.prepareStatement(sql);
		
			
			ps1.setString(1,email);
			ps1.setString(2,pass);
			
			ResultSet rs=ps1.executeQuery();  
			
			while(rs.next()){  
				
				userID=rs.getInt(1);
				System.out.println(userID);
		
			}  
		
		}catch(Exception e) {
			
			e.getStackTrace();
		}
		
		 return userID;
	}

}
