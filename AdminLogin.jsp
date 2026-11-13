<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Pet Care Service Booking System</title>
</head>
<body>
<%
	String email=request.getParameter("your-email").trim();
	String psw=request.getParameter("password").trim();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
	System.out.println("Connect to Database");
	
	String sql="Select * from Admin where A_email=? and A_password=?";
	PreparedStatement pstmt=dbcon.prepareStatement(sql);
	pstmt.setString(1,email);
	pstmt.setString(2,psw);
	
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next())
	{
		System.out.println("Query OK!!");
		%>
		<jsp:forward page="Dashboard.html" />
		<%
	}
	else{
		System.out.println("Empty set return!!");
		%>
		
		<font color="red">Your email or password is incorrect.Try Again!</font>
		<jsp:forward page="AdminLoginForm.html" />
	<%}%>
</body>
</html>