package com.news.business;

import com.news.dao.userDao;
import java.util.ArrayList;
import java.util.List;

import com.news.po.User;
import com.news.po.Show;

public class userService {
	//ÅÐ¶ÏµÇÂ¼ÊÇ·ñºÏ·¨
	private userDao userDao = new userDao();
	public boolean legal(User user) {
		return userDao.isExists(user.getUser(),user.getPassword());
	}
	
	public User getInfoFX(String username) {
		return userDao.getInfo(username);
	}
	
	public boolean isBanFX(String user,String password) {
		return userDao.isBan(user, password);
	}
	
	public void banorActUserFX(String name,String data) {
		userDao.banorActUser(name, data);
	}
	
	public List<Show> getAllShowFX() {
		return userDao.getAllShow();
	}
	
}
