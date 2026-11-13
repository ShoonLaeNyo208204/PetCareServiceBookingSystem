<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetCare Service Booking</title>
</head>
<body>


	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection(
				"jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		
		Statement smnt = dbcon.createStatement();

		String query1 = "Select* from package";
		ResultSet result = smnt.executeQuery(query1);

		HttpSession s = request.getSession();
		if (s != null) {
			 

			if (request.getParameter("btnUpdate") != null) {
				String name = request.getParameter("name");
				String price = request.getParameter("price");
				String desc = request.getParameter("description");
				System.out.println("Update name   " + name);
				System.out.println("Update age     " + price);
				System.out.println("Update gender  " + desc);

				

				PreparedStatement ps = dbcon
						.prepareStatement("update Package set P_name=?,P_price =?,P_description=? where P_name like ?");

				ps.setString(1, name);
				ps.setString(2, price);
				ps.setString(3, desc);
				ps.setString(4, name);
				ps.executeUpdate();
				System.out.print("Successful update Package information");
				ps.close();
				result.close();
				smnt.close();
				dbcon.close();
				%>
				<h3> Package information are successfully updated!!!</h3>
				<%
					}
					}
				%>

</body>
</html>