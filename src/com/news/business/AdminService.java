package com.news.business;

import com.news.dao.AdminDao;

public class AdminService {
	
	private AdminDao adminDao = new AdminDao();
	//判断是否为管理员
	public boolean isAdmin(String user,String password) {
		return adminDao.isAdminExits(user, password);
	}
}
