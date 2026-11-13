
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <link rel="stylesheet" href="Detailpage.css">
  
          </head>
  <body style="background-color:#b9e12b;">
 

	<%
  
  String id= request.getParameter("Staff_id").trim();
  System.out.println("Staff Id update page"+id);
  Class.forName("com.mysql.jdbc.Driver");
      Connection dbcon = DriverManager.getConnection(
              "jdbc:mysql://localhost/petcareservice", "root", "root");
      System.out.println("Connect to Database");
      
PreparedStatement ps=dbcon.prepareStatement("update Staff set Staff_status=? where Staff_id=?");
ps.setInt(1,0);
ps.setString(2,id);
int i=ps.executeUpdate();
      if (i>0) {
      System.out.println("Update Staff status ok!!");
		//ResultSet res = smnt.executeQuery();
      %>  
   
        <% 
       }
	
      %>
      <jsp:forward page="StaffDeactiveSuccessful.jsp" />
	<% 
		//res.close();
       
		ps.close();
		dbcon.close();
	%>

</body>
</html>
