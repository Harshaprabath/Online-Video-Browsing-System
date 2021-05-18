package com.oop.model;

public class User {
	private int userID;
	private String name;
	private String firstName;
	private String lastName;
	private String Address;
	private String city;
	private String email;
	private String password;
	
	
	public User(int userID, String name, String firstName, String lastName, String address, String city, String email,String password){

		this.userID = userID;
		this.name = name;
		this.firstName = firstName;
		this.lastName = lastName;
		Address = address;
		this.city = city;
		this.email = email;
		this.password = password;
	}
	
	
	
	

	public User() {
		
		this.userID = 0;
		this.name = null;
		this.firstName = null;
		this.lastName = null;
		Address = null;
		this.city = null;
		this.email = null;
		this.password = null;
	}



	public int getUserID() {
		return userID;
	}



	public void setUserID(int userID) {
		this.userID = userID;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public String getAddress() {
		return Address;
	}



	public void setAddress(String address) {
		Address = address;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
}
