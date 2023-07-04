<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--  <html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="emplog" method="POST">
	User Name <input type="text" name="username"><br>
	Password <input type="password" name="password"><br>
	
	<input type="submit" name="submit" value="View Appoint3ment">
	
	
	
	</form>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="UTF-8">
        <title>Doctor Login</title>
        <style>
        *{box-sizing: border-box;
}
input[type=text], input[type=email], input[type=number], input[type=select], input[type=date],input[type=select],input[type=password], input[type=tel]
{
    width: 45%;
    padding: 12px;
    border: 1px solid rgb(168, 166, 166);
    border-radius: 4px;
    resize: vertical;
}
textarea{
    width:45%;
    padding: 12px;
    border: 1px solid rgb(168, 166, 166);
    border-radius: 4px;
    resize: vertical;
}
input[type=radio],input[type=checkbox]{
    width: 1%;
    padding-left: 0%;
    border: 1px solid rgb(168, 166, 166);
    border-radius: 4px;
    resize: vertical;
}
h1{
    font-family: Arial;
    font-size: medium;
    font-style: normal;
    font-weight: bold;
    color: brown;
    text-align: center;
    text-decoration: underline;
}
label{
    padding: 12px 12px 12px 0;
    display: inline-block;
}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float:left;
}
input[type=submit]:hover {
background-color: #32a336;
}
.container{
    border-radius: 5px;
    background-color:#f2f2f2;
    padding: 20px;
}
.col-10{
    float: left;
    width:10%;
    margin-top: 6px;
}
.col-90{
    float: left;
    width: 90%;
    margin-top: 6px;
}
.row:after{
    content: "";
    display: table;
    clear: both;
}
@media screen and (max-width: 600px) {
    .col-10,.col-90,input[type=submit]{
        width: 100%;
        margin-top: 0;
    }
}
        
 </style>
        
        
        
    </head>
       
    <body>
        <h1>Patient booking</h1>
        <form action="emplog" method="get">
        <div class="container">
            <div class="row">
                <div class="col-10">
                    <label for="name">Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="name" name="username" placeholder="Enter your name">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="password">Password:</label>
                </div>
                <div class="col-90">
                    <input type="Password" id="password" name="password" placeholder="Enter your password">
                </div>
            </div>
            
            <div class="row">
                <input type="submit" name = "submit" id="submitbtn" value="Login" >
            </div>  
            </div>
         </form>
         
    </body>
</html>