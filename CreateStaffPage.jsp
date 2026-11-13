<%@ page import="java.sql.*,java.io.*" errorPage="StaffErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Care Service Booking System</title>

</head>
<body>

	<%
   String name=request.getParameter("name");
   String gender=request.getParameter("gender");
   String age=request.getParameter("age");
   String Nrc=request.getParameter("Nrc");
   String Qualification=request.getParameter("Qualification");
  int serviceid=Integer.parseInt(request.getParameter("service"));
   String service=request.getParameter("servicename");
   String Salary=request.getParameter("Salary");
   String Phoneno=request.getParameter("Phoneno");
   String email=request.getParameter("email");
   String address=request.getParameter("address"); 
   System.out.print(name);
   System.out.print(age);
   System.out.print(Nrc);

   System.out.print(Qualification);
   System.out.print(service);

   System.out.print(Salary);

   System.out.print(Phoneno);

   System.out.print(email);

   System.out.print(address);

   
   
   if(request.getParameter("image")!=null){
		String image="images/"+request.getParameter("image");
		System.out.println("Form value "+image);
	String source="C:/PetPhoto/"+request.getParameter("image");
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
   System.out.println("Connect to Database.");
   Statement smnt = dbcon.createStatement();
	String query="select S_id from service where S_status=1 and S_name like '"+service+"'";
	 ResultSet result = smnt.executeQuery(query);
	 while (result.next()) {
			String sid=result.getString("S_id");

 String query1 = "insert into Staff(Staff_name,Staff_age,Staff_gender,Nrc,Address,Phone_no,Email,Qualification,Salary,Staff_Photo,Staff_status,S_id) values(?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt = dbcon.prepareStatement(query1);
   System.out.println("Connect to Database.");

   pstmt.setString(1,name);
   pstmt.setString(2,age);
   pstmt.setString(3,gender);
   pstmt.setString(4,Nrc);
   pstmt.setString(5,address);
   pstmt.setString(6,Phoneno);
   pstmt.setString(7,email);
   pstmt.setString(8,Qualification);
   pstmt.setString(9,Salary);
   pstmt.setString(10,image);
   pstmt.setInt(11,1);
   pstmt.setInt(12,serviceid);
   int rowaffect= pstmt.executeUpdate();
   if(rowaffect>0){
  System.out.println("Staff information are inserted!!!");
    %>
    <jsp:forward page="CreateStaffSuccessfulPage.jsp" />
    <%
   }
   pstmt.close();}
   dbcon.close();
   }
    %>

</body>
</html>
