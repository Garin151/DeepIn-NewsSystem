package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.news.po.User;
import com.news.util.DB_util;

public class FindBackDao {
	public User findBack(String findBack,String answer) {
		User user = new User("", "");
		String sql = "select * from user_db where findBack=? and answer=?";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, findBack);
			pstmt.setString(2, answer);
			ResultSet res = pstmt.executeQuery();
			if(res.next()) {
				String inuser = res.getString("user");
				String inpassword = res.getString("password");
				user.setUser(inuser);
				user.setPassword(inpassword);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		return user;
	} 
}
