<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Staff Information System</title>
<meta name="keywords" content="University" />
</head>
body{
		background-color: #eaffb9;
		margin: 0;

	}
	  table{
      text-align: center;
      width: 30%;
      border-radius: 13px;
      padding: 6px;
      margin-left: 36%;
      margin-right: 32%;
      border: 1px;
      
     
    }
   
    
    table td{
  
      font-size: 1.3em;
      font-weight:bold;
      padding: 3px;
      text-align: left;
    }
   
	.form{
      
      justify-content: center;
      margin: 0 auto;
margin-top: 30px;
      padding: 4px;
	  
    }
    
	.btn1{
  margin-bottom:30px;
  width:90px;
  height:40px;
  text-align: center;
  background-color: white;

  border: 2px solid green ;
  border-radius: 15px;
  font-weight:bold;
  font-size: 1rem;
  margin-top:30px ;
  margin-left: 109%;
  
}
.btn1:hover{
  background-color: green;
  border-color: white;
  box-shadow: 3px 3px 3px 3px green;
}
    
textarea{
      width: 230px;
      height:100px;
      background-color: #f8f2f246;
      border-radius: 10px;

    }
    textarea:hover{
      border: 2px solid green;
    }
  .radio{
  width:15px;
  
}
.Cretext{
      width:230px;
      height:30px;
      background-color: #f8f2f246;
      border-radius: 12px;
    
    
    }
      
    .Cretext:hover{
      border: 2px solid green;
    }
    
    
    

	</style>
	
<body>
	<%
		String id = request.getParameter("P_id").trim();
		System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
		System.out.println("Connect to Database");
		Statement smnt = dbcon.createStatement();
		String query = "Select * from  package where P_id='" + id + "'";
		ResultSet res = smnt.executeQuery(query);

		if (res.next()) {


			String name = res.getString("P_name");
			String price = res.getString("P_price");
			String desc = res.getString("P_description");
			// photo=request.getSession("");

			System.out.println("Extract Staff information from DB");
	%>
	
		<h1>
			<font style="font-family: Times New Roman; color: blue;">Package
				Information</font>
		</h1>
		<form action="UpdatePackagePage.jsp" method="post">

			<table border=0>

				<tr>
					<th align="left">Package Name:</th>
					<td><input type="text" name="name" value="<%=name%>" size=30 />
					</td>
				</tr>
				<tr>
					<th align="left">Price:</th>
					<td><input type="text" name="age" value="<%=price%>" size=30 />
					</td>
				</tr>
				
				<tr>
					<th align="left">Description:</th>
					<td><input type="text" name="gender" value="<%=desc%>" size=30 />
					</td>
				<tr>
					<td><input class="btn1" type="submit" value="Update" name="btnUpdate" /></td>
				</tr>
			</table>
		</form>
		<%
			}
		%>
	
</body>
</html>














