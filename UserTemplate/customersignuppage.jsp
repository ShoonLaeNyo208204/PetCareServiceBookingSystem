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
    if(request.getMethod().equalsIgnoreCase("post")) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("cpassword");
        
        if(password.equals(confirmPassword)) {
            try {

            	   Class.forName("com.mysql.jdbc.Driver");
            	   Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
            	   System.out.println("Connect to Database1111");

            			
            	   
            	 String query1 = "insert into Customer(C_Email,Password) values(?,?)";
            	   PreparedStatement pstmt = dbcon.prepareStatement(query1);
            	   System.out.println("Connect to Database11112");

            	   pstmt.setString(1,email);
            	   pstmt.setString(2,password);
            	   System.out.println("Connect to Database11113");
            	pstmt.executeUpdate();
            	  System.out.println("Connect to Database11113");

            	  System.out.println("Customer information are inserted!!!");
            	  pstmt.close();
            	dbcon.close();
 out.println("<p>Sign up successful!</p>");
            } catch (Exception e) {
                // Print error message
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        } else {
            // Print error message
            out.println("<p>Passwords do not match</p>");
        }
    }
    %>
 
<jsp:forward page="Home.jsp"></jsp:forward>
</body>
</html>