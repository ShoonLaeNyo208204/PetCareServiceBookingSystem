<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Care Service Booking System</title>
</head>

<body>


	<%
    String Email = request.getParameter("email");
    String pass = request.getParameter("password");
    
    // JDBC connection parameters
   // String url = "jdbc:mysql://localhost:8080/petcareservice";
    //String C_Email = "C_Email";
    //String Password = "Password";
    
    
    	 Class.forName("com.mysql.jdbc.Driver");
    	   Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
    	   System.out.println("Connect to Database1111");

        PreparedStatement pstmt = dbcon.prepareStatement("SELECT * FROM Customer WHERE C_Email=? AND Password=?");
        
        pstmt.setString(1, Email);
        pstmt.setString(2, pass);
        
        
   	 ResultSet rs=pstmt.executeQuery();
   	 
        
        if (rs.next()) {
            // Successful login
          String cid=rs.getString("C_id");
          String cemail=rs.getString("C_Email");
          String cphone=rs.getString("C_Phoneno");
            HttpSession s=request.getSession();
           
                  s.setAttribute("Cid",cid);
                  
                  s.setAttribute("cemail",cemail);
                  s.setAttribute("cemail",cemail);
                  s.setAttribute("cphone",cphone);
            response.sendRedirect("LoginHome.jsp");
        } else {
            // Invalid credentials
            %>
            <script>
            alert("Invalid username or password");
            window.location.replace("loginform.jsp");
            </script>
            <%
            
        }
        
        rs.close();
        pstmt.close();
        dbcon.close();
 
%>

</body>
</html>
