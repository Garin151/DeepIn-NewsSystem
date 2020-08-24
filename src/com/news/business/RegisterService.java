package com.news.business;

import com.news.dao.RegisterDao;

public class RegisterService {
	private RegisterDao registerDao = new RegisterDao();
	
	public void registerUser(String user, String password, String findBack, String answer) {
		registerDao.registerUser(user, password, findBack, answer);
	}
}
