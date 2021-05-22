package com.oop.util;

import java.sql.Connection;
import java.sql.PreparedStatement;


import com.oop.DBconection.DataBaseConection;

public class RegisterDButil {
	private static Connection con=null;
	public static PreparedStatement st=null;
	
	public static boolean register(String firstName,String lastname,String address,String city,String country,String email,String password) {
		
		boolean isSuccess= false;
		
		try {
			
			con = DataBaseConection.getConnection();
			String sql="INSERT INTO user values (0,?, ? , ? , ? , ? , ? ,?)";
			
			st=con.prepareStatement(sql);
			
			st.setString(1,firstName);
			st.setString(2,lastname);
			st.setString(3,address);
			st.setString(4,city);
			st.setString(5,country);
			st.setString(6,email);
			st.setString(7,password);
			
			int result = st.executeUpdate();
			
			if(result>0) {
				
				isSuccess=true;
			}
			else {
				
				isSuccess=false;
			}
			con.close();
		
		}catch(Exception e) {
			
			e.printStackTrace();
			
			
		}
		
		return isSuccess;
		
	}
	
}
