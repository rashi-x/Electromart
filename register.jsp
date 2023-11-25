<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
     <%@include file="Links.jsp" %>  
     <link href="css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
     <%
    String enteredName = request.getParameter("name"); 
    session.setAttribute("userName", enteredName);
    
%>
           <section class="vh-100">
           <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <form method="post" action="code1.jsp">
          <div class="d-flex flex-row mt-3 align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            <button type="button" class="btn btn-floating mx-1">
              <i class="fa fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-floating mx-1">
              <i class="fa fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-floating mx-1">
              <i class="fa fa-google-plus"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

           <div class="form-outline mb-3">
            <input type="text"  class="form-control form-control-lg"
              placeholder="Enter a name" required name="name"/>
            <label class="form-label" for="form3Example3">Name</label>
          </div>
          <div class="form-outline mb-3">
            <input type="email" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter a valid email address" required name="email" />
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

         
          <div class="form-outline mb-2">
            <input type="password" id="form3Example4" class="form-control form-control-lg"
              placeholder="Enter password" required name="password"/>
            <label class="form-label" for="form3Example4">Password</label>
          </div>

         

          <div class="text-center text-lg-start mt-3 pt-1">
            <input type="submit" class="text-light btn btn-lg" style=" background-color:#154042; padding-left: 2.5rem; padding-right: 2.5rem;" value="Register">

                 </div>
               </form>
              <div class="text-center text-lg-start mt-3 pt-1">
            <p class="small fw-bold mt-2 pt-1 mb-0">Already have an account? <a href="login.jsp"
                class="link-danger">Login</a></p>
          </div>

     
      </div>
 <div class="col-md-9 col-lg-6 col-xl-5">
     <img src="images/Logo.png" alt="" class="img-fluid"/>
<!--          <img src="images/logo-removebg-preview.png" alt="" class="img-fluid"/>-->
        
      </div>
    </div>
  </div>
  <div
    class="bgf d-flex flex-column  flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5">
   
    <div class="mb-3 mb-md-0">
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

