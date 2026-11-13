<%@ page import="java.sql.*,java.io.*" errorPage="PackageErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking System</title>

 </head>
<body>
<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String description=request.getParameter("description");

Class.forName("com.mysql.jdbc.Driver");
Connection dbcon=DriverManager.getConnection("jdbc:mysql://localhost/petcareservice","root","root");
System.out.println("Connect to Database!!");


String query="insert into Package(P_name,P_price,P_description,P_Status)values(?,?,?,?)";

PreparedStatement pstmt=dbcon.prepareStatement(query);
pstmt.setString(1,name);
pstmt.setString(2,price);
pstmt.setString(3,description);
pstmt.setInt(4,1);
pstmt.executeUpdate();
System.out.println("CreatePackage are successfully !!!");
pstmt.close();
dbcon.close();


%>
<jsp:forward page="CreatePackageSuccessfulPage.jsp" />

     </body>
</html>