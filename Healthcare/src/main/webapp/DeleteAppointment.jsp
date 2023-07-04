<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	String gender=request.getParameter("gender");
	String doctor=request.getParameter("doctor");
	String date=request.getParameter("date");
	String time=request.getParameter("time");
	
	
	
	%>


	<form action="delete" method=get>
	
	Appointment ID <input readonly name = "id" value="<%=id %>">
	Patient Name <input readonly name = "name" value="<%=name %>">
	Address <input readonly name = "address" value="<%=address %>">
	Phone Number <input readonly name = "phone" value="<%=phone %>">
	E-mail <input readonly name = "email" value="<%=email %>">
	Gender <input readonly name = "gender" value="<%=gender %>">
	Doctor <input readonly name = "doctor" value="<%=doctor %>">
	Date <input readonly type="date" name = "date" value="<%=date %>">
	Time <input readonly type="time" name = "time" value="<%=time %>">
	
	<input type="submit" name="submit" value="Delete this Appointment">
	
	</form>
</body>
</html>