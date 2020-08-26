package com.news.po;

public class News {
	private int id;
	private String author;
	private String creatTime;
	private String title;
	private String content;
	private String image;
	private int num_view;
	
	public News(int id,String author,String creatTime,String title,String content,String image,int num_view) {
		super();
		this.id = id;
		this.author = author;
		this.creatTime = creatTime;
		this.title = title;
		this.content = content;
		this.image = image;
		this.num_view = num_view;
		
	}

	public News(String author,String creatTime,String title,String content,String image,int num_view) {
		super();
		this.author = author;
		this.creatTime = creatTime;
		this.title = title;
		this.content = content;
		this.image = image;
		this.num_view = num_view;
		
	}
	
	public News(String author,String creatTime,String title,String content,String image) {
		super();
		this.author = author;
		this.creatTime = creatTime;
		this.title = title;
		this.content = content;
		this.image = image;
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getNum_view() {
		return num_view;
	}
	public void setNum_view(int num_view) {
		this.num_view = num_view;
	}
	
}
