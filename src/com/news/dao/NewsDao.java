package com.news.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.news.po.News;
import com.news.util.DB_util;

public class NewsDao {
	//����һ������
	public void addNews(String author,String creatTime,String title,String content,String image) {
		String sql = "insert into news_db (author,creatTime,title,content,image,num_view) values (?,?,?,?,?,?)";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, author);
			pstmt.setString(2, creatTime);
			pstmt.setString(3, title);
			pstmt.setString(4, content);
			pstmt.setString(5, image);
			pstmt.setInt(6, 0);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
	}
	
	//��ѯ�������Ų���ʱ������
	public List<News> findAllNews() {
		List<News> newsList = new ArrayList<News>();
		String sql = "select * from news_db ORDER BY creatTime DESC";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(author, creatTime, title, content, image, num_view);
				newsList.add(oneNew);
			}
			res.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return newsList;
	}
	
	//��ѯ��ҳ�Ƽ�����
	public List<News> findRecommend() {
		List<News> recommend = new ArrayList<News>();
		String sql = "select * from recommend_db";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(author, creatTime, title, content, image, num_view);
				recommend.add(oneNew);
			}
			res.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
		
		return recommend;
	}
	
	
	
	
}
