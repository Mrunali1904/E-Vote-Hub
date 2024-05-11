package com.ConnectionFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.MysqlDataSource;


public class ConnectionFactory {

	private static Connection con;
	public static Connection getCon() {
		try {
		MysqlDataSource ms=new MysqlDataSource();
		ms.setUrl("jdbc:mysql://localhost:3360/votingapp");
		ms.setUser("root");
		ms.setPassword("Mrunali@19");
		
		con=ms.getConnection();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		finally {
			return con;
		}
	
}
}
