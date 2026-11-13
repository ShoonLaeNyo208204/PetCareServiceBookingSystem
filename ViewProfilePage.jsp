<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Care Service Booking System</title>
</head>
<body>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection dbcon = DriverManager.getConnection(
	"jdbc:mysql://localhost/petcareservice", "root", "root");
System.out.println("Connect to Database");
Statement smnt=dbcon.createStatement();
HttpSession ses=request.getSession();
if(ses!=null){
	String Aid=String.valueOf(ses.getAttribute("Aid"));
	if(request.getParameter("change")!=null ){
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String img=request.getParameter("img");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String work=request.getParameter("work");
		System.out.println("Update name="+name);
		System.out.println("Update phone="+phone);
		
	PreparedStatement ps=dbcon.prepareStatement("update admin set A_name=?,A_email=?,A_photo=?,A_address=?,A_work=?,A_phone=? where A_id like ?");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,img);
		ps.setString(4,address);
		ps.setString(5,work);
		ps.setString(6,phone);
		ps.setString(7,Aid);
	int rowaffect=	ps.executeUpdate();
	if(rowaffect>0){
			System.out.println("Successful update service information");
       
	
	
%>
<jsp:forward page="UpdateSuccessfulProfile.jsp" />
<%}
	}
	}dbcon.close();
	%>
</body>
</html>