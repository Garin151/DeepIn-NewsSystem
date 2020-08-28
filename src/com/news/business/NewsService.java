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
	
	public News findRecommendFX() {
		return newsDao.findRecommend();
	}
	
	public News findFromidFX(int id) {
		return newsDao.findID(id);
	}
	
	public void deleteNewsFX(int id) {
		newsDao.deleteNews(id);
	}
	
	public void updateViewFX(int id) {
		newsDao.updateView(id);
	}
	
	public List<News> authorNewsFX(String username) {
		return newsDao.authorNews(username);
	}
	
	public List<News> searchNewsFX(String data) {
		return newsDao.searchNews(data);
	}
	
	
}
