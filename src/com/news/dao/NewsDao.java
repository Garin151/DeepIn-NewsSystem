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
	//根据id查找新闻
	public News findID(int id) {
		String sql = "select * from news_db where id = ?";
		News news = new News("","","","","",0);
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setInt(1, id);
			ResultSet res = pstmt.executeQuery();
			if(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(author, creatTime, title, content, image, num_view);
				news = oneNew;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
	
		return news;
		
	}
	
	public List<News> searchNews(String data) {
		List<News> newsList = new ArrayList<News>();
		String sql = "select * from news_db where title like '%" + data + "%' order by creatTime desc";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(id, author, creatTime, title, content, image, num_view);
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
	
	
	//根据id删除一条新闻
	public void deleteNews(int id) {
		String sql = "delete from news_db where id = ?";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
	}
	
	//新增新闻的阅读量
	public void updateView(int id) {
		String sql = "update news_db set num_view = num_view + 1 where id = ?";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB_util.closeDB();
		}
	}
	
	
	//新增一条新闻
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
	
	//查找同一作者的新闻
	public List<News> authorNews(String username) {
		List<News> newsList = new ArrayList<News>();
		String sql = "select * from news_db where author = ? order by creatTime desc";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			pstmt.setString(1, username);
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(id, author, creatTime, title, content, image, num_view);
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
	
	//查询所有新闻并按时间排序
	public List<News> findAllNews() {
		List<News> newsList = new ArrayList<News>();
		String sql = "select * from news_db order by creatTime desc";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(id, author, creatTime, title, content, image, num_view);
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
	
	//查询首页推荐新闻
	public News findRecommend() {
		News recommend = new News(0,"","","","","",0);
		String sql = "select * from recommend_db";
		PreparedStatement pstmt = DB_util.getPreparedStatement(sql);
		try {
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				int id = res.getInt("id");
				String author = res.getString("author");
				String creatTime = sdf.format(res.getDate("creatTime"));
				String title = res.getString("title");
				String image = res.getString("image");
				String content = res.getString("content");
				int num_view = res.getInt("num_view");
				News oneNew = new News(id, author, creatTime, title, content, image, num_view);
				recommend = oneNew;
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
