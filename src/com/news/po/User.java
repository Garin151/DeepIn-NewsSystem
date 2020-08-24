package com.news.po;

public class User {
	private String user;
	private String password;
	private String findBack;
	private String answer;
	private int isBan;
	private String sex;
	private String city;
	private String birthday;
	private String avatarUrl;
	
	public User(String user,String password,String findBack,String answer) {
		super();
		this.user = user;
		this.password = password;
		this.findBack = findBack;
		this.answer = answer;
	}
	
	public User(String user,String password) {
		super();
		this.user = user;
		this.password = password;
	}
	
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFindBack() {
		return findBack;
	}
	public void setFindBack(String findBack) {
		this.findBack = findBack;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAvatarUrl() {
		return avatarUrl;
	}
	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getIsBan() {
		return isBan;
	}
	public void setIsBan(int isBan) {
		this.isBan = isBan;
	}
	
	
	
	
}
