package com.news.util;
import java.sql.*;


public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/systemnews?serverTimezone=UTC&characterEncoding=utf-8";
		String user = "root";
		String password = "1632058190";
		//第一步：加载mysql驱动
		try {
			Class.forName(driver);
			System.out.println("驱动加载成功");
		//第二步：连接数据库
			Connection con = DriverManager.getConnection(url,user,password);
			System.out.println("数据库连接成功");
		//第三步：创建执行环境
			Statement statement = con.createStatement();
			ResultSet res = statement.executeQuery("select * from demo;");
			while(res.next()){
				System.out.print(res.getString("name")+" ");
				System.out.println(res.getString("sex"));
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("驱动加载失败");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("数据库连接失败");
		}

	}

}