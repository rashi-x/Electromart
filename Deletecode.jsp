<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>

<%
String productIdToDelete = request.getParameter("id");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","");
  
Statement stmt = con.createStatement();


int result = stmt.executeUpdate("delete from wishlist where productid= '"+productIdToDelete +"' ");
if(result!=0)
{
out.print("Data Deleted success");
response.sendRedirect("wishlist.jsp");
}
else
{
out.print("Something went wrong");
}

%>