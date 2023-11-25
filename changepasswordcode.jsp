<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, java.util.Base64"  %>

<%
Object userName = session.getAttribute("userName");
if (userName == null) {
    response.sendRedirect("login.jsp");
} else {
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String oldPassword = request.getParameter("old_password");
        String newPassword = request.getParameter("new_password");
        String confirmNewPassword = request.getParameter("confirm_password");
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping", "root", "");
    Statement stmt = con.createStatement();


         
//            int userId = (int) session.getAttribute("id");
            Integer userId = (Integer) session.getAttribute("userId");
            String cmd = "SELECT password FROM registration1 WHERE id = " + userId;
            ResultSet rs = stmt.executeQuery(cmd);
        

            if (rs.next()) {
                String storedPassword = rs.getString("password");
                if (storedPassword.equals(oldPassword) && newPassword.equals(confirmNewPassword) && newPassword.length() >= 8) {
                    
                    String updateQuery = "UPDATE registration1 SET password = '" + newPassword + "' WHERE id = " + userId;
                    int rowsUpdated = stmt.executeUpdate(updateQuery);
                    if (rowsUpdated > 0) {
                        out.print("Password changed successfully.");
                        response.sendRedirect("userprofile.jsp");
                    } else {
                        out.print("Password change failed. Please try again.");
                    }
                } else {
                    out.print("Password change failed. Please check your inputs.");
                }
            } else {
                out.print("Error: User not found.");
            }
        }
    }
%>