
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="table.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking System</title>
</head>
<body>
	<%
  
  String id= request.getParameter("P_id").trim();
  System.out.println("Package Id update page"+id);
  Class.forName("com.mysql.jdbc.Driver");
      Connection dbcon = DriverManager.getConnection(
              "jdbc:mysql://localhost/petcareservice", "root", "root");
      System.out.println("Connect to Database");
      
PreparedStatement ps=dbcon.prepareStatement("update Package set P_Status=? where P_id=?");
ps.setInt(1,0);
ps.setString(2,id);
ps.executeUpdate();
      
      System.out.println("Update Package status ok!!");
		//ResultSet res = smnt.executeQuery();
	
      %>
     
          
<center><img src="/Petcare/images/createstaffsuccess.png" alt="Image"/>
      <h1>Deactivate is successfully done.</h1></center>
      
      
      
      <% 
       
	
      %>
	<% 
		//res.close();
       
		ps.close();
		dbcon.close();
	%>

</body>
</html>
