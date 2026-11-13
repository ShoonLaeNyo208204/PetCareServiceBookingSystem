<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <link rel="stylesheet" href="Detailpage.css">
  <style>
  

.img{
   margin-top:10px;
    width:550px;
    height:500px;
    border:1px solid grey;
    border-radius: 13px;
    box-shadow:15px 15px 15px grey;
    
    
}
h1{
   color:brown;
   font-size:2em;
   font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
   
 }
  
  </style>
          </head>
  <body>
  <jsp:include page="leftMenu&header.html" /> 


	<%
		String id = request.getParameter("S_id").trim();
		System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  service where S_id='" + id + "'";
		ResultSet res = smnt.executeQuery(query);
		if (res.next()) {
        int S_id=res.getInt("S_id");
			String photo = res.getString("S_Photo");
			String name = res.getString("S_name");
			String price = res.getString("S_price");
			String desc = res.getString("S_Description");
			// photo=request.getSession("");
            HttpSession s=request.getSession();
            s.setAttribute("S_id",S_id);
			System.out.println("Extract Service information from DB");
	%>
	<center>
		<h2>
			<font style="font-family: Times New Roman; color: blue;">Service
				Information</font>
		</h2>
		<form action="UpdateServicePage.jsp" method="post">
		<img src=<%=photo%> alt="Service Photo" width=150 height=150/>
		<%
		System.out.print("Photo:"+photo);
		
		%>
			<table border=0>
			
				<tr>
					<th align="left">Service Name:</th>
					<td><input type="text" name="name" value="<%=name%>" disabled height="300" width="300"/>
					</td>
				</tr>
				<tr>
					<th align="left">Price:</th>
					<td><input type="text" name="price" value="<%=price%>" height="300" width="300" />
					</td>
				</tr>


				<tr>
					<th align="left">Description:</th>
					<td>
					<textarea  name="description" height="400" width="350"><%=desc %>
					</textarea>
				
					</td>
				</tr>
								<tr>
					<td><input type="submit" value="Update" name="btnUpdate" />
					</td>
					<td><input type="button" value="Clear" name="btnClear" />
					</td>
				</tr>
			</table>
		</form>
		</center>
		<%
	
			}
		dbcon.close();
		
		%>
	
<jsp:include page="footer.html" />
</body>
</html>











