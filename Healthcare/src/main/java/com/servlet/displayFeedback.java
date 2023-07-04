package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.feedback;
import com.util.CustomerDBUtil;


@WebServlet("/displayFeedback")
public class displayFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			List<feedback> feedbacklist = CustomerDBUtil.getFeedbackList();
			request.setAttribute("feedbacklist", feedbacklist);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("feedback.jsp");
		dis.forward(request,  response);
	}
	
}

