package com.oop.model;

public class Message {
	private int mssId;
	private String userName;
	private String Email;
	private String subject;
	private String Message;
	
	
	public Message(int mssId, String userName, String Email, String subject, String message) {
		
		this.mssId = mssId;
		this.userName = userName;
		this.Email = Email;
		this.subject = subject;
		Message = message;
		
	}
	
	public Message() {
		
		this.mssId = 0;
		this.userName = null;
		this.Email = null;
		this.subject = null;
		this.Message = null;
		
	}

	public int getMssId() {
		return mssId;
	}

	public void setMssId(int mssId) {
		this.mssId = mssId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}
}
