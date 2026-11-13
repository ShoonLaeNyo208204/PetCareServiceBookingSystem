
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="table.css">
</head>
<body style=" background-color:#7ee98b;">

	<%
  
  String id= request.getParameter("P_id").trim();
  System.out.println("Package Id:"+id);
  Class.forName("com.mysql.jdbc.Driver");
      Connection dbcon = DriverManager.getConnection(
              "jdbc:mysql://localhost/petcareservice", "root", "root");
      System.out.println("Connect to Database");
      
PreparedStatement ps=dbcon.prepareStatement("update Package set P_Status=? where P_id=?");
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
	<jsp:forward page="PackageDeactiveSuccessfulPage.jsp" />
   
</body>
</html>
