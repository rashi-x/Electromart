<%-- 
    Document   : orderConfirmation
    Created on : 13-Sept-2023, 5:36:16 pm
    Author     : Rashi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="css/bootstrap.css" rel ="stylesheet">
        <script src="js/jquery-slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src = "js/bootstrap.js"></script> 
        <link href="css/font-awesome.css" rel ="stylesheet">
        <title>Order Confirmed Page</title>
        <style>
            #cardcon
            {
                background-color: rgb(203, 200, 202);
                margin: 20px;
                height: 555px;
            }
            h3
            {
                margin: 20px;
                padding: 30px;
                padding-bottom: 15px;
                margin-bottom: 0px;
            }
            .fa
            {
                color: green;
                font-size: 100;
            }
            button
            {
                background-color: rgb(223, 110, 24);
                color: white;
                border: none;
                height: 50px;
                border-radius: 3px;
                width: 150px;
            }
        </style>
    </head>
    <body>
        <div id="container">
            <div id="cardcon">
                <center>
                <h3>Your Order has been Received</h3>
                <br>
                <center><i class="fa fa-check"></i></center>
                <br>
                <h4>Thankyou For Placing Your Order</h4>
                <br>
                <P>Your Order ID is:5172528017</P>
                <br>
                <p>You will receive an order Confirmation email with details of your order</p>
                <br>
                <a href="index.jsp"><button class=" btn btn-sm">Continue Shopping</button></a>
                </center>
            </div>
        </div>
    </body>
</html>
