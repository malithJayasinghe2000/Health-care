<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="UTF-8">
        <title>Booking form</title>
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
        <form action="booking" method="POST">
        <div class="container">
            <div class="row">
                <div class="col-10">
                    <label for="name">Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="name" name="name" placeholder="Enter your name">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="address">Address:</label>
                </div>
                <div class="col-90">
                    <textarea name="address" id="address" cols="30" rows="10"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="mobile">Phone Number:</label>
                </div>
                <div class="col-90">
                    <input type="tel" id="phone" name="phone" placeholder="only 10 digits are allowed">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="email">Email:</label>
                </div>
                <div class="col-90">
                    <input type="email" id="email" name="email" placeholder="it should contain @,.">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="gender" required>Gender:</label>
                </div>
                <div class="col-90">
                    <input type="radio" id="male" name="gender" value="male"/>Male
                    <input type="radio" id="female" name="gender" value="female"/>Female
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="dob">Date:</label>
                </div>
                <div class="col-90">
                    <input type="Date" id="date" name="date">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="dob">Time:</label>
                </div>
                <div class="col-90">
                    <input type="Time" id="time" name="time">
                </div>
            </div>
                
            <div class="row">
                <div class="col-10">
                    <label for="qualification" required >Select Doctor:</label>
                </div>
                <div class="col-90">
                    <select name="doctor" id="qualification">
                        <option value=" ">Select Doctor</option>
                        <option value="Kamal Silva" >Kamal Silva</option>
						<option value="Namal Bandara" >Namal Bandara</option>
						<option value="Saman senanayake">Saman senanayake</option>
						<option value="nimal jayasinghe">nimal jayasinghe</option>
						<option value="Ruwan Dassanayake">Ruwan Dassanayake</option>
                    </select>
                </div>
            </div>
           </div>
           
           <div class="row">
           <input type="checkbox" name="chkbox" class="inputStyle" id="checkBox" required > Accept privacy policy and terms<br><br>
           </div>
            <div class="row">
                <input type="submit" name = "submit" id="submitbtn" value="Book now" >
            </div>  
         </form>
    </body>
</html>