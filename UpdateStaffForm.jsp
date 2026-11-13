<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="UpdateForm.css" />
 	</head>
<body style=" background-color:#c9fdd1;">
        <jsp:include page="leftMenu&header.html" />  
              <%
		String id = request.getParameter("Staff_id");
	         System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection(
				"jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  staff,service where staff.S_id=service.S_id and Staff_id=" +id;
		ResultSet res = smnt.executeQuery(query);

		if (res.next()) {
			
			String photo=res.getString("Staff_photo");
			String name = res.getString("Staff_name");
			String age = res.getString("Staff_age");
			String gender = res.getString("Staff_gender");
			String service = res.getString("S_name");
			String Nrc = res.getString("Nrc");
			String address = res.getString("Address");
			String phone = res.getString("Phone_no");
			String email=res.getString("Email");
			String qualification= res.getString("Qualification");
			 String salary = res.getString("Salary");
			// photo=request.getSession(""
					HttpSession s=request.getSession();
			s.setAttribute("Staff_id",id);
			System.out.println(photo);
			
			System.out.println("Extract Staff information from DB");
	%>
	
	
	<h1 class="title">Staff Information</h1>
	
	<form action="StaffUpdatePage.jsp" method="post" class="form">
		<img class="photo" src="<%=photo%>" alt="Staff Photo" width=130 height=130 />
	<table border=0>

	<tr>
			<td>Staff Name:</td>
			<td><input class="Cretext" type="text" name="name" value="<%=name%>" disabled size=30/></td>
		</tr>
	<tr>
			
		
		
		<tr>
			<td>Gender:</td>
			<td><input class="Cretext" type="text" name="gender" value="<%=gender%>" disabled size=30/></td>
		</tr><tr>
			<td>Nrc:</td>
			<td><input class="Cretext" type="text" name="nrc" value="<%=Nrc%>" disabled size=30/></td>
		</tr>
		<tr>
			<td>Service:</td>
			<td><input class="Cretext" type="text" name="gender" value="<%=service%>" disabled size=30/></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input class="Cretext" type="text" name="address" value="<%=address%>"  size=30/></td>
		</tr>
		<tr>
			<td>Phone Number:</td>
			<td><input class="Cretext" type="text" name="phoneno" value="<%=phone%>" size=30/></td>
		</tr>
		
		<tr>
			<td>Email:</td>
			<td><input class="Cretext" type="text" name="email" value="<%=email%>" size=30/></td>
		</tr>
		
		<td>Age:</td>
			<td><input class="Cretext" type="text" name="age" value="<%=age%>" size=30/></td>
		</tr>
		
		<tr>
			<td>Qualification:</td>
			<td><input class="Cretext" type="text"  name="qualification" value="<%=qualification%>" size=30/> </td>
		</tr>
		
		<tr>
			<td>Salary:</td>
			<td><input class="Cretext" type="text"  name="Salary" value="<%=salary%>" size=30/> </td>
		</tr>
		<tr>
		<td></td>
		<td><input class="button2" type="submit" value="Update" name="btnUpdate"/></td>
	</tr>
	<%} %>
	</table>	
	</form>
	<br><br><br>
	
	<jsp:include page="footer.html" />
		</body>
</html>