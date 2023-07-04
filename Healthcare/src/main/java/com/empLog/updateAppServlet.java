package com.empLog;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateAppServlet")
public class updateAppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String doctor=request.getParameter("doctor");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = employeeDBUtil.updateAppointment(id, name, address, phone, email, gender,doctor, date, time);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("employeeAccount.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

	
	

}
