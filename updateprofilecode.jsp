<%@ page contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<%
    String newName = request.getParameter("name");
    String birthday = request.getParameter("birthday");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String region = request.getParameter("region");
    String zipcode = request.getParameter("zipcode");
   Integer userId = (Integer) session.getAttribute("userId");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
    Statement stmt = con.createStatement();

    String cmd = "UPDATE userinfo SET " +
            "name = '" + newName + "', " +
            "birthday = '" + birthday + "', " +
            "gender = '" + gender + "', " +
            "phone = '" + phone + "', " +
            "email = '" + email + "', " +
            "streetAddress = '" + address + "', " +
            "city = '" + city + "', " +
            "region = '" + region + "', " +
            "zipcode = '" + zipcode + "' " +
            "WHERE userid = '" + userId + "'";

    int rs = stmt.executeUpdate(cmd);

  
    String cmd1 = "UPDATE registration1 SET " +
            "name = '" + newName + "' " +
            "WHERE id = '" + userId + "'";


    if (rs > 0) {
     session.setAttribute("userName", newName);
        out.println("Profile and registration updated successfully!");
    } else {
        out.println("Failed to update profile and/or registration.");
    }

  
    response.sendRedirect("userprofile.jsp");
%>

