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
	
	//for the login
	public static User validat(String email,String pass) {
		
		User user = null;
	   
	
			try {
				
				con =DataBaseConection.getConnection();
				String sql="select userID from user where email=? and password=? ";
				ps1=con.prepareStatement(sql);
			
				
				ps1.setString(1,email);
				ps1.setString(2,pass);
				
				ResultSet rs=ps1.executeQuery();  
				
				if(rs.next()){  
					
				    user = new User();
					user.setUserID(rs.getInt("userID"));
					
					
		        }
				
			
			}catch(Exception e) {
				
				e.getStackTrace();
			}
	
	 return user;
}
	


	
	
	
	
	
	
	
	//for retrive user information
	public List<User> useraccountDetails(String userID) {
		
		int uid = Integer.parseInt(userID);
		 List<User> userDetails = new ArrayList<>();
		
		try {
			
			con =DataBaseConection.getConnection();
			String sql="select userID, firstName,lastName,Address, city, country, email, password from user where userID=? ";
			ps1=con.prepareStatement(sql);
		
			
			ps1.setInt(1,uid);
		
			
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
	
	
	
	
	
	
	
	
	//for update user information
	public static boolean updateUser(int userID,String firstName,String lastName,String address,String city,String country,String email ) {
		
		boolean isSuccess= false;
		
		
		try {
			con =DataBaseConection.getConnection();
			String sql="Update user set firstName=?,lastName=?,Address=?,city=?, country=?,email=? where userID=? ";
			ps1=con.prepareStatement(sql);
			
			ps1.setString(1,firstName);
			ps1.setString(2,lastName);
			ps1.setString(3,address);
			ps1.setString(4,city);
			ps1.setString(5,country);
			ps1.setString(6,email);
			ps1.setInt(7,userID);
			
			int result = ps1.executeUpdate();
			
			if(result>0) {
				
				isSuccess= true;
				
			}
			else {
				
				isSuccess= false;
				
			}
		
			con.close();
		
		}catch(Exception ex) {
			
			ex.getStackTrace();
	
		}
		
		return isSuccess;
		
		
	}
	
	

	
	
	
public static boolean deleteUser(int userID ) {
		
		boolean isSuccess= false;
		
	
				try {
																	
					con =DataBaseConection.getConnection();
																	
					String sql1 = "DELETE FROM user WHERE userID=?";
					ps1=con.prepareStatement(sql1);
																	
					ps1.setInt(1,userID);
																	
					int result = ps1.executeUpdate();
																	
					if(result>0) {
																				
								isSuccess= true;
																				
				   }
																		
				    else {
																				
								isSuccess= false;
																				
					}
																	
				con.close();
																	
				}catch(Exception ex) {
																	
								ex.getStackTrace();
																	
					}
																
											
		return isSuccess;
		
 }
	
	




public static boolean ChengePassword(int userID, String password ) {
	
	boolean isSuccess= false;
	

			try {
																
				con =DataBaseConection.getConnection();
																
				String sql1 = "Update user set password=? where userID=? ";
				ps1=con.prepareStatement(sql1);
				
				ps1.setString(1,password );
				ps1.setInt(2,userID);
				
																
				int result = ps1.executeUpdate();
																
				if(result>0) {
																			
							isSuccess= true;
																			
			   }
																	
			    else {
																			
							isSuccess= false;
																			
				}
																
			con.close();
																
			}catch(Exception ex) {
																
							ex.getStackTrace();
																
				}
															
										
										
	
	   return isSuccess;
	
 }


}





