 <!DOCTYPE html>
<html>
    <head>
    
        <title>User Profile</title>
         <%@include file="Links.jsp" %>  
         <link href="css/user.css" rel="stylesheet" type="text/css"/>
         <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 0px;
            background-color: white;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #154042;
            color: white;
        }


        tr:hover {
            background-color: #ddd;
        }

        .product-info {
            align-items: center;
        }

        .product-image {
            max-width: 50px;
            max-height: 50px;
            margin-right: 10px;
        }
        img
        {
            height: 100px;
        }
        .track
        {
            color: black;
            font-size:15px;
        }
         @media (max-width: 768px) {
       
        .product-info {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .product-image {
            max-width: 30px;
            max-height: 30px;
            margin-right: 10px;
        }
        .track {
            font-size: 0.875rem; 
        }

        th,
        td ,.track,.btn, .fa-inr{
            font-size: 10px; 
        }
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
        <a class="nav-link " href="index.jsp">Back to Shopping</a>
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
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th class="d-none d-md-table-cell">Order ID</th>
                        <th>Date</th>
                        <th>Products</th>
                        <th>Total Price</th>
                        <th>Track Order</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="d-none d-md-table-cell">000</td>
                        <td>2023-09-13</td>
                        <td>
                            <div class="product-info">
                                <img class="product-image" src="images/audio1.png" alt="Product A">
                                Airdopes Boat
                            </div>
                            <div class="product-info">
                                <img class="product-image" src="images/laptop2.png" alt="Product B">
                                DELL Laptop
                            </div>
                        </td>
                        <td>61,000 <i class="fa fa-inr" aria-hidden="true"></i></td>
                        <td><a href="tracking.jsp" class="track text-light btn btn-danger btn-sm">Track Order</a></td>
                    </tr>
                    <tr>
                        <td class="d-none d-md-table-cell">001</td>
                        <td>2023-09-10</td>
                        <td>
                            <div class="product-info">
                                <img class="product-image" src="images/audio1.png" alt="Product A">
                                Airdopes Boat
                            </div>
                        </td>
                        <td>3500 <i class="fa fa-inr" aria-hidden="true"></i></td>
                        <td><a href="" class="track btn btn-info btn-sm">Reorder</a></td>
                    </tr>
                    <tr>
                        <td class="d-none d-md-table-cell">002</td>
                        <td>2023-09-11</td>
                        <td>
                            <div class="product-info">
                                <img class="product-image" src="images/laptop3.png" alt="Product C">
                                HP Laptop
                            </div>
                        </td>
                        <td>55000 <i class="fa fa-inr" aria-hidden="true"></i></td>
                        <td><a href="" class="track btn btn-info btn-sm">Reorder</a></td>
                    </tr>
                    <tr>
                        <td class="d-none d-md-table-cell">007</td>
                        <td>2023-09-11</td>
                        <td>
                            <div class="product-info">
                                <img class="product-image" src="images/cam3.png" alt="Product C">
                                Sony Camera
                            </div>
                        </td>
                        <td>25000 <i class="fa fa-inr" aria-hidden="true"></i></td>
                        <td><a href="" class="track btn btn-info btn-sm">Reorder</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

  <%
    }
%>
    </div>
       </div>
    </body>
</html>