<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
        <%@include file="Links.jsp" %>  
        <link href="css/user.css" rel="stylesheet" type="text/css"/>
        <style>
            .mainDiv {
    display: flex;
    min-height: 100%;
    align-items: center;
    justify-content: center;
    background-color: #d5e9dd;
    font-family: 'Open Sans', sans-serif;
  }
 .cardStyle {
    width: 500px;
    border:none;
    background: #d5e9dd;
    padding: 36px 0;
    border-radius: 4px;
    margin: 30px 0;
    
  }
#signupLogo {
  max-height: 100px;
  margin: auto;
  display: flex;
  flex-direction: column;
}
.formTitle{
  font-weight: 600;
  margin-top: 20px;
  color: #2F2D3B;
  text-align: center;
}
.inputLabel {
  font-size: 15px;
  color: #555;
  margin-bottom: 6px;
  margin-top: 24px;
}
  .inputDiv {
    width: 70%;
    display: flex;
    flex-direction: column;
    margin: auto;
  }
input {
  height: 40px;
  font-size: 16px;
  border-radius: 4px;
  border: none;
  border: solid 1px #ccc;
  padding: 0 11px;
 
}
input:disabled {
  cursor: not-allowed;
  border: solid 1px #eee;
}
.buttonWrapper {
  margin-top: 40px;
}
  .submitButton {
    width: 70%;
    height: 40px;
    margin: auto;
    display: block;
    color: #fff;
    background-color: #065492;
    border-color: #065492;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.12);
    box-shadow: 0 2px 0 rgba(0, 0, 0, 0.035);
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
  }
.submitButton:disabled,
button[disabled] {
  border: 1px solid #cccccc;
  background-color: #cccccc;
  color: #666666;
}
</style>
    </head>
    <body>
        
 <%
    
    Object userName = session.getAttribute("userName");
    if (userName == null) {
        response.sendRedirect("login.jsp");
    } else {
%>
  <div class="container-xl px-4 mt-4">
   
     <nav class="nav nav-borders">
        <a class="nav-link" href="index.jsp">Back to Shopping</a>
        <a class="nav-link " href="userprofile.jsp">Profile</a>
        <a class="nav-link" href="wishlist.jsp" >Wishlist</a>
        <a class="nav-link" href="myorders.jsp">Orders</a>
         <a class="nav-link active ms-0" href="changepassword.jsp">Change Password</a>
        <a class="nav-link" href="cart.jsp">Cart</a>
        <a class="nav-link" href="logout.jsp">Logout</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">

        
    
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="images/userimage.png" alt="Admin" class="rounded-circle p-1 bg-dark" width="110">
								<div class="mt-3">
									<h4><%= userName %></h4>
				
								</div>
							</div>
							<hr class="my-4">
							<ul class="list-group list-group-flush">
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									  <h6 class="mb-0 text-center"><a href="wishlist.jsp">Wish List</a></h6>
									<span class="text-secondary">
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									  <h6 class="mb-0 text-center"><a href="cart.jsp">Cart</a></h6>
									<span class="text-secondary"></span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									  <h6 class="mb-0 text-center"><a href="myorders.jsp">My Orders</a></h6>
									
								</li>
                                                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                   <h6 class="mb-0 text-center"><a href="changepassword.jsp">Change Password</a></h6>
                                                                        
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0 text-center"><a href="logout.jsp">Logout</a></h6>
									 
								</li>
								
							</ul>
						</div>
					</div>
				</div>
        <div class="col-xl-8">
<form action="changepasswordcode.jsp" method="post">
   <div class="mainDiv">
  <div class="cardStyle">
    <form action="" method="post" name="signupForm" id="signupForm">
      
      <img src="" id="signupLogo"/>
      
      <h2 class="formTitle">
        Change Password
      </h2>
       <div class="inputDiv">
      <label class="inputLabel" for="password">Old Password</label>
      <input type="password" id="password" name="old_password" required>
    </div>
    <div class="inputDiv">
      <label class="inputLabel" for="password">New Password</label>
      <input type="password" id="password" name="new_password" required>
    </div>
      
    <div class="inputDiv">
      <label class="inputLabel" for="confirmPassword">Confirm Password</label>
      <input type="password" id="confirmPassword" name="confirm_password">
    </div>
    
    <div class="buttonWrapper">
      <button type="submit" id="submitButton" class="submitButton pure-button pure-button-primary">
        <span>Continue</span>
        
      </button>
    </div>
      
  </form>
  </div>
</div>
        </div>
     </div>
        </div>
         <%
             }
%>
 </body>
</html>