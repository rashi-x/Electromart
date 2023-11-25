

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
      
         <%@include file="Links.jsp" %> 
         <link href="css/user.css" rel="stylesheet" type="text/css"/>
         <style>
             body
             {
                 background-color: black;
             }
             .row
             {
                 
             }
 .track {
            position: relative;
            background-color: white;
            height: 7px;
            display: flex;
            margin-bottom: 60px;
            margin-top: 50px;
        }
    
        .track .step {
            flex-grow: 1;
            width: 25%;
            margin-top: -18px;
            text-align: center;
            position: relative;
        }
    
        .track .step.active::before {
            height: 7px;
            background: #FF5722;
        }
    
        .track .step::before {
            height: 7px;
            position: absolute;
            content: "";
            width: 100%;
            left: 0;
            top: 18px;
        }
    
        .track .step.active .icon {
            background: #ee5435;
            color: #fff;
        }
    
        .track .icon {
            display: inline-block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            position: relative;
            border-radius: 50%;
            background: white;
            margin-top: -1px;
            padding-top: 2px;
           
        }
    
        .track .step.active .text {
            font-weight: 400;
            color: #000;
        }
    
        .track .text {
            display: block;
            margin-top: 7px;
        }
    
        .itemside {
            position: relative;
            display: flex;
            width: 100%;
        }
    
        .img-sm {
            width: 80px;
            height: 80px;
            padding: 7px;
        }
    
        ul.row, ul.row-sm {
            list-style: none;
            padding: 0;
        }
    
        .itemside .info {
            padding-left: 15px;
            padding-right: 7px;
        }
    
        .itemside .title {
            display: block;
            margin-bottom: 5px;
            color: #212529;
        }
    
        p {
            margin-top: 0;
            margin-bottom: 1rem;
        }
    
        .btn-warning {
            color: #ffffff;
            background-color: #ee5435;
            border-color: #ee5435;
            border-radius: 1px;
        }
    
        .btn-warning:hover {
            color: #ffffff;
            background-color: #ff2b00;
            border-color: #ff2b00;
            border-radius: 1px;
        }
        .container-xl 
        {
            background: black;
        }
         </style>
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
        <a class="nav-link" href="userprofile.jsp">Profile</a>
        <a class="nav-link" href="wishlist.jsp" >Wishlist</a>
        <a class="nav-link active ms-0" href="myorders.jsp">Orders</a>
           <a class="nav-link" href="changepassword.jsp">Change Password</a>
        <a class="nav-link" href="cart.jsp">Cart</a>
        <a class="nav-link" href="logout.jsp">Logout</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">

        
    
				<div class="col-lg-3">
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
           
            <div class="card mb-4">
               <article class="card">
        <header class="card-header"><a href="prevorderhistory.jsp" style="color: black;"> My Orders / Tracking</a> </header>
        <div class="card-body">
            <h6>Order ID: OD45345345435</h6>
            <article class="card">
                <div class="card-body row">
                    <div class="col"> <strong>Estimated Delivery time:</strong> <br>29 nov 2019 </div>
                    <div class="col"> <strong>Shipping BY:</strong> <br> BLUEDART, | <i class="fa fa-phone"></i> +1598675986 </div>
                    <div class="col"> <strong>Status:</strong> <br> Picked by the courier </div>
                    <div class="col"> <strong>Tracking #:</strong> <br> BD045903594059 </div>
                </div>
            </article>
            <div class="track">
                <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step active"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Picked by courier</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-male"></i> </span> <span class="text">Ready for pickup</span> </div>
            </div>
            <hr>
            <ul class="row">
                <li class="col-md-4">
                    <div class="itemside mb-3">
                        <div class="aside"><img src="images/audio2.png" class="img-sm border"></div>

                            <p class="title">Boat airdopes<br> 72 hours Power Backup</p> <span class="text-muted">1,950 </span>
                        </div>
                  
                </li>
                <li class="col-md-4">
                    <div class="itemside mb-3">
                        <div class="aside"><img src="images/laptop1.png" class="img-sm border"></div>
                        <div class="info align-self-center">
                            <p class="title">HP Laptop with 500GB HDD <br> 8GB RAM</p> <span class="text-muted">85,000 </span>
                        </div>
                        
                    </div>
                </li>
            </ul>
            <hr>
            <a href="myorders.jsp" class="btn btn-warning" data-abc="true"> <i class="fa fa-chevron-left"></i> Back to orders</a>
            <a href="invoice.jsp" class="btn btn-info" data-abc="true"> <i class="fa fa-chevron-right"></i>Invoice</a>
            
        </div>
    </article>
            </div>
        </div>
    </div>
</div>
  <%
    }
%>

    </body>
</html>