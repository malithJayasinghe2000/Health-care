<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="feedback.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel = "stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" rel = "stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel = "stylesheet">
        <title>Feedbacks</title>
        <style>body {background-image: url('images/userAccBg.jpg');}</style>
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
        </nav><br><br>
        
        <div class="container">                   
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body text-center">
                            <h3 class="card-title m-b-0">Feedbacks</h3>
                            <h5><a href = "feedbackForm.jsp" class = "float-right btn btn-primary">Add Feedback</a></h5>
                            
                        </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead bgcolor = "#d8fdc7">
                                        <tr>
                                            <th>
                                                <label class="customcheckbox m-b-20">
                                                    <input type="checkbox" id="mainCheckbox">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <th scope="col">No</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col" >Feedback</th>
                                        </tr>
                                    </thead>
                                    <tbody class="customtable">
                                    	<c:forEach var="cus" items="${feedbacklist}">
									
											
												
	                                        <tr>
	                                            <th>
	                                                <label class="customcheckbox">
	                                                    <input type="checkbox" class="listCheckbox">
	                                                    <span class="checkmark"></span>
	                                                </label>
	                                            </th>
	                                            <td><c:out value="${cus.id}" /></td>
												<td><c:out value="${cus.name}" /></td>
												<td><c:out value="${cus.email}" /></td>
												<td><c:out value="${cus.message}" /></td>
	                                            
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                </div>
            </div>
        </div> <br><br>
    </body>
</html>


