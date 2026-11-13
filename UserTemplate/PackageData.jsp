<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection dbcon = DriverManager.getConnection(
					"jdbc:mysql://localhost/petcareservice", "root", "root");
			System.out.println("Connect to Database!!");
			Statement smnt = dbcon.createStatement();
			String query3 = "Select * from  Package where P_Status=1 ";
			ResultSet result3 = smnt.executeQuery(query3);
			while (result3.next()) {
				String Name = result3.getString("P_name");
				String Price = result3.getString("P_price");
				String Description = result3.getString("P_description");
		%>
             
                      <%=Name%><br><br>
                     
                      <%=Price%><br><br>
                     
                     <%=Description%>
                    
                
                  
        <%
			}
		%>    
			
			
		<%
			result3.close();
			smnt.close();
			dbcon.close();
		%>

</body>
</html>