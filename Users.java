package com.Entity;

public class Users {
	String id;
	String pass;
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(String id, String pass) {
		super();
		this.id = id;
		this.pass = pass;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", pass=" + pass + "]";
	}
	
	

}
