
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointments</title>
</head>
<body>
	
<table border="1">
	<tr>
	
	<td>Appointment ID</td>
	<td>Patient Name</td>
	<td>Patient address</td>
	<td>Phone Number</td>
	<td>Email</td>
	<td>Gender</td>
	<td>Doctor</td>
	<td>Date</td>
	<td>Time</td>
	</tr>
	<c:forEach var="appointment" items="${AppointmentDetails}">
	
	
	
	
	
	
	<tr>
	<td>${appointment.appID}</td>
	<td>${appointment.name}</td>
	<td>${appointment.address}</td>
	<td>${appointment.phone}</td>
	<td>${appointment.email}</td>
	<td>${appointment.gender}</td>
	<td>${appointment.doctor}</td>
	<td>${appointment.date}</td>
	<td>${appointment.time}</td>
	
	<c:set var="appID" value="${appointment.appID}"/>
	<c:set var="name" value="${appointment.name}"/>
	<c:set var="address" value="${appointment.address}"/>
	<c:set var="phone" value="${appointment.phone}"/>
	<c:set var="email" value="${appointment.email}"/>
	<c:set var="gender" value="${appointment.gender}"/>
	<c:set var="doctor" value="${appointment.doctor }"/>
	<c:set var="date" value="${appointment.date}"/>
	<c:set var="time" value="${appointment.time}"/>
	
	<c:url value="UpdateAppointment.jsp" var="appUpdate">
	
	<c:param name="id" value="${appID }"/>
	<c:param name="name" value="${name }"/>
	<c:param name="address" value="${ address}"/>
	<c:param name="phone" value="${phone }"/>
	<c:param name="email" value="${email }"/>
	<c:param name="gender" value="${gender }"/>
	<c:param name="doctor" value="${doctor }"/>
	<c:param name="date" value="${date }"/>
	<c:param name="time" value="${time }"/>
	
	</c:url>
	<c:url value="DeleteAppointment.jsp" var="appDelete">
	
	<c:param name="id" value="${appID }"/>
	<c:param name="name" value="${name }"/>
	<c:param name="address" value="${ address}"/>
	<c:param name="phone" value="${phone }"/>
	<c:param name="email" value="${email }"/>
	<c:param name="gender" value="${gender }"/>
	<c:param name="doctor" value="${doctor }"/>
	<c:param name="date" value="${date }"/>
	<c:param name="time" value="${time }"/>
	</c:url>
	<td><a href="${appUpdate}" ><input type="submit" name="update" value="Update appointment" onclick=""></a></td>
	<td><a href="${appDelete}" ><input type="submit" name="delete" value="Cancel appointment" onclick=""></a></td>
	<!--  <td><input type="submit" name="update" value="Cancel appointment"></td>-->
	</tr>
	
	
 
 	
	
	
	
	
	
	  </c:forEach>
	  </table>
	
	 
	 
	   
	
	
	
	 
</body>
</html>