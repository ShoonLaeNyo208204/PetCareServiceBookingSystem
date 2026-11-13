<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="UpdateForm.css" />
</head>
<body style=" background-color:#c9fdd1;">
        <jsp:include page="leftMenu&header.html" />               


	<%
		String id = request.getParameter("P_id").trim();
		System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  Package where P_id='" + id + "'";
		ResultSet res = smnt.executeQuery(query);

		if (res.next()) {

	int P_id=res.getInt("P_id");
			String name = res.getString("P_name");
			String price = res.getString("P_price");
			String description = res.getString("P_description");
			HttpSession s=request.getSession();
			s.setAttribute("P_id",P_id);

			System.out.println("Extract Package information from DB");
	%>
	<br>
	    <h1 class="title" > Package Information</h1>	<br>      	
		<form action="PackageUpadate.jsp" method="post" class="form">		
			<table>			
				<tr>
					<td style="padding-top: 30px;">Name:</td>
					<td style="padding-top: 30px;"><input class="Cretext" type="text" name="name" value="<%=name%>"  disabled/>						 
					</td>
				</tr>
				
				<tr>
					<td>Price:</td>
					<td><input class="Cretext" type="text" name="price" value="<%=price%>"/>	 
					</td>
				</tr>


					<tr>
					<td>Description:</td>
					<td><textarea name="description"><%=description%></textarea>
					</td>
				</tr>
				
			<tr>
			<td></td>
				<td style="margin-left:150px;"><input class="button1" type="submit" value="Update" name="btnUpdate">
				</td>
		</tr>
		
		</table>
		
		<%}
			res.close();
			smnt.close();
			dbcon.close();
		%>
                 
	</form>
		
		<jsp:include page="footer.html" />
   </body>
</html>














