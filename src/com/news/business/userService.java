package com.news.business;

import com.news.dao.userDao;
import com.news.po.User;

public class userService {
	//ÅÐ¶ÏµÇÂ¼ÊÇ·ñºÏ·¨
	private userDao userDao = new userDao();
	public boolean legal(User user) {
		return userDao.isExists(user.getUser(),user.getPassword());
	}
}
