<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>
    <%@include file="Links.jsp" %>
    <link href="css/productdescrip.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <%@include file="topp.jsp" %>
     <% 
        String productId = request.getParameter("productId");
        String productName = "";
        String productEmi = "";
        String productDescription = "";
        String productPrice = "";
        String imageBase64 = "";

        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT name, emi, description, price, image FROM products WHERE id=" + productId);

            if (rs.next()) {
                productName = rs.getString("name");
                productEmi = rs.getString("emi");
                productDescription = rs.getString("description");
                productPrice = rs.getString("price");
                byte[] imageData = rs.getBytes("image");
                imageBase64 = Base64.getEncoder().encodeToString(imageData);
            }

            
    %>
    <div class="container ">
        
        <div class="row ">
            <div class="col-md-12">
                <div class="card ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="pro-img-details">
                                  <img src='data:image/jpeg;base64,<%= imageBase64 %>' alt='Product Image'>
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                                <h3 class="pro-d-title">
                                    <a href="#" class="">
                                      <%= productName %>
                                    </a>
                                </h3>
                                <h1>
                                    <%= productDescription %>
                                </h1>
                                <div class="product-meta">
                                    <span class="posted-in"> <strong>Categories:</strong> <a rel="tag" href="#"><%= productName %></a>,.</span>
                                    <span class="tagged-as"><strong>Tags:</strong> <a rel="tag" href="#"><%= productName %></a></span>
                                </div>
                                    <div class="m-bot15"> <strong>Price : </strong><span class="pro-price"><i class="fa fa-inr"></i> <%= productPrice %> </span></div>
                                    <br> <div class="m-bot15"> <strong>EMI: </strong><span class="pro-price"><i class="fa fa-inr"></i> <%= productEmi %>  </span></div>
                                    <br><br>
                                <p>
                                    <a href="addtocart.jsp?productId=<%= productId %>"><button class="btn btn-danger addtocart" type="button" ><i class="fa fa-shopping-cart"></i> Add to Cart</button></a>
                                    <a href="addtowishlist.jsp?productId=<%= productId %>"><button class="btn btn-danger addtocart" type="button"><i class="fa fa-shopping-cart"></i> Wishlist</button></a>

                                </p>
                                  <p>
                                    <a href="addtocart.jsp?productId=<%= productId %>"><button class="btn btn-danger addtocart" type="button" ><i class="fa fa-shopping-cart"></i> Buy Now</button></a>
                                 

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@include file="footer.jsp"%>  
</body>
</html>
