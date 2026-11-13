<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>

<!DOCTYPE html>
<html lang="en">
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
          color:green;
        
        }
       
    </style>
</head>
<body>
<jsp:include page="leftMenu&header.html"/>
		<div class="tables-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <div class="card-style mb-30">
             <h3 style="text-align:center;font-weight:bold;font-size:2.5em;color:green;">View Staff List</h3>
              <div class="table-wrapper table-responsive">
       <table class="table">


	<thead class="viewheader">
	 <tr>
                      <th><h5><span style="font-weight:bold; color:green;">No</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Name</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Phone Number</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Email</span></h5></th>
                     <th><h5><span style="font-weight:bold; color:green;">Address</span></h5></th>
                      <th ><h5><span class="setting" style="font-weight:bold; color:green;">Setting</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Action</span></h5></th>
                    </tr>
                    <!-- end table row-->
                   
	        </thead>
		<%
			Class.forName("com.mysql.jdbc.Driver");

			Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
			System.out.println("Connect to Database!!");
			Statement smnt = dbcon.createStatement();
			String query = "Select* from Staff  where Staff_status=1";
			ResultSet result = smnt.executeQuery(query);
			int count = 0;
			while (result.next()) {
				count++;
			    String  id = result.getString("Staff_id");
				String Name = result.getString("Staff_name");
				String Address = result.getString("Address");
				String phone = result.getString("Phone_no");
				String Email = result.getString("Email");
				HttpSession sess=request.getSession();
				
				System.out.println(id);
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
                        <p><%=Name%></p>
                      </td>
                      
                      <td class="min-width">
                        <p><%=phone%></p>
                      </td>
                      
                      <td class="min-width">
                        <p><%=Email%></p>
                      </td>
                      
                       <td class="min-width">
                        <p><%=Address%></p>
                      </td>
                      <td class="min-width">
                       
                        <a href="UpdateStaffForm.jsp?Staff_id=<%=result.getString("Staff_id")%>">
                        <button class="detailbtn" name="update">
                        <i class="lni lni-pencil-alt"></i>
                       </button>
                       </a> 
                       </td>
                      <td>
                      <div class="action">
                         <a href="StaffDeactivePage.jsp?Staff_id=<%=id%>">
                         <button class="text-danger" name="delete">
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
      <!-- ========== table components end ========== -->
		 <!-- ========== footer start =========== -->
     <jsp:include page="footer.html" />
  </div>
  </body>
  </html>