<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String subject=request.getParameter("subject");
String message=request.getParameter("message");
HttpSession s=request.getSession();
String cid=String.valueOf(String.valueOf(s.getAttribute("Cid")));
String cemail=String.valueOf(String.valueOf(s.getAttribute("cemail")));
String cphone=String.valueOf(String.valueOf(s.getAttribute("Cphone")));
System.out.println("cid is "+cid);
Class.forName("com.mysql.jdbc.Driver");
Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
System.out.println("Connect to Database!!");


	String query="insert into feedback(C_name,C_Email,C_Phoneno,Subject,Message,C_id) values(?,?,?,?,?,?)";

	PreparedStatement pstmt=dbcon.prepareStatement(query);
	pstmt.setString(1,name);
	pstmt.setString(2,email);
	pstmt.setString(3,phone);
	pstmt.setString(4,subject);
	pstmt.setString(5,message);
	pstmt.setString(6,cid);
	int rowaffect=pstmt.executeUpdate();
if(rowaffect>0)
{
	System.out.println("feedback added??");
	


%>
<h1>Feedback Added</h1>
<%
}
%>
</body>
</html>