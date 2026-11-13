<%@ page import="java.sql.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Care Service Booking System</title>
</head>
<body>
 <%
        // Establish connection to the database
        Connection conn = null;
        Statement stmt = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
        	System.out.println("Connect to Database!!");

            stmt = conn.createStatement();
            
            // Extract parameters from the request
            String currentPassword = request.getParameter("currentPassword");
            String newPassword = request.getParameter("newPassword");
            String confirmNewPassword = request.getParameter("confirmPassword");
            
            // Validate inputs (you should add more robust validation)
            if (currentPassword != null && newPassword != null && confirmNewPassword != null &&
                newPassword.equals(confirmNewPassword)) {
                
                // Change the password in the database (you should use prepared statements for better security)
                String sql = "UPDATE customer SET Password='" + newPassword + "' WHERE id=1 AND password='" + currentPassword + "'";
                int rowsAffected = stmt.executeUpdate(sql);
                
                if (rowsAffected > 0) {
                    out.println("Password changed successfully.");
                } else {
                    out.println("Failed to change password. Please make sure your current password is correct.");
                }
            } else {
                out.println("New password and confirm password do not match.");
            }
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        } finally {
            // Close database resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>


</body>
</html>