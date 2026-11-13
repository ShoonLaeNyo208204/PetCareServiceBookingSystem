<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
         <style>
      
        .setting{
          margin-left:50px;
        }
       
      .detailbtn{
            margin-left:20px;
            width:80px;
          height:40px;
          border-radius: 5px;
          color:orangered;
        
        }
       
    </style>
</head>
<body>

<jsp:include page="leftMenu&header.html" />
             <!-- ========== tables-wrapper start ========== -->
       <div class="tables-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <div class="card-style mb-30">
              <h3  style="text-align:center;font-weight:bold;font-size:2.5em;color:green;">View Feedback List</h3>
              <div class="table-wrapper table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th><h5><span style="font-weight:bold; color:green;">No</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Name</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Email</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Phone Number</span></h5></th>
                      <th ><h5><span class="setting" style="font-weight:bold; color:green;">Setting</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Action</span></h5></th>
                    </tr>
                    <!-- end table row-->
                    
                     </thead>
                     
                     <% 
                     Class.forName("com.mysql.jdbc.Driver");

         			Connection dbcon = DriverManager.getConnection(
         					"jdbc:mysql://localhost/petcareservice", "root", "root");
         			System.out.println("Connect to Database!!");
         			Statement smnt = dbcon.createStatement();

            String query = "Select * from  feedback";
		ResultSet result = smnt.executeQuery(query);
		int count=0;
		while (result.next()) {
			count++;
			String F_id=result.getString("F_id");
			String name= result.getString("C_name");
			String email = result.getString("C_Email");
			String  phone= result.getString("C_Phoneno");
			HttpSession s=request.getSession();
			 s.setAttribute("Sessionid",F_id);
	%>
	              <tbody>
                    <tr>
                      <td class="min-width">
                        <div class="lead">
                          <div class="lead-text">
                            <p><%=count%></p>
                          </div>
                        </div>
                        
                      </td>
                      <td class="min-width">
                        <p><%=name%></p>
                      </td>
                      
                      <td class="min-width">
                        <p><%=email%></p>
                      </td>
                      
                      <td class="min-width">
                        <p><%=phone%></p>
                      </td>
                      
                      <td class="min-width">
                       
                        <a href="FeedbackDetail.jsp?F_id=<%=result.getString("F_id")%>">
                        <input class="detailbtn" type="submit" value="Detail" name="Detail"/> 
                       
                       </a> 
                       </td>
                     
                      <td>
                        <div class="action">
                         <a href="DeleteFeedback.jsp?F_id=<%=result.getString("F_id")%>"><button class="text-danger" name="delete">
                          <i class="lni lni-trash-can"></i>
                          </button>
                          </a>
                       
	
                        </div>
                      </td>
                      
                    </tr>
                    <%
		}
		%>
		<%
			result.close();
			smnt.close();
			dbcon.close();
		%>
     
     
                    <!-- end table row -->
                  </tbody>
                </table>
                <!-- end table -->
              </div>
            </div>
            <!-- end card -->
          </div>
          <!-- end col -->
        </div>
        <!-- end row -->
<jsp:include page="footer.html" />
       </body>
</html>

 	