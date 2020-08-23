package com.news.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DB_util {
	private static Connection conn;
	private static Statement stmt;
	private static PreparedStatement pstmt;
	
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/systemnews?serverTimezone=UTC&characterEncoding=utf-8";
	private static String user = "root";
	private static String password = "1632058190";
	
	static {
		//加载Mysql驱动
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库驱动加载失败");
		}
	}
	
	//连接数据库
	public static Connection getConnection() {
		try {
			conn = DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败");
		}
		return conn;
	}
	
	//创建执行环境
	public static Statement getStatement() {
		Connection conn = getConnection();
		try {
			if(conn != null){
				stmt = conn.createStatement();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stmt;
	}
	
	//实例化SQL执行语句柄pstmt
	public static PreparedStatement getPreparedStatement(String sql) {
		Connection conn = getConnection();
		try {
			if(conn != null){
				pstmt = conn.prepareStatement(sql);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstmt;
	}
	
	//关闭数据库连接资源
	public static void closeDB() {
		try {
			if(pstmt != null && !pstmt.isClosed()){
				pstmt.close();
			}
			if(stmt != null && !stmt.isClosed()){
				stmt.close();
			}
			if(conn != null && !conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
