<%@ page import="java.sql.*,java.io.*" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.img{
margin-top:20px;
    width:600px;
    height:500px;
    border:1px solid grey;
    border-radius: 13px;
    box-shadow:15px 15px 15px grey;
    
    
}
h3{
   color:brown;
   font-size:2em;
   font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
   
 }
 </style>
</head>
<body style=" background-color:#7ee98b;">
<center>
	    <%
	Class.forName("com.mysql.jdbc.Driver");
	Connection dbcon = DriverManager.getConnection(
		"jdbc:mysql://localhost/petcareservice", "root", "root");
	System.out.println("Connect to Database");
	Statement smnt=dbcon.createStatement();
	String query="Select * from service";
	ResultSet result=smnt.executeQuery(query);
	
	HttpSession s=request.getSession();
	if(s!=null){
		String S_id=String.valueOf(s.getAttribute("S_id"));
			
	
		System.out.println("Service id from session"+S_id);
		
		if(request.getParameter("btnUpdate")!=null ){
			String  price= request.getParameter("price");
			String description = request.getParameter("description");
			System.out.println("Update price="+price);
			System.out.println("Update description="+description);
			
		PreparedStatement ps=dbcon.prepareStatement("update service set S_price=?,S_description=? where S_id like ?");
			ps.setString(1,price);
			ps.setString(2,description);
			ps.setString(3,S_id);
		int rowaffect=	ps.executeUpdate();
		if(rowaffect>0){
				System.out.println("Successful update service information");
	
		}
			ps.close();
			
		}}
	result.close();
	smnt.close();
	dbcon.close();

			%>
<jsp:forward page="ServiceUpdateSuccessfulPage.jsp" />
</body>
</html>