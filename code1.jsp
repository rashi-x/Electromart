<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
session.setAttribute("userName", name);

out.print("<br/>");
out.print("<br/>");
out.print(email);
out.print("<br/>");
out.print(password);
out.print("<br/>");
out.print("<br/>");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","");
  
Statement stmt = con.createStatement();

int result = stmt.executeUpdate("insert into registration1(Name, Email, Password) values('"+name+"', '"+email+"' , '"+password+"'  )");
if(result!=0)
{
response.sendRedirect("index.jsp");
}
else
{
out.print("Something went wrong");
}

%>









