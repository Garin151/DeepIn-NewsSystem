package com.news.po;

public class Comment {
	private int id;
	private int fromId;
	private String user;
	private String comment;
	private String creatTime;
	
	
	public Comment(int id,int fromId,String user,String comment,String creatTime) {
		super();
		this.id = id;
		this.fromId = fromId;
		this.user = user;
		this.comment = comment;
		this.creatTime = creatTime;
	}
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFromId() {
		return fromId;
	}
	public void setFromId(int fromId) {
		this.fromId = fromId;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	
	
}
