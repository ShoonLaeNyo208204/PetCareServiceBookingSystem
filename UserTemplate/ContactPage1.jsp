<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateServicePage</title>
</head>
<body>
<%
String name = request.getParameter("name").trim();
String email= request.getParameter("email").trim();
String phoneno= request.getParameter("phoneno").trim();

String subject = request.getParameter("subject").trim();
String message = request.getParameter("message").trim();


Class.forName("com.mysql.jdbc.Driver");
Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
System.out.println("Connect to Database");

String query = "insert into feedback (C_name,C_Email,C_Phoneno,Subject,Message) values(?,?,?,?,?)";
PreparedStatement pstmt = dbcon.prepareStatement(query);
pstmt.setString(1,name);
pstmt.setString(2,email);
pstmt.setString(3,phoneno);
pstmt.setString(4,subject);
pstmt.setString(5,message);
pstmt.executeUpdate();
System.out.println("Service information are inserted!!!");

pstmt.close();
dbcon.close();

%>
<jsp:forward page="ContactPage1.jsp"/>
<center><img src="/Petcare/images/createstaffsuccess.png" alt="Image"/>
				
     <br><br>
	<h3>Feedback are successfully created!!!</h3>
	</center>

</body>
</html>