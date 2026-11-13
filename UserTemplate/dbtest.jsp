<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   Class.forName("com.mysql.jdbc.Driver");
   Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
   System.out.println("Connect to Database");
%>
<p>hello!</p>
</body>
</html>