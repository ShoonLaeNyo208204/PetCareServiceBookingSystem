<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="CreateForm.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="leftMenu&header.html" />
<%
Class.forName("com.mysql.jdbc.Driver");
   Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservcie", "root", "root");
   System.out.println("Connect to Database");
   
   %>
   Hello
      
   <jsp:include page="footer.html" />
</body>
</html>