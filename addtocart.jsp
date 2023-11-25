<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add to cart</title>
    <%@ include file="Links.jsp" %>
</head>
<body>
    <%
       
        String productId = request.getParameter("productId");
        Integer userId = (Integer) session.getAttribute("userId");

        if (productId != null && userId != null) {
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
            Statement stmt = con.createStatement();
            String checkQuery = "SELECT COUNT(*) AS count FROM cart WHERE userid = " + userId + " AND productid = '" + productId + "'";
            ResultSet checkResult = stmt.executeQuery(checkQuery);
            checkResult.next();
            int count = checkResult.getInt("count");

            if (count == 0) {
                String cmd1 = "INSERT INTO cart (userid, productid) VALUES (" + userId + ", '" + productId + "')";
                int rs1 = stmt.executeUpdate(cmd1);
            }

           
            stmt.close();
            con.close();
        }

        
        response.sendRedirect("cart.jsp");
    %>
</body>
</html>
