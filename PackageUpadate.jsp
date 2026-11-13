<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<head>

</head>
<body>           
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection(
				"jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();

		String query = "Select* from Package";
		ResultSet result = smnt.executeQuery(query);

		HttpSession s = request.getSession();
		if (s != null) {

			String P_id = String.valueOf(s.getAttribute("P_id"));
			System.out.println("Package id from session" + P_id);

			if (request.getParameter("btnUpdate") != null) {
				String price = request.getParameter("price");
				String desc = request.getParameter("description");
	             System.out.println("Update price " + price);
				System.out.println("Update description   " + desc);
				PreparedStatement ps = dbcon
						.prepareStatement("update Package set P_price=?,P_description=? where P_id like ?");
				ps.setString(1, price);
				ps.setString(2, desc);
				ps.setString(3,P_id);
			int rowaffect=	ps.executeUpdate();
			if(rowaffect>0){
				System.out.println("Successful update Package information");
						}
							ps.close();
							result.close();
							smnt.close();
							dbcon.close();
						
						}}
			%>
			<jsp:forward page="PackageUpdateSuccessfulPage.jsp" />      
  </body>
</html>