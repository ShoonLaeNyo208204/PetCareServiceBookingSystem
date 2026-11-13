<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Service Page</title>
<style>
 </style>

</head>
<body>
	<% 
   String name=request.getParameter("name");
   String price=request.getParameter("price");
   String description=request.getParameter("description");
   
   if(request.getParameter("image")!=null){
		String image="images/"+request.getParameter("image");
		System.out.println("Form value "+image);
	String source="C:/images/"+request.getParameter("image");
	System.out.println("Source"+source);
	String destination="/images/"+request.getParameter("image");
	System.out.println("Destination"+destination);
	File sourceFile=new File(source);
	BufferedInputStream bis=new BufferedInputStream(new FileInputStream(sourceFile),4096);
	String fileName=getServletContext().getRealPath(destination);
	File targetFile=new File(fileName);
	targetFile.createNewFile();
	BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(targetFile),4096);
	int theChar;
	while((theChar=bis.read())!=-1){
	bos.write(theChar);
	}
  
  Class.forName("com.mysql.jdbc.Driver");
  Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
  System.out.println("Connect to Database");

	
	
		 String query = "insert into Service(S_name,S_price,S_description,S_Status,S_Photo) values(?,?,?,?,?)";
		   PreparedStatement pstmt = dbcon.prepareStatement(query);
		   pstmt.setString(1,name);
		   pstmt.setString(2,price);
		   pstmt.setString(3,description);
		   pstmt.setInt(4,1);
		   pstmt.setString(5,image);
		  // pstmt.executeUpdate();
			System.out.println("Service information are inserted!!!");
			%>
			<h3>Pet Care Services are successfully created!!!</h3>
			<% 
			pstmt.close();
			dbcon.close();
   }
  %>
  
 
    </form>
            
</body>
</html>