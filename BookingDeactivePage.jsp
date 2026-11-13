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
  
  String id= request.getParameter("B_id").trim();
  System.out.println("Package Id:"+id);
  Class.forName("com.mysql.jdbc.Driver");
      Connection dbcon = DriverManager.getConnection(
              "jdbc:mysql://localhost/petcareservice", "root", "root");
      System.out.println("Connect to Database");
      
PreparedStatement ps=dbcon.prepareStatement("update Booking set B_status=? where B_id=?");
ps.setInt(1,0);
ps.setString(2,id);
 int rowaffect=ps.executeUpdate();
      if(rowaffect>0){
      System.out.println("Delete Package status ok!!");
		//ResultSet res = smnt.executeQuery();
	
      %>
       <%  }
		//res.close();
       
		ps.close();
		dbcon.close();
	%>
	<jsp:forward page="BookingDeactiveSuccessfulPage.jsp" />

</body>
</html>