package com.oop.util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.oop.DBconection.DataBaseConection;
import com.oop.model.User;


public class UseraccountDButil {
	private static Connection con=null;
	private static PreparedStatement ps1=null;
	
	public List<User> useraccountDetails(int userID) {
		
		 List<User> userDetails = new ArrayList<>();
		
		try {
			
			con =DataBaseConection.getConnection();
			String sql="select userID, firstName,lastName,Address, city, country, email, password from user where userID=? ";
			ps1=con.prepareStatement(sql);
		
			
			ps1.setInt(1,userID);
		
			
			ResultSet rs=ps1.executeQuery();  
			
			while(rs.next()){  
				
				int userId = rs.getInt("userID");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String address = rs.getString("Address");
				String city = rs.getString("city");
				String country = rs.getString("country");
				String email = rs.getString("email");
				String password = rs.getString("password");
				
				User client = new User(userId,firstName,lastName,address,city,country,email,password);
				
				userDetails.add(client);
				
		
			} 
			
		
		
		}catch(Exception e) {
			
			e.getStackTrace();
		}
		
		 return userDetails;
	}
	
	
	
}
