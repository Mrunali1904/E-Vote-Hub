package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ConnectionFactory.ConnectionFactory;

public class VoteDao {
	Connection con=ConnectionFactory.getCon();
	public String insert(String id,String name) {
		String result="";
		try {
			String q="insert into vote values(?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1,id);
			ps.setString(2, name);
		
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
	public int voteCount(Connection con,String cname) {
		int count=0;
		try {
			String q="select * from vote where vote=?";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, cname);
		
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				count++;
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			return count;
		}
	}
}
