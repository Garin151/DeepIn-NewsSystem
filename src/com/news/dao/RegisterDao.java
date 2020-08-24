package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.news.util.DB_util;

public class RegisterDao {
	//×¢²áÐÂÓÃ»§
	public void registerUser(String user,String password,String findBack,String answer) {
		String sql = "insert into user_db (user,password,findBack,answer,isBan) values (?,?,?,?,?)";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1,user);
			pstmt.setString(2,password);
			pstmt.setString(3,findBack);
			pstmt.setString(4,answer);
			pstmt.setInt(5, 0);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
	}
}
