<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.Base64"  %>
<!DOCTYPE html>
<html>
<head>
    <title>My Wishlist</title>
    <%@ include file="Links.jsp" %>
   
    <link href="css/wishlistt.css" rel="stylesheet" type="text/css"/>
</head>
<body>


	<div class="cart-wrap">
		<div class="container">
	        <div class="row">
			    <div class="col-md-12">
                                <a class="btn btn-sm btn-danger" style="color:white !important" href="index.jsp">Back to Shopping</a>
                <div class="main-heading mb-10">
                    <center>My Wishlist</center>
                </div>
			        
			        <div class="table-wishlist">
				        <table class="table-responsive" cellpadding="0" cellspacing="0" border="0" width="100%">

                <thead>
 
				        	
					        	<tr>
					        		<th width="45%">Product Name</th>
					        		<th width="15%">Unit Price</th>
					        		<th width="15%" class="d-none d-md-table-cell">Stock Status</th>
					        		<th width="15%" class="text-center d-none d-md-table-cell">Action</th>
					        		<th width="10%"></th>
					        	</tr>
					        </thead>
					        <tbody>
	<%
              Integer userId = (Integer) session.getAttribute("userId");

                               if (userId != null) {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
                                Statement stmt = con.createStatement();
 
                                String query = "SELECT p.id, p.description, p.price, p.stock, p.image " +
                                               "FROM products p INNER JOIN wishlist w ON p.id = w.productid " +
                                               "WHERE w.userid =" + userId;
                                ResultSet rs = stmt.executeQuery(query);

                                
                                boolean wishlistEmpty = !rs.next();

                                if (wishlistEmpty) {
//                                  response.sendRedirect("login.jsp");
                            %>
                                
                                <tr>
                                    <td colspan="4">Wishlist is empty</td>
                                </tr>
                            <%
                                } else {
                                    
                                    do {
                                        int productId = rs.getInt("id");
                                        String productDescription = rs.getString("description");
                                        String productPrice = rs.getString("price");
                                        String stockStatus = rs.getString("stock");
                                        byte[] imageData = rs.getBytes("image");
                                        String imageBase64 = Base64.getEncoder().encodeToString(imageData);
                            %>
					        	<tr>
					        		<td width="45%">
					        			<div class="display-flex align-center">
		                                    <div class="img-product">
		                                    <img src="data:image/jpeg;base64, <%= imageBase64 %>" alt="<%= productDescription %>" class="mCS_img_loaded">
		                                    </div>
		                                    <div class="name-product">
		                                        <%= productDescription %>
		                                    </div>
	                                    </div>
	                                </td>
					        		<td width="15%" class="price"><%= productPrice %></td>
					        		<td width="15%"><span class="in-stock-box d-none d-md-table-cell"><%= stockStatus %></span></td>
                                                                <td width="15%">  <a href="addtocart.jsp?productId=<%= productId %>"><button class="round-black-btn small-btn">Add to Cart</button></a></td>
					        		<td width="10%" class="text-center"><a href="Deletecode.jsp?id=<%= productId %>" class="trash-icon"><i class="fa fa-trash"></i></a></td>
					        	</tr>
					        	 <%
                                    } while (rs.next());
                                }

                            %>
				        	</tbody>
				        </table>
                                                        
				    </div>
			    </div>
			</div>
		</div>
	</div>
	
              <%
        
    } else {
        
%>
        <script>
            alert("You must log in first.");
            window.location.href = "login.jsp";
        </script>
<%
    }
%>                      
</body>
</html>
