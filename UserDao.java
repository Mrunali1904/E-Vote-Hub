package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ConnectionFactory.ConnectionFactory;

public class UserDao {
	
	Connection con = ConnectionFactory.getCon();

	public String insert(String id,String pass) {
		String result="";
		try {
			String q="insert into users values(?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1,id);
			ps.setString(2, pass);
			
			int i = ps.executeUpdate();
			if(i==1) {
				result="inserted";
			}
			else {
				result="failed";
			}
		}
		catch(Exception e) {
			result="failed";
			e.printStackTrace();
		}
		finally {
			return result;
		}
		
	}
	public String checkUser(String id,String pass) {
		String result="";
		try {
			
			String q="select * from users";
			PreparedStatement ps = con.prepareStatement(q);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getString(1).equals(id) && rs.getString(2).equals(pass)) {
				
					result="valid";
					break;
				}
				else {
					result="invalid";
				}
				
			}
			
		}
		catch(Exception e) {
			result="invalid";
			e.printStackTrace();
		}
		finally {
			return result;
		}
	}
}
