package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.news.po.User;
import com.news.util.DB_util;

public class userDao {
	//≈–∂œ’À∫≈√‹¬Î «∑Ò¥Ê‘⁄
	public boolean isExists(String user,String password) {
		boolean data = false;
		String sql = "select * from user_db where user=? and password=?";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, user);
			pstmt.setString(2, password);
			ResultSet res = pstmt.executeQuery();
			if(res.next()) {
				data = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return data;
		
	}
	
	public User getInfo(String username) {
		String sql = "select * from user_db where user = ?";
		User one = new User("", "");
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, username);
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				String user = res.getString("user");
				String sex = res.getString("sex");
				String city = res.getString("city");
				String birthday = res.getString("birthday");
				String avatarUrl = res.getString("avatarUrl");
				User a = new User(user, sex, city, birthday, avatarUrl);
				one = a;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return one;
		
	}
	
	
}
