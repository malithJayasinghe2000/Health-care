<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Feedback Form</title>
  </head>
  <body>
    <nav class = "navbar navbar-dark bg-success navbar-expand-sm" >
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

    <div class="content mid-body">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-10">
            <div class="row justify-content-center">
              <div class="col-md-6">
                <h3 class="heading mb-4">Let's talk about how you feel about us!</h3>
                <p>We really appreciate your genuine feedback about our service</p>

                <p><img src="images/feedbackImg.png" alt="Image" class="img-fluid"></p>

              </div>
              <div class="col-md-6 mt-5"><br><br>
                
                <!-- Data Form -->
                <form class="mb-5" method="post" action = "addfeedback" id="feedbackForm" name="feedbackForm">
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <input type="text" class="form-control" name="name" id="name" placeholder="Your name" required>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <input type="text" class="form-control" name="email" id="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title = "eg: abcd@xyz.com" required>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <textarea class="form-control" name="message" id="message" cols="30" rows="7" placeholder="Write your feedback" required></textarea>
                    </div>
                  </div>  
                  <div class="row">
                    <div class="col-12">
                      <input type="submit" value="Submit" class="btn btn-warning rounded-0 py-2 px-4">
                    </div>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>