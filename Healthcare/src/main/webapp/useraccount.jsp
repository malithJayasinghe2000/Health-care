<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
  	<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="css/useraccount.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
	<title>User Account</title>
  </head>
    
    <body>
        <nav class = "navbar navbar-dark bg-primary navbar-expand-sm" >
            <div class = "container-fluid">
                <a class = "navbar-brand bi bi-hospital " href = "#">HealthCare</a>
                <button class = "navbar-toggler" data-toggle = "collapse" data-target = "#ccsl"><span class = "navbar-toggler-icon"></span></button>
                <div class = "collapse navbar-collapse justify-content-center" id = "ccsl">
                    <ul class = "navbar-nav">
                        <li class = "nav-item active"><a href = "#" class = "nav-link">Home</a></li>
                        <li class = "nav-item"><a href = "#" class = "nav-link">Features</a></li>
                        <li class = "nav-item"><a href = "#" class = "nav-link">Price</a></li>
                        <li class = "nav-item"><a href = "#" class = "nav-link disabled">Disable</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        
        <div class="page-content page-container myUser" id="page-content">
            <div class="padding">
                <div class="row container d-flex justify-content-center">
                    <div class="col-xl-6 col-md-12">
                        <div class="card user-card-full" style="min-width: 55rem;">
                            <div class="row m-l-0 m-r-0">
                                <div class="col-sm-4 bg-c-lite-green user-profile">
                                    <div class="card-block text-center text-white">
                                        <div class="m-b-25">
                                            <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius" alt="User-Profile-Image">
                                        </div>
                                        <h6 class="f-w-600">User Account</h6>
                                        <p>Basic</p>
                                        <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                    </div>
                                </div>
                                	
                                <div class="col-sm-8">
                                    <div class="card-block">
                                        <h6 class="m-b-20 p-b-5 b-b-default f-w-600 text-center">Account Information</h6>
                                        	<c:forEach var="cus" items="${cusDetails}">
									
												<c:set var = "id" value = "${cus.id}"/>
												<c:set var = "fname" value = "${cus.fname}" />
												<c:set var = "lname" value = "${cus.lname}"/>
												<c:set var = "address" value = "${cus.address}"/>
												<c:set var = "phone" value = "${cus.phone}"/>
												<c:set var = "email" value = "${cus.email}"/>
												<c:set var = "password" value = "${cus.password}"/>
												
	                                            <div class="row">
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">Account ID</p>
	                                                        <h6 class="text-muted f-w-400">${cus.id}</h6>
	                                                </div>
	                                                
	                                            </div><br><br>
	                                            <div class="row">
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">First Name</p>
	                                                        <h6 class="text-muted f-w-400">${cus.fname}</h6>
	                                                </div>
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">Last Name</p>
	                                                    <h6 class="text-muted f-w-400">${cus.lname}</h6>
	                                                </div>
	                                            </div><br><br>
	                                            <div class="row">
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">Address</p>
	                                                        <h6 class="text-muted f-w-400">${cus.address}</h6>
	                                                </div>
	                                            </div><br><br>
	                                            <div class="row">
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">Phone</p>
	                                                        <h6 class="text-muted f-w-400">${cus.phone}</h6>
	                                                </div>
	                                            </div><br><br>
	                                            <div class="row">
	                                                <div class="col-sm-6">
	                                                    <p class="m-b-10 f-w-600">Email</p>
	                                                        <h6 class="text-muted f-w-400">${cus.email}</h6>
	                                                </div>
	                                                    <div class="col-sm-6">
	                                                        <p class="m-b-10 f-w-600">Password</p>
	                                                            <h6 class="text-muted f-w-400">${cus.password}</h6>
	                                                    </div>
	                                            </div><br><br>
	                                        </c:forEach>
	                                        
                                            <div class="row">
                                                	<div class="col-sm-6 mt-5 text-center">
                                                		<c:url value = "updatecustomer.jsp" var = "cusupdate">
                                                			<c:param name = "id" value = "${id}" />
                                                			<c:param name = "fname" value = "${fname}"/>
                                                			<c:param name = "lname" value = "${lname}"/>
                                                			<c:param name = "address" value = "${address}"/>
                                                			<c:param name = "phone" value = "${phone}"/>
                                                			<c:param name = "email" value = "${email}"/>
                                                			<c:param name = "password" value = "${password}"/>                                                			
                                                		</c:url>
                                                		<a href = "${cusupdate}">
                                                			<input type = "button" name = "update" class="btn btn-success profile-button" value = "Update Profile">
                                                		</a>
                                                	</div>
                                                
                                                <div class="col-sm-6 mt-5 ">
                                                	<c:url value = "deletecustomer.jsp" var = "cusdelete">     <!--navigating to delete page with variables -->
                                                		<c:param name="id" value = "${id}" />    <!-- parameters passing -->
                                                		<c:param name = "fname" value = "${fname}"/>
                                                		<c:param name = "lname" value = "${lname}"/>
                                                		<c:param name = "address" value = "${address}"/>
                                                		<c:param name = "phone" value = "${phone}"/>
                                                		<c:param name = "email" value = "${email}"/>
                                                		<c:param name = "password" value = "${password}"/>
                                                	</c:url>
                                                	<a href = "${cusdelete}">
                                                		<input type = "button" class="btn btn-danger profile-button" name = "delete" value = "Delete Profile" >
                                                	</a>
                                                </div>
                                            </div>
                                    </div>
                                </div>
								
								
								
								
								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    
    </body>

</html>