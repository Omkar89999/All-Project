package com.bill.db;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill","root","omkar");
			
		}catch(Exception e) {
			e.printStackTrace();
			}
		return conn;
	}

}
