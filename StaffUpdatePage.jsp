<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html><head></head>        
    <body style=" background-color:#7ee98b;">
                      
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection(
				"jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();

		String query1 = "Select*from Staff where Staff_status=1";
		ResultSet result = smnt.executeQuery(query1);

		HttpSession s = request.getSession();
		if (s != null) {

			String Staff_id = String.valueOf(s.getAttribute("Staff_id"));
			System.out.println("Staff id from session" + Staff_id);
			if (request.getParameter("btnUpdate") != null) {
				String age = request.getParameter("age");
				String address = request.getParameter("address");
				String phoneno = request.getParameter("phoneno");
				String email = request.getParameter("email");
				String salary = request.getParameter("Salary");
				System.out.println("Update age     " + age);
				System.out.println("Update address    " + address);
				System.out.println("Update phoneno    " + phoneno);

				System.out.println("Update email  " + email);
				System.out.println("Update Salary   " + salary);
				PreparedStatement ps = dbcon
						.prepareStatement("update Staff set Staff_age =?,Address=?,Phone_no=?,Email=?,Salary=? where Staff_id like ?");
				ps.setString(1, age);
				ps.setString(2, address);
				ps.setString(3, phoneno);
				ps.setString(4, email);
				ps.setString(5, salary);
				ps.setString(6, Staff_id);
				int rowaffect=ps.executeUpdate();
				if(rowaffect>0){
				System.out.print("Successful update Staff information");
					%>
					
					   	<%}
	
			ps.close();}}
		
			smnt.close();
			dbcon.close();
				%>
	<jsp:forward page="StaffUpdateSuccessfulPage.jsp" />

      </body>
</html>