package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.news.po.User;
import com.news.po.Show;
import com.news.util.DB_util;

public class userDao {
	//判断账号是否被Ban
	public boolean isBan(String user,String password) {
		boolean data = false;
		String sql = "select isBan from user_db where user=? and password=?";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, user);
			pstmt.setString(2, password);
			ResultSet res = pstmt.executeQuery();
			if(res.next()) {
				int isBan = res.getInt("isBan");
				if(isBan == 1) {
					data = true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return data;
		
		
	}
	
	//根据user禁用或启用一个账号
	public void banorActUser(String name,String data) {
		if("ban".equals(data)) {
			String sql = "update user_db set isBan = 1 where user = ?";
			PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
			try {
				pstmt.setString(1, name);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else if("active".equals(data)){
			String sql = "update user_db set isBan = 0 where user = ?";
			PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
			try {
				pstmt.setString(1, name);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	//获取所有用户并封装为Show对象
	public List<Show> getAllShow() {
		String sql = "select * from user_db";
		List<Show> showlist = new ArrayList<Show>();
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				String user = res.getString("user");
				int isBan = res.getInt("isBan");
				String status = "无";
				if(isBan == 0) {
					status = "正常";
				}else {
					status = "已禁用";
				}
				Show one  = new Show(user, status);
				showlist.add(one);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return showlist;
	}
	
	
	//判断账号密码是否存在
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
