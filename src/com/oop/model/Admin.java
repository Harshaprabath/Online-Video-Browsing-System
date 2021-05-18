package com.oop.model;

public class Admin {
	
	private int adminID;
	private String adminName;
	private String Email;
	private String contactNo;
	private String address;
	private String status;
	
	public Admin(int adminID, String adminName, String Email, String contactNo, String address, String status) {
		
		this.adminID = adminID;
		this.adminName = adminName;
		this.Email = Email;
		this.contactNo = contactNo;
		this.address = address;
		this.status = status;
	
	}
	
	public Admin() {
		
		this.adminID = 0;
		this.adminName = null;
		this.Email = null;
		this.contactNo = null;
		this.address = null;
		this.status = null;
	
	}

	public int getAdminID() {
		return adminID;
	}

	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
