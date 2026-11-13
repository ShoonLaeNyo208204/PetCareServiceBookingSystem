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
    // Retrieve session variable
    HttpSession s=request.getSession();
	 int cid=Integer.parseInt(String.valueOf(s.getAttribute("C_id")));
	 System.out.println("cid is "+cid);
	 
   
    // Get form data
    String customerName = request.getParameter("name");
    String customerPhone = request.getParameter("phno");
    String message = request.getParameter("message");

    String subject = request.getParameter("subject");
    String email = request.getParameter("email");
    // Other form data

    // Perform database insertion
    
    	
    
    	  Class.forName("com.mysql.jdbc.Driver");
   	   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
   	   System.out.println("Connect to Database1111");

       
        // Insert feedback data into feedback table
        PreparedStatement feedbackStmt = conn.prepareStatement("INSERT INTO feedback (C_name,C_Email,C_Phoneno,Subject,Message,C_id) VALUES (?,?,?,?,?,?)");
        
        feedbackStmt.setString(1,customerName);
        feedbackStmt.setString(2,email);
        feedbackStmt.setString(3, customerPhone);
        feedbackStmt.setString(4,subject);
        feedbackStmt.setString(5,message);
        feedbackStmt.setInt(6,cid);
        
        
       
        // Assuming you want to store customer phone in feedback table
        feedbackStmt.executeUpdate();
        System.out.println("User feedback are successfuly inserted");
        %>
        

<h2>Feedback submitted successfully!</h2>
<%
  feedbackStmt.close();
  conn.close();
  %>
  </body>
  </html>




