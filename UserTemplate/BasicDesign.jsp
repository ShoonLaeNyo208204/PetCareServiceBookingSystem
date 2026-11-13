<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
    <style>
        h2{  
            padding-top: 7%;
            text-align: center;
            font-style: italic;
            color: saddlebrown;
            text-shadow: 10px 10px 10px rgb(163, 54, 42);
            font-size: 2.5rem;
        }
        .class{
          
        margin: 10px;
        display:inline-block;
        width: 20%;
        padding-bottom: 18px;
        box-shadow: 10px 10px 10px grey;
        border-radius: 20px;
        margin-top: 5%;
        margin-left: 10%;
        cursor: pointer;
    transition: 0.2s ease;
    background-color:greenyellow;
        }
        .class:hover{
    transform: scale(1.04);
    }
    .class img{
        width: 100%;
        height: 190px;
        border-radius: 20px;
       
    
    }
    
        .text{
        text-align: center;
        padding: 15px;
        
        }
        .ss{
            font-style: italic;
            color: rgb(100, 33, 1);
            font-weight: bold;
            font-size: 20px;
        }
       
    </style>
</head>
<body>
    <select name="servicename">
						<%
							Class.forName("com.mysql.jdbc.Driver");
							Connection dbcon = DriverManager.getConnection(
									"jdbc:mysql://localhost/petcareservice", "root", "root");
							System.out.println("Connect to Database!!");

							Statement smnt = dbcon.createStatement();
							String query = "Select* from service";

							ResultSet res = smnt.executeQuery(query);

							// Display options in the dropdown
							while (res.next()) {
								String Sname = res.getString("S_name");
						%>
						<option value="<%=Sname%>"><%=Sname%></option>
						<%
							}
						%>


				</select> <%
 	res.close();
 	smnt.close();
 	dbcon.close();
 %>
    </body>
</html>