package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.news.po.Comment;
import com.news.util.DB_util;

public class CommentDao {
	//新增一条评论
	public void addComment(int fromId,String user,String comment,String creatTime) {
		String sql = "insert into comment_db (fromId,user,comment,creatTime) values (?,?,?,?)";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setInt(1, fromId);
			pstmt.setString(2, user);
			pstmt.setString(3, comment);
			pstmt.setString(4, creatTime);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
	}
	
	//查找所有评论
	public List<Comment> getAllComment() {
		String sql = "select * from comment_db order by creatTime asc";
		List<Comment> commentList = new ArrayList<Comment>();
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				int fromId = res.getInt("fromId");
				String user = res.getString("user");
				String comment = res.getString("comment");
				String creatTime = sdf.format(res.getDate("creatTime"));
				Comment one = new Comment(id, fromId, user, comment, creatTime);
				commentList.add(one);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return commentList;
		
	}
	
	//根据新闻id查找评论
	public List<Comment> getFromId(int idd) {
		String sql = "select * from comment_db where fromId = ? order by creatTime asc";
		List<Comment> commentList = new ArrayList<Comment>();
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setInt(1,idd);
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				int fromId = res.getInt("fromId");
				String user = res.getString("user");
				String comment = res.getString("comment");
				String creatTime = sdf.format(res.getDate("creatTime"));
				Comment one = new Comment(id, fromId, user, comment, creatTime);
				commentList.add(one);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return commentList;
		
	}
	
	
	
	
	
}
