package com.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.CustomerDBUtil;


@WebServlet("/customerRegister")
public class customerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");		
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(fname, lname, address, phone, email, password);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("registerSuccess.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("registerFail.jsp");
			dis2.forward(request, response);
		}
		
	}

}
