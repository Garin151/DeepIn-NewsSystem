package com.news.business;

import com.news.dao.NewsDao;
import com.news.po.News;
import java.util.List;

public class NewsService {
	private NewsDao newsDao = new NewsDao();
	
	public void addNewsFX(String author,String creatTime,String title,String content,String image) {
		newsDao.addNews(author, creatTime, title, content, image);
	}
	
	public List<News> findAllFX() {
		return newsDao.findAllNews();
	}
	
	public List<News> findRecommendFX() {
		return newsDao.findRecommend();
	}
	
	
}
