package com.oop.model;

import javax.servlet.http.Part;

public class Video {
	
	private String videoId;
	private String videoName;
	private Part video;
	
	public Video(String videoId, String videoName, Part video) {
		
		this.videoId = videoId;
		this.videoName = videoName;
		this.video = video;
	}
	
	public Video() {
		
		this.videoId = null;
		this.videoName =null;
		this.video = null;
	}

	public String getVideoId() {
		
		return videoId;
	}

	public void setVideoId(String videoId) {
		
		this.videoId = videoId;
	}

	public String getVideoName() {
		
		return videoName;
	}

	public void setVideoName(String videoName) {
		
		this.videoName = videoName;
	}

	public Part getVideo() {
		
		return video;
	}

	public void setVideo(Part video) {
		
		this.video = video;
	}
	
}
