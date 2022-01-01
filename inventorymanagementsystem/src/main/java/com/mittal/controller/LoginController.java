package com.mittal.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mittal.dao.LoginDao;
import com.mittal.model.*;

/**
 * Servlet implementation class Login
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username=request.getParameter("userid");
		String password=request.getParameter("password");
		
		LoginDao dao1=new LoginDao();
		
		if(dao1.check(username, password)&& username.equals("user"))
		{
			HttpSession session= request.getSession();
			session.setAttribute("userid",username);
			response.sendRedirect("UserHome.jsp");
		}
		else if(dao1.check(username, password)&& username.equals("admin"))
		{
			HttpSession session= request.getSession();
			session.setAttribute("userid", username);
			response.sendRedirect("AdminHome.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
		
	}


}
