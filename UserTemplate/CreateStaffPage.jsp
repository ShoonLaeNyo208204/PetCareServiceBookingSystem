<%@ page import="java.sql.*,java.io.*" errorPage="StaffErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Staff Page</title>

<style>
body{
    background-color:#b9e12b;
    
}
img{
    width:700px;
    height:550px;
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
<body>
	<%
   
   String name=request.getParameter("name");
   String gender=request.getParameter("gender");
   String age=request.getParameter("age");
   String Nrc=request.getParameter("Nrc");
   String Qualification=request.getParameter("Qualification");
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
   System.out.println("Connect to Database1111");

		
   
 String query1 = "insert into Staff(Staff_name,Staff_age,Staff_gender,NRC,Address,Phone_no,Email,Qualification,Salary,Staff_Photo,Staff_status) values(?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt = dbcon.prepareStatement(query1);
   System.out.println("Connect to Database11112");

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
   System.out.println("Connect to Database11113");

  pstmt.executeUpdate();
  System.out.println("Connect to Database11113");

  System.out.println("Staff information are inserted!!!");
  pstmt.close();
dbcon.close();
   } %>

<center><img src="images/staff.jpg" alt="Image"/>
				
     <br><br>
	<h3>PetCare Staff are successfully created!!!</h3>
	</center>
    </form>
            <div class="section_w250 float_r">
         <ul class="list_01">   	 
              </ul> 
            </div>
 

</body>
</html>