<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link href= "CSS/customer.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

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

    <section class="h-100 bg-light">
        <div class="container py-4 ">
          <div class="row d-flex justify-content-center align-items-center">
            <div class="col">
              <div class="card my-2">
                <div class="row g-0">
                  <div class="col-xl-6 d-none d-xl-block">
                    <img src="images/register_hospital.jpg" class = "img-fluid"
                      alt="hospital" class="img-fluid"
                      style="height : 761px; border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                  </div>
                  <div class="col-xl-6">
                    <div class="card-body p-md-5 text-black mx-auto">
                      <h3 class="mb-5 text-uppercase text-center">Register</h3>
                    
                    <form action = "register"  method = "post"> 
                      <div class="row">
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <label class="form-label" for="fname">First name</label>
                            <input type="text" id="fname" name = "fname" class="form-control form-control-lg" required/>
                          </div>
                        </div>
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <label class="form-label" for="lname">Last name</label>                           
                            <input type="text" id="lname" name = "lname" class="form-control form-control-lg" required/>
                          </div>
                        </div>
                      </div>
                      
                      <div class="form-outline mb-4">
                        <label class="form-label" for="address">Address</label>
                        <input type="text" id="address" name = "address" class="form-control form-control-lg" />
                      </div>
      
                      <div class="form-outline mb-4">
                        <label class="form-label" for="phone">Phone</label>
                        <input type="text" id="phone" name = "phone" class="form-control form-control-lg" pattern = "[0-9]{10}" title = "Phone number must be 10 digits" required/>
                      </div>
      
                      <div class="form-outline mb-4">
                        <label class="form-label" for="email">Email</label>
                        <input type="email" id="email" name = "email" class="form-control form-control-lg" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title = "eg: abcd@xyz.com" required/>
                      </div>
      
                      <div class="form-outline mb-4">
                        <label class="form-label" for="password">Password</label>
                        <input type="password" id="password" name = "password" class="form-control form-control-lg" pattern = ".{8,}" title = "Eight or more characters" required/>
                      </div>
      
                      <div class="d-flex justify-content-end pt-3">
                        <input type="reset" class="btn btn-danger btn-lg" value = "Reset all">
                        <button type="submit" class="btn btn-warning btn-lg ms-2" name = "submit">Submit form</button>
                      </div>
                    </form>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>


</body>
</html>