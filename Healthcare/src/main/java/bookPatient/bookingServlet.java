package bookPatient;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("name");
		String Address=request.getParameter("address");
		String Phone=request.getParameter("phone");
		String Email=request.getParameter("email");
		String Gender=request.getParameter("gender");
		String Doctor=request.getParameter("doctor");
		String Date=request.getParameter("date");
		String Time=request.getParameter("time");
		
		//String cond=request.getParameter("chkbox");
		
		
		boolean isTrue;
		isTrue = PatientDBUtil.insertPatient(Name, Address, Phone, Email,Gender, Doctor, Date, Time);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
	}

}
