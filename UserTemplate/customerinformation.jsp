	<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking System</title>

 <link rel="stylesheet" href="information.css" />
</head>
<body>
	<%
		String id = request.getParameter("C_id").trim();
		System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  customer  where C_id='" + id + "'";
		ResultSet res = smnt.executeQuery(query);

		if (res.next()) {

			int C_id=res.getInt("C_id");

		

			String name = res.getString("C_name");

			String email= res.getString("C_Email");
			String phno = res.getString("C_Phoneno");
			String password = res.getString("Password");
					HttpSession s = request.getSession();
			s.setAttribute("C_id", C_id);
	

	
			System.out.println("Extract customer information from DB");
	%>
	<center>
		<h1>
			<font style="font-family: Times New Roman; color: green;">Customer 
				Information</font>
	
	</h1>
	</center>
	<form action="ChangePassword.jsp" method="post">


		
		<table border="1">

			<tr>
				<th align="left">Name:</th>
				<td><input type="text" name="name" value="<%=name%>"
					size=24  disabled /></td>
			</tr>
			<tr>
				<th align="left">Email:</th>
				<td><input type="email" name="email" value="<%=email%>" size=24
					disabled /></td>
			</tr>

            <tr>
				<th align="left">Phone:</th>
				<td><input type="text" name="qualification"
					value="<%=phno%>" size=24 disabled />
				</td>
			</tr>
			<tr>
				<th align="left">Password:</th>
				<td><input type="text" name="password" value="<%=password%>"
					size=24 />
				</td>
			</tr>
			
			<tr>
				<td><input type="submit" value="ChangePassword" name="btnUpdate" /></td>
				
			</tr>
			
		</table>
	</form>
	<%
			}
		%>
			</body>
		</html>