package com.news.business;

import com.news.dao.AdminDao;

public class AdminService {
	
	private AdminDao adminDao = new AdminDao();
	//�ж��Ƿ�Ϊ����Ա
	public boolean isAdmin(String user,String password) {
		return adminDao.isAdminExits(user, password);
	}
}
