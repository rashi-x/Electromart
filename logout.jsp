<%-- 
    Document   : logout
    Created on : 16-Sept-2023, 3:51:46 pm
    Author     : Rashi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     session.invalidate();
    response.sendRedirect("index.jsp");
    %>

