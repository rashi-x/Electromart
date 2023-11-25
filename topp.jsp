<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.io.*, java.util.Base64" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Electro Shop</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
       <link href="css/bootstrap.css" rel ="stylesheet">
	<link href="css/animate.css" rel ="stylesheet">
	<link href="css/hover.css" rel ="stylesheet">
	<link href="css/font-awesome.css" rel ="stylesheet">
	<script src="js/jquery-slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src = "js/bootstrap.js"></script> 
	<script src ="js/wow.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/sidepanel.css" rel="stylesheet" type="text/css"/>
        <link href="css/sidepanel.css" rel="stylesheet" type="text/css"/>
        <link href="css/topp.css" rel="stylesheet" type="text/css"/>
        <script>
        function openNav() {
          document.getElementById("mySidebar").style.width = "250px";
          document.getElementById("main").style.marginLeft = "250px";
        }
        
        function closeNav() {
          document.getElementById("mySidebar").style.width = "0";
          document.getElementById("main").style.marginLeft= "0";
        }
       
        </script>
    </head>

    <body>
        
    <div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
    <a href="aboutus.jsp">About</a>
    <a href="#">Services</a>
    <a href="#">Clients</a>
    <a href="#">Contact</a>
    
    
  </div>

          <div id="details"><button class="openbtn" onclick="openNav()" id="who">Details</button>
        </div>
        
        
        <nav class="navbar navbar-expand-lg"> <a class="navbar-brand" href="index.jsp" data-abc="true">
            <img src="images/Logo.png" style="height:50px;" id="logo">
            
            </a> 
            
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span> </button>
     <form class="form-inline my-2 my-lg-0" method="post" action="search.jsp">  
         <input class="form-control mr-sm-2" type="text" placeholder="Search"  id="searchbar" name="search"> 
     
         <button class="btn btn-dark my-2 my-sm-0 searchbtn" type="submit">Search</button> 
     </form>
             
    <div class="collapse navbar-collapse" id="navbarColor02">
        <ul class="navbar-nav ml-auto">
               <li class="nav-item"> <a class="nav-link" href="index.jsp" data-abc="true">
                    <i class="fa fa-home" aria-hidden="true"></i>
                  Home
                </a> </li>
            <li class="nav-item"> <a class="nav-link" href="cart.jsp" data-abc="true">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <span id="text">Cart</span> 
                </a>
            </li>
             <% 
            String userName = (String) session.getAttribute("userName");
            if (userName != null && !userName.isEmpty()) {
            %>
            <li class="nav-item"> <a class="nav-link" href="userprofile.jsp" data-abc="true">
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    Hi <%= session.getAttribute("userName")  %>
                </a> </li>
                 <%
            } else {
        %>
         <li class="nav-item"> <a class="nav-link" href="login.jsp" data-abc="true">
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    Hi Guest
                </a> </li>
  <%
            }
        %>
        </ul> 
    </div>
</nav>
        <!-- Top Bar end -->
        
        
        <div class="header">
            <div class="container">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav m-auto">                      
                            <div class=" dropdown ">
                                <a href="mobile.jsp" class="nav-link dropdown-toggle navtext" data-toggle="dropdown">MOBILES & TABLETS </a>
                                <div class="dropdown-menu custom-dropdown-menu">
                                    <a class='dropdown-item' href='mobile.jsp'>Smartphones</a>
                                    <a class='dropdown-item' href='watch.jsp'>Smartwatches</a>
                                    <a class='dropdown-item' href='apple.jsp'>Apple</a>
                                    <a class='dropdown-item' href='boat.jsp'>Boat</a>      
                                </div>
                            </div>

                             <a class='nav-item nav-link navtext' href='TV.jsp'>TELEVISIONS</a>
                            <a class='nav-item nav-link navtext' href='audio.jsp'>AUDIO</a>
                              <a class='nav-item nav-link navtext' href='computer.jsp'>COMPUTERS</a>
                            <a class='nav-item nav-link navtext' href='cam.jsp'>CAMERAS</a>
                              <a class='nav-item nav-link navtext' href='acc.jsp'>ACCESSORIES</a>
                        </div>
                    </div>




                </nav>
            </div>
        </div>
    
        
        
        
    </body>
</html>