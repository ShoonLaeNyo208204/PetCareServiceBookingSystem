<%@ page import="java.sql.*,java.io.*" errorPage="PackageErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking System</title>
<style>
body{
    background-color:#b9e12b;
    
}
img{
    width:700px;
    height:550px;
    border:1px solid grey;
    border-radius: 13px;
    box-shadow:15px 15px 15px grey;
    
    
}
h3{
   color:brown;
   font-size:2em;
   font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
   
 }
 </style>
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

<center><img src="/Petcare/images/createstaffsuccess.png" alt="Image"/>
				
     <br><br>
	<h3>Package are successfully created!!!</h3>
	</center>

</body>
</html>