<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.Base64"  %>
<html>
    <head>
        <%@ include file="Links.jsp" %>
        <title>Product Description</title>
            <link href="css/cart.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>

<section class="h-100 h-custom">
    <div class="container h-100 py-5">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col">
   <a class="btn btn-sm btn-danger" style="color:white !important" href="index.jsp">Back to Shopping</a>
          <div class="table-responsive">
              <H1 style="text-align:center">My Cart</h1>
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Shopping Bag</th>
                  <th scope="col">Type</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Price</th>
                </tr>
              </thead>
              
              
              <%
                  Integer userId = (Integer) session.getAttribute("userId");

    if (userId != null) {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
                                Statement stmt = con.createStatement();
                                String query = "SELECT p.id,p.name, p.description, p.price, p.stock, p.image " +
                                               "FROM products p INNER JOIN cart c ON p.id = c.productid " +
                                               "WHERE c.userid =" + userId;
                                ResultSet rs = stmt.executeQuery(query);

                                
                                boolean cartEmpty = !rs.next();

                                if (cartEmpty) {
//                                
                            %>
                                
                                <tr>
                                    <td colspan="4"><h3>cart is empty</h3></td>
                                </tr>
                            <%
                                } else {
                                    
                                    do {
                                        int productId = rs.getInt("id");
                                      String productName = rs.getString("name");
                                        String productDescription = rs.getString("description");
                                        String productPrice = rs.getString("price");
                                        String stockStatus = rs.getString("stock");
                                        byte[] imageData = rs.getBytes("image");
                                        String imageBase64 = Base64.getEncoder().encodeToString(imageData);
                            %>
              
              
              
              
              <tbody>
                <tr>
                  <th scope="row">
                    <div class="d-flex align-items-center">
                      <img src="data:image/jpeg;base64, <%= imageBase64 %>" alt="<%= productDescription %>" class="img-fluid rounded-3"
                        style="width: 120px;">
                      <div class="flex-column ms-4">
                        <p class="mb-2"> <%= productDescription %></p>
                        <p class="mb-0"> <%= productName %></p>
                      </div>
                    </div>
                  </th>
                  <td class="align-middle">
                    <p class="mb-0" style="font-weight: 500;"><%= productName %></p>
                  </td>
                  <td class="align-middle">
                    <div class="d-flex flex-row">
                      <button class="btn btn-link px-2"
                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                        <i class="fa fa-minus" aria-hidden="true"></i>
                      </button>
  
                      <input id="form1" min="0" name="quantity" value="2" type="number"
                        class="form-control form-control-sm" style="width: 50px;" />
  
                      <button class="btn btn-link px-2"
                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                        <i class="fa fa-plus"></i>
                      </button>
                    </div>
                  </td>
                  <td class="align-middle">
                    <p class="mb-0" style="font-weight: 500;"><%= productPrice %></p>
                  </td>
                </tr>
             
                
                 <%
                                    } while (rs.next());
                                }

                            %>
              </tbody>
            </table>
          </div>
                  
                  
  <div class="col-12 mt-5"> 
          <div class="card shadow-2-strong mt-5  mb-lg-0" style="border-radius: 16px;">
            <div class="card-body p-4">
  
              <div class="row">
                <div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
                  <form>
                    <div class="d-flex flex-row pb-3">
                      <div class="d-flex align-items-center pe-2">
                        <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1v"
                          value="" aria-label="..." checked />
                      </div>
                      <div class="rounded border w-100 p-3">
                        <p class="d-flex align-items-center mb-0">
                          <i class="fa fa-cc-mastercard fa-2x pe-2"></i>Credit
                          Card
                        </p>
                      </div>
                    </div>
                    <div class="d-flex flex-row pb-3">
                      <div class="d-flex align-items-center pe-2">
                        <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel2v"
                          value="" aria-label="..." />
                      </div>
                      <div class="rounded border w-100 p-3">
                        <p class="d-flex align-items-center mb-0">
                          <i class="fa fa-cc-visa fa-2x fa-lg pe-2"></i>Debit Card
                        </p>
                      </div>
                    </div>
                    <div class="d-flex flex-row">
                      <div class="d-flex align-items-center pe-2">
                        <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel3v"
                          value="" />
                      </div>
                      <div class="rounded border w-100 p-3">
                        <p class="d-flex align-items-center mb-0">
                          <i class="fa fa-cc-paypal fa-2x fa-lg pe-2"></i>PayPal
                        </p>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-6">
                  <div class="row">
                    <div class="col-12 col-xl-6">
                      <div class="form-outline mb-4 mb-xl-5">
                        <input type="text" id="typeName" class="form-control form-control-lg" size="17"
                          placeholder="John Smith" />
                        <label class="form-label" for="typeName">Name on card</label>
                      </div>
  
                      <div class="form-outline mb-4 mb-xl-5">
                        <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="MM/YY"
                          size="7" minlength="7" maxlength="7" />
                        <label class="form-label" for="typeExp">Expiration</label>
                      </div>
                    </div>
                    <div class="col-12 col-xl-6">
                      <div class="form-outline mb-4 mb-xl-5">
                        <input type="text" id="typeText" class="form-control form-control-lg" size="17"
                          placeholder="1111 2222 3333 4444" minlength="19" maxlength="19" />
                        <label class="form-label" for="typeText">Card Number</label>
                      </div>
  
                      <div class="form-outline mb-4 mb-xl-5">
                        <input type="password" id="typeText" class="form-control form-control-lg"
                          placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                        <label class="form-label" for="typeText">Cvv</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-xl-3">
                  <div class="d-flex justify-content-between" style="font-weight: 500;">
                    <p class="mb-2">Subtotal</p>
                    <p class="mb-2"><i class="fa fa-inr"></i>23549</p>
                  </div>
  
                  <div class="d-flex justify-content-between" style="font-weight: 500;">
                    <p class="mb-0">Shipping</p>
                    <p class="mb-0"><i class="fa fa-inr"></i>29.9</p>
                  </div>
  
                  <hr class="my-4">
  
                  <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                    <p class="mb-2">Total (tax included)</p>
                    <p class="mb-2"><i class="fa fa-inr"></i>26448</p>
                  </div>
  
                  <a href="orderConfirmation.jsp">
                       <div class="d-flex justify-content-between">
                      <button type="button" class="btn btn-primary btn-block btn-lg">
                   
                      <span>Checkout</span>
                      <span><i class="fa fa-inr"></i>26448</span>
                                        </button>

                    </div>
                  
                  </a>
  
                </div>
              </div>
  
            </div>
          </div>
  
        </div>
      </div>
    </div>
                   
  </section>
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
