package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.CustomerDBUtil;

@WebServlet("/customerfeedback")
public class customerfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertFeeback(name, email, message);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("feedbackSuccess.jsp");
			dis.forward(request,  response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("registerFail.jsp");
			dis2.forward(request,  response);
		}
		
	}

}
