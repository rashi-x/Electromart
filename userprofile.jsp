

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
         <%@include file="Links.jsp" %>  
         <link href="css/user.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
    
    Object userName = session.getAttribute("userName");
     Object userEmail = session.getAttribute("userEmail");
    if (userName == null) {
        response.sendRedirect("login.jsp");
    } else {
%>
       <div class="container-xl px-4 mt-4">
   
    <nav class="nav nav-borders">
        <a class="nav-link" href="index.jsp">Back to Shopping</a>
        <a class="nav-link active ms-0" href="userprofile.jsp">Profile</a>
        <a class="nav-link" href="wishlist.jsp" >Wishlist</a>
        <a class="nav-link" href="myorders.jsp">Orders</a>
        <a class="nav-link" href="changepassword.jsp">Change Password</a>
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
									<h4>Hello, <%= userName %></h4>
				
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
           
            <div class="card mb-4">
                <div class="card-header">Account Details</div>
                <div class="card-body">
                     <form method="post" action="updateprofilecode.jsp">
                      
                        <div class="mb-3">
                            <label class=" mb-1" for="inputUsername">Name</label>
                            <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username" required name="name">
                        </div>
                        
                        <div class="row gx-3 mb-3">
                             
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputFirstName">Street Address</label>
                                <input class="form-control" id="inputFirstName" type="text" placeholder="Street Address" required name="address">
                            </div>
                            
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputLastName">City</label>
                                <input class="form-control" id="inputLastName" type="text" placeholder="City" required name="city">
                            </div>
                        </div>
                       
                        <div class="row gx-3 mb-3">
                          
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputOrgName">Region</label>
                                <input class="form-control" id="inputOrgName" type="text" placeholder="Region" required name="region">
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputLocation">Zip code</label>
                                <input class="form-control" id="inputLocation" type="text" placeholder="Postal/Zip Code" required name="zipcode" >
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class=" mb-1" for="inputEmailAddress">Email address</label>
                            <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address" name="email" required value="<%= userEmail %>">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputPhone">Phone number</label>
                                <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" value="555-123-4567" required name="phone">
                            </div>
                           
                            <div class="col-md-6">
                                <label class=" mb-1" for="inputBirthday">Birthday</label>
<input class="form-control" id="inputBirthday" type="text" name="birthday" pattern="\d{4}-\d{2}-\d{2}" title="Please use the YYYY-MM-DD format" required>
                            </div>
                        </div>
                        
                      <button type="submit" class="btn btn-primary">Save changes</button>
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
