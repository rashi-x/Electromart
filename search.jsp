<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
    String search = request.getParameter("search");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
    Statement stmt = con.createStatement();

    String cmd = "select * from products where category='" + search + "'";

    ResultSet rs = stmt.executeQuery(cmd);

    if (rs.next()) {
        String categoryPage = ""; 

       
        if ("audio".equalsIgnoreCase(search)) {
            categoryPage = "audio.jsp";
        } 
       
        else if ("camera".equalsIgnoreCase(search)) {
            categoryPage = "cam.jsp";
        } else if ("smartphone".equalsIgnoreCase(search)) {
            categoryPage = "mobile.jsp";
        }
        else if ("watch".equalsIgnoreCase(search) ) {
            categoryPage = "watch.jsp";
        }
        else if ("Tv".equalsIgnoreCase(search)) {
            categoryPage = "TV.jsp";
        }
        else if ("Laptop".equalsIgnoreCase(search)) {
            categoryPage = "computer.jsp";
        }
         else if ("other".equalsIgnoreCase(search)) {
            categoryPage = "acc.jsp";
        }

        if (!categoryPage.isEmpty()) {
            session.setAttribute("search", search);
            response.sendRedirect(categoryPage);
        } else {
            out.print("Category not found.");
        }
    } else {
        out.print("Does not exist");
    }
%>
