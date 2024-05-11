package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.Arrays;

import com.ConnectionFactory.ConnectionFactory;
import com.Dao.UserDao;
import com.Dao.VoteDao;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/")
public class User extends HttpServlet{
	Connection con=ConnectionFactory.getCon();
	@Override
	protected void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		if(path.equals("/signup")) {
			UserDao uDao=new UserDao();
		

			String id = req.getParameter("id");
			String pass = req.getParameter("pass");
		
			String result = uDao.insert(id, pass);
			if(result=="inserted") {
				res.sendRedirect("login.jsp");
			}else {
				res.sendRedirect("signup.jsp");
			}
		
		} 
		else if(path.equals("/login")) {
				UserDao uDao=new UserDao();
			
				String id = req.getParameter("id");
				String pass = req.getParameter("pass");
				
				String result = uDao.checkUser(id, pass);
				
				if(result.equals("valid")) {
					session.setAttribute("check",id);
					res.sendRedirect("voting.jsp");
				}
				else {
				
					res.sendRedirect("login.jsp");
				}
			}
			else if(path.equals("/adminlogin")) {
			
				VoteDao vDao=new VoteDao();
				
				int c1 = vDao.voteCount(con,"Ram");
				int c2 = vDao.voteCount(con,"Shyam");
				int c3 = vDao.voteCount(con,"Rahul");
				int c4 = vDao.voteCount(con,"Rohit");
				
			
				
				int arr[]= {c1,c2,c3,c4};
				Arrays.sort(arr);
				String winner="";
				int maxvote=arr[arr.length-1];		
				if(maxvote==c1) {
					winner="Ram";
					
				}
				else if(maxvote==c2) {
					winner="Shyam";
				}
				else if(maxvote==c3) {
					winner="Rahul";
				}
				else {
					winner="Rohit";
				}
				String id = req.getParameter("aid");
				String pass = req.getParameter("apass");
				
				if(id.equals("admin") && pass.equals("pass")) {
					session.setAttribute("check",id);
					session.setAttribute("c1",c1);
					session.setAttribute("c2",c2);
					session.setAttribute("c3",c3);
					session.setAttribute("c4",c4);
					session.setAttribute("winner",winner);
					res.sendRedirect("admin.jsp");
				}
				else {
					res.sendRedirect("adminlogin.jsp");
				}
			}
			else if(path.equals("/logout")) {
			
				session.removeAttribute("check");
				res.sendRedirect("home.jsp");
			}
			else if(path.equals("/voting")) {
				VoteDao vDao=new VoteDao();
			
				String id=req.getParameter("uid");
				String name = req.getParameter("candidatename");
			
				
				String result = vDao.insert(id,name);
				if(result.equals("inserted")) {
					session.removeAttribute("check");
					res.sendRedirect("home.jsp");
				}
				else {
					session.removeAttribute("check");
					res.sendRedirect("home.jsp");
				}
				
			}
			
		}
	}
	

