package com.news.util;
import java.sql.*;


public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/systemnews?serverTimezone=UTC&characterEncoding=utf-8";
		String user = "root";
		String password = "1632058190";
		//��һ��������mysql����
		try {
			Class.forName(driver);
			System.out.println("�������سɹ�");
		//�ڶ������������ݿ�
			Connection con = DriverManager.getConnection(url,user,password);
			System.out.println("���ݿ����ӳɹ�");
		//������������ִ�л���
			Statement statement = con.createStatement();
			ResultSet res = statement.executeQuery("select * from demo;");
			while(res.next()){
				System.out.print(res.getString("name")+" ");
				System.out.println(res.getString("sex"));
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("��������ʧ��");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("���ݿ�����ʧ��");
		}

	}

}