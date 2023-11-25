<%@ page contentType="text/html; charset=UTF-8" import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
    Statement stmt = con.createStatement();

    String cmd = "select id, name, email from registration1 where email='" + email + "' and password='" + password + "'";
    ResultSet rs = stmt.executeQuery(cmd);

    if (rs.next()) {
        String name = rs.getString("name");
        session.setAttribute("userName", name);
        int id = rs.getInt("id");
        session.setAttribute("userId", id);
        email = rs.getString("email");
        session.setAttribute("userEmail", email);
        response.sendRedirect("index.jsp");
           String cmd1 = "INSERT INTO userinfo (userid, name, email) " +
                "SELECT id, name, email FROM registration1 WHERE email = '" + email + "'";
        
    }
    
    else {
        out.print("email or Password incorrect");
    }
%>
