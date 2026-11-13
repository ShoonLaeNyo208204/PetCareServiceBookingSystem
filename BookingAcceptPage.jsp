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
	System.out.println("Connect to Database!!");
	Statement smnt = dbcon.createStatement();
 String Bid=request.getParameter("B_id");
 System.out.println(Bid);
 PreparedStatement ps = dbcon
			.prepareStatement("update booking set B_status=? where B_id like ?");
 ps.setInt(1,0 );
	ps.setString(2, Bid);
int rowaffect=	ps.executeUpdate();
if(rowaffect>0){
	System.out.println("Booking have been successful accepted!! ");%>
	
			<jsp:forward page="BookingAcceptSuccessfulPage.jsp" />
			
			<%}
				ps.close();
				smnt.close();
				dbcon.close();
			
			
 
 %>
</body>
</html>