<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="UpdateForm.css" />
</head>
<body style=" background-color:#c9fdd1;">
 <jsp:include page="leftMenu&header.html" />
 <%
String id = request.getParameter("S_id");
          System.out.println(" service id="+id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection(
				"jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  Service where S_id=" + "'"+ id+ "'";
		ResultSet res = smnt.executeQuery(query);

		if (res.next()) {
			String photo=res.getString("S_Photo");
			int Sid = res.getInt("S_id");
			String name = res.getString("S_name");
			String price = res.getString("S_price");
			String description = res.getString("S_description");
			HttpSession s=request.getSession();
			s.setAttribute("S_id",Sid);
		
			System.out.println("Extract Service information from DB");
	%><center>
	<h1 class="title" >Service Information</h1>
	
	<form action="UpdateServicePage.jsp" method="post" class="form">
	<img class="photo" src="<%=photo%>" alt="Service Photo" width=200 height=200 /><br>
	<table border=0>
	<tr>
			<td>Service Name:</td>
			<td><input class="Cretext" type="text" name="name" value="<%=name%>" disabled /></td>
		</tr>
	<tr>
			<td>Price:</td>
			<td><input class="Cretext" type="text" name="price" value="<%=price%>" /></td>
		</tr>
		
		
		<tr>
			<td>Description:</td>
			<td><textarea name="description"><%=description%></textarea></td>
		</tr>
		<tr>
		<td><input style="margin-left:150px;" class="button1" type="submit" value="Update" name="btnUpdate"/></td>
		
	
	</tr>
	</table>
	</form>
	</center>
		<%
			}
			res.close();
			smnt.close();
			dbcon.close();
		%>
		<jsp:include page="footer.html" />
	</body>
</html>


