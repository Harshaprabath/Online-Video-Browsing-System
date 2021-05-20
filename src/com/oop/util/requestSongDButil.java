package com.oop.util;
import com.oop.DBconection.DataBaseConection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;




public class requestSongDButil {

	
	private static Connection con=null;
	public static PreparedStatement st=null;
	
	public static boolean requestSong(String songname,String singername,String email) {
    boolean isSuccess= false;
	try {
		
		con=DataBaseConection.getConnection();
		String sql = "INSERT INTO request_song values (0,?, ? ,? )";
		st = con.prepareStatement(sql);
		
		st.setString(1,songname);
		st.setString(2,singername);
		st.setString(3,email);
		
		int result = st.executeUpdate();
		
		if(result > 0) {
			
			isSuccess = true;
		}
		else {
			
			isSuccess = false;
		}
		
		con.close();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return isSuccess;
	}
}
