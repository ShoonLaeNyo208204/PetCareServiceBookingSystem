<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <body>
  

	<%
  
  String id= request.getParameter("S_id").trim();
  System.out.println("Service Id update page"+id);
  Class.forName("com.mysql.jdbc.Driver");
      Connection dbcon = DriverManager.getConnection(
              "jdbc:mysql://localhost/petcareservice", "root", "root");
      System.out.println("Connect to Database");
      
PreparedStatement ps=dbcon.prepareStatement("update Service set S_status=? where S_id=?");
ps.setInt(1,0);
ps.setString(2,id);
int i=ps.executeUpdate();
      if (i>0) {
      System.out.println("Update Service status ok!!");
		//ResultSet res = smnt.executeQuery();
	
      %>
   
      
      <% 
       }
	
      %>
	<% 
		//res.close();
       
		ps.close();
		dbcon.close();
	%>
  <jsp:forward page="ServiceDeactiveSuccessfulPage.jsp" />
</body>
</html>

