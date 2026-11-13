<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
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
          color:green;
        
        }
       
    </style>

       </head>

</head>
<body>
   <jsp:include page="leftMenu&header.html" /> 
          <!-- ========== tables-wrapper start ========== -->
       <div class="tables-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <div class="card-style mb-30">
            <h3  style="text-align:center;font-weight:bold;font-size:2.5em;color:green;">View Booking List</h3>
              <div class="table-wrapper table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th><h5><span style="font-weight:bold; color:green;">No</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Name</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Phone Number</span></h5></th>
                      <th><h5><span style="font-weight:bold; color:green;">Pet_Type</span></h5></th>
                     <th><h5><span style="font-weight:bold; color:green;">Date</span></h5></th>
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


         	        String query="Select * from  Booking,Customer,Pet where Booking.C_id=Customer.C_id and Pet.Pet_id=booking.Pet_id and B_status=1";
         	        
		ResultSet result = smnt.executeQuery(query);
		int count=0;
		while (result.next()) {
			count++;
			String B_id=result.getString("B_id");
			String name= result.getString("C_name");
			String  phone= result.getString("C_Phoneno");
			String type=result.getString("Pet_type");
			String date = result.getString("Date");
			HttpSession s=request.getSession();
			 s.setAttribute("Sessionid",B_id);

			System.out.println("B_id:"+B_id);
			System.out.println("C_name:"+name);
			System.out.println("Phone:"+phone);
			System.out.println("Pet Type:"+type);
			System.out.println("date:"+date);
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
                        <p><%=phone%></p>
                      </td>
                      <td class="min-width">
                        <p><%=type%></p>
                      </td>
                      
                         <td class="min-width">
                        <p><%=date%></p>
                      </td>
                        <td class="min-width">                     
                        <a href="ViewBookingDetail.jsp?B_id=<%=result.getString("B_id")%>">
                       <button class="detailbtn" name="update">
                        <i class="lni lni-pencil-alt"></i>
                       </button>
                       </a> 
                       </td>
                     
                      <td>
                        
                         <a href="BookingDeactivePage.jsp?B_id=<%=result.getString("B_id")%>"><button class="detailbtn" name="delete">
                         Cancel
                          </button>
                          </a>
    
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
                       
	 <!-- content area end -->
           <jsp:include page="footer.html"/>
                     
                  
</body>
</html>