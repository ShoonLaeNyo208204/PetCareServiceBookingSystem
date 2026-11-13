<%@ page import="java.sql.*,java.io.*" errorPage="StaffErrorPage.jsp"%>

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
    String Email = request.getParameter("email");
    String pass = request.getParameter("password");
    
    // JDBC connection parameters
    String url = "jdbc:mysql://localhost:8080/petcareservice";
    String C_Email = "C_Email";
    String Password = "Password";
    
    try {
    	 Class.forName("com.mysql.jdbc.Driver");
    	   Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
    	   System.out.println("Connect to Database1111");

        PreparedStatement pstmt = dbcon.prepareStatement("SELECT * FROM Customer WHERE C_Email=? AND Password=?");
        pstmt.setString(1, Email);
        pstmt.setString(2, pass);
        
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            // Successful login
            session.setAttribute("Email",C_Email);
            response.sendRedirect("Home.jsp");
        } else {
            // Invalid credentials
            out.println("Invalid username or password");
        }
        
        dbcon.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>

</body>
</html>
