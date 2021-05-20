package com.oop.model;

public class Request_songs {
	private int rsID;
	private String songName;
	private String singerName;
	private String email;
	
	
	public Request_songs(int rsID, String songName, String singerName, String email) {
		
		this.rsID = rsID;
		this.songName = songName;
		this.singerName = singerName;
		this.email = email;
	}
	
	public Request_songs() {
		
		this.rsID = 0;
		this.songName = null;
		this.singerName = null;
		this.email = null;
	}	
	
	
	public int getRsID() {
		return rsID;
	}
	
	public void setRsID(int rsID) {
		this.rsID = rsID;
	}
	
	public String getSongName() {
		return songName;
	}
	
	public void setSongName(String songName) {
		this.songName = songName;
	}
	
	public String getSingerName() {
		return singerName;
	}
	
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
		
}
