<%@ page import="java.sql.*,java.io.*" errorPage="PackageErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking System</title>

 </head>
<body>
<%
String name=request.getParameter("type");
String clas=request.getParameter("class");


Class.forName("com.mysql.jdbc.Driver");
Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
System.out.println("Connect to Database!!");


String query="insert into Pet(Pet_type,ClassOfAnimals)values(?,?)";

PreparedStatement pstmt=dbcon.prepareStatement(query);
pstmt.setString(1,name);
pstmt.setString(2,clas);
pstmt.executeUpdate();
System.out.println("Inserting Pet is successfully !!!");
pstmt.close();
dbcon.close();


%>
<jsp:forward page="CreatePetSuccessfulPage.jsp" />

     </body>
</html>