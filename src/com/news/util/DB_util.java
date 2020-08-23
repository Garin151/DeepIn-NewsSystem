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
		//����Mysql����
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("���ݿ���������ʧ��");
		}
	}
	
	//�������ݿ�
	public static Connection getConnection() {
		try {
			conn = DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("���ݿ�����ʧ��");
		}
		return conn;
	}
	
	//����ִ�л���
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
	
	//ʵ����SQLִ������pstmt
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
	
	//�ر����ݿ�������Դ
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
