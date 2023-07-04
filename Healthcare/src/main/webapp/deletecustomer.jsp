
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  	<head>
	    <link rel="stylesheet" href="css/useraccount.css">
	    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
		<title>Delete Account</title>
	</head>
    
    <body>
    
    	<% 
    	//catching variables passing from the url and assigning into variables
    		String id = request.getParameter("id");
    		String fname = request.getParameter("fname");
    		String lname = request.getParameter("lname");
    		String address = request.getParameter("address");
    		String phone = request.getParameter("phone");
    		String email = request.getParameter("email");
    		String password = request.getParameter("password");
    	%>
    
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
                                        <h6 class="f-w-600">Delete Account</h6>
                                        <p>Basic</p>
                                        <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="card-block">
                                        <h6 class="m-b-20 p-b-5 b-b-default f-w-600 text-center">Account Information</h6>
                                        
                                            <form action = "delete" method = "post">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">Account ID</p>
                                                        <input type="text" name = "id" class="form-control" value="<%= id %>" readonly>
                                                    </div>
                                                    
                                                </div><br>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">First Name</p>
                                                        <input type="text" name = "fname" class="form-control" value="<%= fname %>" readonly>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">Last Name</p>
                                                        <input type="text" name = "lname" class="form-control" value="<%= lname %>" readonly>
                                                    </div>
                                                </div><br>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">Address</p>
                                                        <input type="text" name = "address" class="form-control" value="<%= address %>" readonly>
                                                    </div>
                                                </div><br>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">Phone</p>
                                                        <input type="text" name = "phone" class="form-control" value="<%= phone %>" readonly>
                                                    </div>
                                                </div><br>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <p class="m-b-10 f-w-600">Email</p>
                                                        <input type="text" name = "email" class="form-control" value="<%= email %>" readonly>
                                                    </div>
                                                        <div class="col-sm-6">
                                                            <p class="m-b-10 f-w-600">Password</p>
                                                            <input type="text" name = "password" class="form-control" value="<%= password %>" readonly>
                                                        </div>
                                                </div><br>
                                                <div class="row">
                                                    <div class="mt-5 text-center">
                                                    	<input type = "submit" name = "submit" class="btn btn-danger profile-button" value = "Delete Account">
                                                    </div>
                                                </div>
                                            </form>
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