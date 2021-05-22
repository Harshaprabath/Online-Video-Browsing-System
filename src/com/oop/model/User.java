package com.oop.model;

public class User {
	private int userID;
	private String firstName;
	private String lastName;
	private String address;
	private String city;
	private String country;
	private String email;
	private String password;
	
	


	public User(int userID, String firstName, String lastName, String address, String city, String country,
			String email, String password) {
		super();
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.city = city;
		this.country = country;
		this.email = email;
		this.password = password;
	}



	public User() {
		
		this.userID = 0;
		this.firstName = null;
		this.lastName = null;
		this.address = null;
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
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
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


	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
		
}
