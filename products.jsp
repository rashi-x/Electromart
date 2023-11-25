<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<html>

<head>
 <%@include file="Links.jsp" %>  
  <link href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link href="css/test2.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
      <div id="proslide">
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
    Statement stmt = con.createStatement();
    
  ResultSet rs1 = stmt.executeQuery("SELECT id, description, price, image FROM products WHERE stock ='In stock'");

    %>
    <div class="wrapper">
    
        <div class="carousel">
          <%
          int cardCount = 0;
          while (rs1.next() && cardCount < 6) {
              int productId = rs1.getInt("id");
              String productDescription = rs1.getString("description");
              String productPrice = rs1.getString("price");
              byte[] imageData = rs1.getBytes("image");
              String imageBase64 = Base64.getEncoder().encodeToString(imageData);
          %>
          <div>
             <div class="card cfl">
                <div class="imgBox">
                    <img src='data:image/jpeg;base64,<%= imageBase64 %>' alt='Product Image' class="mouse card-img-top">
                </div>
                <div class="contentBox">
                    <h3><%= productDescription %></h3>
                    <h4 class="price">₹<%= productPrice %></h4>
                    <a href="prodesc.jsp?productId=<%= productId %>" class="buy">Buy Now</a>
                </div>
            </div>
          </div>
            <%
            cardCount++;
        }
        %>
          </div>    
        </div>
      </div>
 
  <script>
$(document).ready(function(){
  $('#proslide .carousel').slick({
    speed: 500,
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    dots: true,
    centerMode: true,
    responsive: [{
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    }, {
      breakpoint: 800,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        dots: true,
        infinite: true,
      }
    }, {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 2000,
      }
    }]
  });
});
</script>
     </body>
  </html>