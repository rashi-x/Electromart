<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Watch</title>
           <%@include file="Links.jsp" %>  
           <link href="css/watch.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="topp.jsp" %>
        
    <div class="section-header">
        <h3 class="space">Mobiles</h3>
    </div>
          
       <div class="container d-flex justify-content-center mt-50 mb-50">
          
        <div class="row">
             <%
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
                Statement stmt = con.createStatement();
                
                ResultSet rs = stmt.executeQuery("SELECT id,description, image , price, emi FROM products WHERE category = 'Watch'");

                
                while (rs.next()) {
                    int productId = rs.getInt("id");
                    String productEmi = rs.getString("emi");
                    String productDescription = rs.getString("description");
                     String productPrice = rs.getString("price");
                    
                    byte[] imageData = rs.getBytes("image");
                    String imageBase64 = Base64.getEncoder().encodeToString(imageData);
            %>
           <div class="col-md-4 mt-2">
            
                
                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                    <img src="data:image/jpeg;base64,<%= imageBase64 %>" alt="<%= productDescription %>" class="card-img w-100 p-0">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body text-center">
                                        <div class="mb-2">
                                            <h6 class="font-weight-semibold mb-2">
                                                <a href="#" class="text-default mb-2" data-abc="true"><%= productDescription %></a>
                                            </h6>

                                            <a href="#" class="text-muted" data-abc="true">Watch</a>
                                        </div>

                                        <h3 class="mb-0 font-weight-semibold"><i class="fa fa-inr"></i><%= productPrice %></h3>

                                        <div>
                                           <i class="fa fa-star star"></i>
                                           <i class="fa fa-star star"></i>
                                           <i class="fa fa-star star"></i>
                                           <i class="fa fa-star star"></i>
                                        </div>

                                        <div class="text-muted mb-3">34 reviews</div>

                                        <button type="button" class="btn bg-cart"><i class="fa fa-cart-plus mr-2"></i>
                                            <a href ="prodesc.jsp?productId=<%= productId %>">Add to cart</a></button>

                                        
                                    </div>
                                </div>
                                        </div> 
<%
                }
               
            %>


        </div>
    </div>
         <%@include file="footer.jsp"%> 
         <script src="js/jquery-slim.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
