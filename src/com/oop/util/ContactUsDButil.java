package com.oop.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.oop.DBconection.DataBaseConection;

public class ContactUsDButil {
	private static Connection con = null;
	private static PreparedStatement st = null;
	
	public static boolean addTo_messages (String name, String email, String inquiry, String message) {
		//set default return boolean value
		boolean isSuccess = false;
		
		try {
			//establish connection
			con = DataBaseConection.getConnection();
			String sql = "INSERT INTO message values (0,?, ?, ?, ?)";
			st = con.prepareStatement(sql);
			
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, inquiry);
			st.setString(4, message);
			
			int result = st.executeUpdate();
			
			if (result > 0)
				isSuccess = true;
			else
				isSuccess = false;
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}





