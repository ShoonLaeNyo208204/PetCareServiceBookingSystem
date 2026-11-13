<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="assets/images/favicon.svg"
	type="image/x-icon" />
<title>admin login</title>

<!-- ========== All CSS files linkup ========= -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/lineicons.css" />
<link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
body {
	font-family: "Comic Sans MS", cursive;
	margin: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	background: plum; /* Warna latar belakang abu-abu muda */
	color: #333;
}

.container {
	width: 100%;
	max-width: 400px;
}

.card {
	width: 100%;
	background-color: gray; /* Warna card */
	padding: 20px;
	border-radius: 12px; /* Border radius card */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}

form {
	display: flex;
	flex-direction: column;
}

input {
	padding: 10px;
	margin-bottom: 12px;
	border: 2px solid #ddd; /* Border color input */
	border-radius: 8px; /* Border radius input */
	transition: border-color 0.3s ease-in-out;
	outline: none;
	color: #333;
	background-color: #f4f4f4; /* Warna input */
}

input:focus {
	border-color: #ff9900; /* Warna input saat focus */
}

button {
	background-color: #ff9900; /* Warna button */
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 8px; /* Border radius button */
	cursor: pointer;
	transition: background-color 0.3s ease-in-out;
}

button:hover {
	background-color: #ff6600; /* Warna button saat hover */
}
</style>
</head>

<body>

		
		<% 
		
		    String currentPassword=request.getParameter("currentpassword"); 
			String Newpass=request.getParameter("newpassword");
			String conpass=request.getParameter("confirmpassword"); 
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
			System.out.println("Connect to database!!");
			Statement st=dbcon.createStatement(); 
			ResultSet rs=st.executeQuery("select * from Admin where A_password='"+currentPassword+"'"); 
			System.out.println ("current password"+rs);
			if(rs.next()){ 
				String username=rs.getString(1);	
			}
			System.out.println("currentPassword"  +currentPassword);
			System.out.println("New password="+Newpass);
			if(Newpass.equals(conpass)){
			int i=st.executeUpdate("update Admin set A_password='"+Newpass+"' where A_password='"+currentPassword+"'"); 
			if(i>0){
			System.out.println("Password Update OK"+i);
		%>
		<jsp:forward page="Dashboard.html" />
		<% 
           
			
			}
			
	else 
	{
		%>
		<jsp:forward page="changepasswordnotmatch.jsp" />

		<%
	} 
		
			}st.close(); 
			dbcon.close();
	%>


</form>
</body>
</html>
	
 