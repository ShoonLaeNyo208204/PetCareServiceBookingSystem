<%@ page import="java.sql.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Pet Care Service Booking System</title>
</head>

<body>
	 
	
    
    <% 
    
  
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("cpassword");
        String name = request.getParameter("name");
        String ph = request.getParameter("phone");
        
      System.out.println("email "+email);
      System.out.println("email "+password);
      System.out.println("email "+confirmPassword);
      System.out.println("email "+name);
      System.out.println("email "+ph);
       
        
        if(password.equals(confirmPassword)) {
           

            	   Class.forName("com.mysql.jdbc.Driver");
            	   Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
            	   System.out.println("Connect to Database1111");

            			
            	   
            	 String query1 = "insert into Customer(C_name,C_Email,C_Phoneno,Password) values(?,?,?,?)";
            	   PreparedStatement pstmt = dbcon.prepareStatement(query1);
            	   System.out.println("Connect to Database11112");

            	   pstmt.setString(1,name);
            	   pstmt.setString(2,email);
            	   pstmt.setString(3,ph);
            	   pstmt.setString(4,password);
            	   pstmt.executeUpdate();
            	   System.out.println("Connect to Database11113");
            	
            	  System.out.println("Connect to Database11113");

            	  System.out.println("Customer information are inserted!!!");
            	  
            	  
            	 String query2="Select * from Customer where C_name="+"'"+name+"'";
            	 ResultSet rs=pstmt.executeQuery(query2);
            	 while(rs.next()){
            		 String cid=rs.getString("C_id");
            		 String cname=rs.getString("C_name");
            		 String cemail=rs.getString("C_Email");
            		 String cphone=rs.getString("C_Phoneno");
            	 HttpSession s=request.getSession();
            	 s.setAttribute("Cid", cid);
            	 s.setAttribute("cname", cname);
            	 s.setAttribute("cemail", cemail);
            	 s.setAttribute("cphone", cphone);
            	 int Cid=Integer.parseInt(String.valueOf(s.getAttribute("Cid")));
	 System.out.println("cid is "+Cid);
	 %>
            	 
            	
            	 
            	
 out.println("<p>Sign up successful!</p>");
         
       
        <jsp:forward page="LoginHome.jsp.jsp"></jsp:forward>
    <% rs.close();
            	
            	  pstmt.close();
              	dbcon.close();}
    }
    %>
 

</body>
</html>