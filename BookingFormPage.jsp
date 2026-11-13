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

HttpSession s=request.getSession();
if(s!=null){
	String Cid=String.valueOf(s.getAttribute("Cid"));
     String service=String.valueOf(s.getAttribute("sid"));
	String staff=String.valueOf(s.getAttribute("Staff_id"));
	String image=String.valueOf(s.getAttribute("image"));
	String Petid=String.valueOf(s.getAttribute("Pet_id"));
	String petname=String.valueOf(s.getAttribute("petname"));
	String color=String.valueOf(s.getAttribute("color"));
	String gender=String.valueOf(s.getAttribute("gender"));
	String date=String.valueOf(s.getAttribute("date"));
	String time=String.valueOf(s.getAttribute("time"));
	String age=String.valueOf(s.getAttribute("age"));
	System.out.println(service);
	System.out.println(image);
	System.out.println(staff);
	System.out.println(Petid);
	System.out.println(petname);
	System.out.println(color);
	System.out.println(gender);
	System.out.println(date);
	System.out.println(time);
	
	
Class.forName("com.mysql.jdbc.Driver");
Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
System.out.println("Connect to Database!!");


String query="insert into Booking(C_id,Staff_id,S_id,Pet_id,Pet_name,Pet_Gender,Pet_Age,Pet_photo,color,date,time,B_status) values (?,?,?,?,?,?,?,?,?,?,?,?)";

PreparedStatement pstmt=dbcon.prepareStatement(query);
pstmt.setString(1,"1");
pstmt.setString(2,staff);
pstmt.setString(3,service);
pstmt.setString(4,Petid);
pstmt.setString(5,petname);
pstmt.setString(6,gender);
pstmt.setString(7,age);
pstmt.setString(8,image);
pstmt.setString(9,color);
pstmt.setString(10,date);
pstmt.setString(11,time);
pstmt.setInt(12,1);
int rowaffect=pstmt.executeUpdate();
if(rowaffect>0){
System.out.println("Booking successful!!!");%>
<jsp:forward page="BookingSuccessful.jsp" />
<%
}
pstmt.close();
dbcon.close();


%>
<%} %>
</body>
</html>