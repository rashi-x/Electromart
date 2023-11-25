<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping</title>
            <%@include file="Links.jsp" %>   
            <style>
                html {
  color-scheme: dark;
}
            </style>
    </head>
    
    <body>
        
    <%@include file="topp.jsp" %>
    <div class="carousel slide" data-ride="carousel" id="abc">
		<ol class="carousel-indicators">
		<li data-slide-to="0" data-target="#abc">
		</li>
               
		<li data-slide-to="1" data-target="#abc">
		</li>
		<li data-slide-to="2" data-target="#abc">
		</li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
                <img src="images/Ban1.jpg" alt="" style="height:400px; width:100%;">
			</div>
			<div class="carousel-item">
                            <img src="images/ban2.jpg" alt="" style="height:400px; width:100% ">
			</div>
			<div class="carousel-item">
                            <img src="images/ban3.jpg" alt="" style="height:400px; width:100%;">
			</div>
		</div>
		<a href = "#abc" class="carousel-control-prev" data-slide="prev">
		<span class="carousel-control-prev-icon"></span>
		</a>
		<a href = "#abc" class="carousel-control-next" data-slide="next">
		<span class="carousel-control-next-icon"></span>
		</a>
	</div>
        
     <div class="product-content">
       <BR>
       <div class="section-header">
        <h3>TRENDING PICKS</h3>
    </div>
 <div class="container">
<div class="card-deck row">
<div class="col-xs-12 col-sm-6 col-md-4">
  <div class="card">
     <a href="boat.jsp">
      <img class="card-img-top" src="images/cadet.png" alt="Card image cap"> 
      </a>
    
  </div>
</div>
 
<div class="col-xs-12 col-sm-6 col-md-4">
  <div class="card mb-4">
    <a href="boat.jsp">
      <img class="card-img-top" src="images/boatt.jpeg" alt="Card image cap">
     
      
      </a>
 

  </div>
</div>

<div class="col-xs-12 col-sm-6 col-md-4">  

  <div class="card mb-4">  
      <a href="boat.jsp">
      <img class="card-img-top" src="images/boat.webp" alt="Card image cap">
      
        
      </a>
    
  
</div>
</div>
</div>      
        
 </div>
  
</div>
    
    
    
    
   <div class="product-content">
       <BR><!--  -->
       <div class="section-header">
        <h3>COMING SOON</h3>
    </div>
 <div class="container">
<div class="card-deck row">

  <div class="col-xs-12 col-sm-6 col-md-6">
  <div class="card">

      <img class="card-img-top" src="images/m3.jpeg" alt="Card image cap">


  </div>
  </div> 

<div class="col-xs-12 col-sm-6 col-md-6">
  <div class="card mb-4">
   
      <img class="card-img-top" src="images/m4.jpeg" alt="Card image cap">

  </div>
</div>
</div>
        </div>
    
  </div>
 
  
        
<div class="product-content">
    <div class="section-header">
        <h3>Featured Product</h3>
    </div>
    
    <%@include file="products.jsp" %>
</div>
 <%@include file="footer.jsp"%>  
 
    </body>
</html>