<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
     <%@include file="Links.jsp" %>  
     <link href="css/login.css" rel="stylesheet" type="text/css"/>
   </head>
<body>
    
           <section class="vh-100">
           <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
         
            <img src="images/Logo.png" alt="" class="img-fluid"/>
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
         
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            <button type="button" class="btn btn-floating mx-1">
              <i class="fa fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-floating mx-1">
              <i class="fa fa-twitter"></i>
            </button>

            <button type="button" class="btn  btn-floating mx-1">
              <i class="fa fa-google"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>
       <form method="post" action="logincode.jsp">
           
          <div class="form-outline mb-4">
            <input type="email" class="form-control form-control-lg"
              placeholder="Enter a valid email address" required name="email" />
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

         
          <div class="form-outline mb-3">
            <input type="password" class="form-control form-control-lg"
              placeholder="Enter password" required name="password"/>
            <label class="form-label" for="form3Example4">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
              <input type="submit" class="text-light btn btn-lg" style="background-color:#154042;  padding-left: 2.5rem; padding-right: 2.5rem;" value="Login">

            </div> 
             </form>
            <div class="text-center text-lg-start mt-4 pt-2">
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="register.jsp"
                class="link-danger">Register</a></p>
          </div>

        
      </div>
    </div>
  </div>
  <div
    class=" bgf d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5">
   
    <div class=" mb-3 mb-md-0">
      Copyright © 2023. All rights reserved.
    </div>
    
    <div>
      <a href="#!" class="me-4">
        <i class="fa fa-facebook-f"></i>
      </a>
      <a href="#!" class=" me-4">
        <i class="fa fa-twitter"></i>
      </a>
      <a href="#!" class="me-4">
        <i class="fa fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fa fa-linkedin-in"></i>
      </a>
    </div>
  
  </div>
</section>
</body>
</html>

