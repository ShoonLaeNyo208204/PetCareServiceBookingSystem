<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
      rel="shortcut icon"
      href="assets/images/favicon.svg"
      type="image/x-icon"
    />
    <title>Pet Care Service Booking System</title>

    <!-- ========== All CSS files linkup ========= -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/lineicons.css" />
    <link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="assets/css/fullcalendar.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <style>
     
     .img{
    border:1px solid grey;
    border-radius: 13px;
    box-shadow:15px 15px 15px grey;
    margin-top:20px;
    width:600px;
    height:450px;
}
h3{
   color:green;
   font-size:1.8em;
   font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
   }

 .sidebar-nav-wrapper{
        background-color: #2dd254;
      }
      .header{
        background-color:#44e557;
      }
    .logoimg{
   border-radius:20px;
   }
   h1{
   color:green;
   font-size:2em;
   margin-top:20px;
   margin-bottom:0px;
   }
   .btn{
   margin-bottom:30px ;
  width:100px;
  height:50px;
  text-align: center;
  background-color: white;
  color: black;
  border: 2px solid green ;
  border-radius: 15px;
   }
    </style>
</head>
<body>
 <aside class="sidebar-nav-wrapper">
            <div class="navbar-logo">
              <a href="index.html">
             <div >  <img class="logoimg" src="images/petCarelogo2.png" width="50px" height="50px"/>&nbsp;Pet Care Service</div>
              </a>
            </div>
      
            <nav class="sidebar-nav">
              <ul>
      
                <li class="nav-item nav-item-has-children">
                    <a
                      href="#0"
                      class="collapsed"
                      data-bs-toggle="collapse"
                      data-bs-target="#ddmenu_1"
                      aria-controls="ddmenu_1"
                      aria-expanded="false"
                      aria-label="Toggle navigation"
                    >
                      <span class="icon">
                        <svg width="22" height="22" viewBox="0 0 22 22">
                          <path
                            d="M17.4167 4.58333V6.41667H13.75V4.58333H17.4167ZM8.25 4.58333V10.0833H4.58333V4.58333H8.25ZM17.4167 11.9167V17.4167H13.75V11.9167H17.4167ZM8.25 15.5833V17.4167H4.58333V15.5833H8.25ZM19.25 2.75H11.9167V8.25H19.25V2.75ZM10.0833 2.75H2.75V11.9167H10.0833V2.75ZM19.25 10.0833H11.9167V19.25H19.25V10.0833ZM10.0833 13.75H2.75V19.25H10.0833V13.75Z"
                          />
                        </svg>
                      </span>
                      <span class="text">Dashboard</span>
                    </a>
                    <ul id="ddmenu_1" class="collapse dropdown-nav">
                      <li>
                        <a href="Dashboard.html">Pet Care Service System </a>
                      </li>
                    </ul>
                  </li>
                  
                  
                <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_2"
                    aria-controls="ddmenu_2"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                   <i class="lni lni-user"></i>
                    </span>
                    <span class="text">Manage Staff</span>
                  </a>
                  <ul id="ddmenu_2" class="collapse dropdown-nav">
                    <li>
                      <a href="CreateStaffForm.jsp"> Create Staff </a>
                    </li>
                    <li>
                      <a href="ViewStaffList.jsp"> View Staff </a>
                    </li>
                  </ul>
                </li>
      
      
                <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_3"
                    aria-controls="ddmenu_3"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                      <i class="lni lni-service"></i>
                        </span>
                    <span class="text">Manage Service</span>
                  </a>
                  <ul id="ddmenu_3" class="collapse dropdown-nav">
                    <li>
                      <a href="CreateServiceForm.jsp">Create Service</a>
                    </li>
                    <li>
                      <a href="ViewServiceList.jsp">View Service</a>
                    </li>
                  </ul>
                </li>
      
                
                <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_4"
                    aria-controls="ddmenu_4"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                     <i class="lni lni-package"></i>
                        </span>
                    <span class="text">Manage Package</span>
                  </a>
                  <ul id="ddmenu_4" class="collapse dropdown-nav">
                    <li>
                      <a href="CreatePackageForm.jsp"> Create Package</a>
                    </li>
                    <li>
                      <a href="ViewPackageList.jsp">View Package</a>
                    </li>
                    </ul>
                </li>
      
                <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_55"
                    aria-controls="ddmenu_55"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                    <i class="lni lni-book"></i>
                        </span>
                    <span class="text">Booking</span>
                  </a>
                  <ul id="ddmenu_55" class="collapse dropdown-nav">
                    <li>
                      <a href="ViewBookingList.jsp"> View Booking </a>
                    </li>
                  </ul>
                </li>
      
                <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_5"
                    aria-controls="ddmenu_5"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                        <i class="lni lni-comments-alt-2"></i>
                              </span>
                    <span class="text">Manage Contact</span>
                  </a>
                  <ul id="ddmenu_5" class="collapse dropdown-nav">
                     <li>
                      <a href="ViewFeedbackList.jsp">View Feedback</a>
                    </li>
                  </ul>
                </li>
                 <li class="nav-item nav-item-has-children">
                  <a
                    href="#0"
                    class="collapsed"
                    data-bs-toggle="collapse"
                    data-bs-target="#ddmenu_1"
                    aria-controls="ddmenu_1"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="icon">
                     <i class="lni lni-github"></i>
                        </span>
                    <span class="text">Manage Pet</span>
                  </a>
                  <ul id="ddmenu_1" class="collapse dropdown-nav">
                    <li>
                      <a href="CreatePetForm.jsp"> Create Pet</a>
                    </li>
                    <li>
                      <a href="ViewPetList.jsp">View Pets List</a>
                    </li>
                    </ul>
                </li>
      
               </aside>
      
      
          <div class="overlay"></div>
          <!-- ======== sidebar-nav end =========== -->
      
         
               <!-- ======== main-wrapper start =========== -->
        <main class="main-wrapper">
       
            <!-- ========== header start ========== -->
            <header class="header">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-lg-5 col-md-5 col-6">
                    <div class="header-left d-flex align-items-center">
                      <div class="menu-toggle-btn mr-20">
                        <button
                          id="menu-toggle"
                          class="main-btn primary-btn btn-hover"
                        >
                          <i class="lni lni-chevron-left me-2"></i> Menu
                        </button>
                      </div>
                      <div class="header-search d-none d-md-flex">
                        <form action="#">
                          <input type="text" placeholder="Search..." />
                          <button><i class="lni lni-search-alt"></i></button>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-7 col-md-7 col-6">
                    <div class="header-right">
                      <!-- filter end -->
                      <!-- profile start -->
                      <div class="profile-box ml-15">
                        <button
                          class="dropdown-toggle bg-transparent border-0"
                          type="button"
                          id="profile"
                          data-bs-toggle="dropdown"
                          aria-expanded="false"
                        >
                          <div class="profile-info">
                            <div class="info">
                              <h6>Bella</h6>
                              <div class="image">
                                <img
                                  src="images/bella.webp"
                                  alt=""
                                />
                                
                              </div>
                            </div>
                          </div>
                          <i class="lni lni-chevron-down"></i>
                        </button>
                        <ul
                          class="dropdown-menu dropdown-menu-end"
                          aria-labelledby="profile"
                        >
                          <li>
                            <a href="#0">
                              <i class="lni lni-user"></i> View Profile</a>
                          </li>
                          <li>
                            <a href="changepasswordform.jsp"> <i class="lni lni-cog"></i>Change Password</a>
                          </li>
                          <li>
                            <a href="Dashboard.html"> <i class="lni lni-exit"></i> Log Out</a>
                          </li>
                        </ul>
                      </div>
                      <!-- profile end -->
                    </div>
                  </div>
                </div>
              </div>
            </header>
    <%
    String bid=request.getParameter("B_id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection dbcon=DriverManager.getConnection( "jdbc:mysql://localhost/petcareservice" , "root" , "root" );
        System.out.println("Connect to Database"); 
        Statement smnt=dbcon.createStatement(); 
        System.out.println(bid);
       
        String query="Select * from  Booking,Customer,Pet,Service where Booking.C_id=Customer.C_id and Booking.S_id=Service.S_id and Booking.Pet_id=Pet.Pet_id and B_id='" +bid+"'"; 
        ResultSet result=smnt.executeQuery(query); 
       
        if(result.next()) {  
        	 System.out.println("00000");
        	String photo=result.getString("Pet_photo");     
        	String cname=result.getString("C_name");       	
        	String cemail=result.getString("C_Email"); 
        	String cphone=result.getString("C_Phoneno");
        	String address=result.getString("C_address");
        	String service=result.getString("S_name");
        
        	String name=result.getString("Pet_name");
        	String type=result.getString("Pet_type");
        	String color=result.getString("color");
        	String age=result.getString("Pet_Age");
        	String gender=result.getString("Pet_Gender");
        	String date=result.getString("Date");
        	String time=result.getString("time");
        	
        	String nodata="_";
        	System.out.println(photo);
    %>
    <center><h1 class="mb-25">Booking Details</h1></center>
          <div class="form-elements-wrapper">
            <div class="row">
              <div class="col-lg-6">
                <!-- input style start -->

                <div class="card-style mb-30">
                  <center>
                   
                    <img src="<%=photo%>" width="300px" height="150px" alt="Photo">
                  <!-- end input -->
                  <div class="input-style-3">
                    <label>Name:</label>
                     <% if(cname==null){%>
                     
                   <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                   <input type="text"value="<%=cname%>"  disabled/>  <%}%>
                  </div>

                  <!-- end input -->
                  <div class="input-style-3">
                     <label>Email:</label>
                     <% if(cemail==null){%>
                     <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                   <input type="text" value="<%=cemail%>"  disabled/><%} %>
                  </div>

                  <!-- end input -->
                  <div class="input-style-3">
                     <label>Address:</label>
                     <% if(address==null){%>
                     <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                   <input type="text" value="<%=address%>"  disabled/> <%} %>
                  </div>
                  <div class="input-style-3">
                   <label>Service Name:</label>
                   <% if(service==null){%>
                     <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                   <input type="text"  value="<%=service%>"  disabled/> <%} %>
                  </div>
                  
                 
                  <!-- end input -->
                  
                </div>
                <!-- end card -->
            </div>
                <!-- ======= input style end ======= -->
                <div class="col-lg-6">
                    <!-- ======= textarea style start ======= -->
                    <div class="card-style mb-30">
                                     <!-- end input -->
                   <div class="input-style-3">
                   <label>Pet Name:</label>
                   <% if(name==null){%>
                     <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=name%>"  disabled/><%} %>
                  </div>
                   <div class="input-style-3">
                    <label>Type: </label>
                    <% if(type==null){%>
                     <input type="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=type%>"  disabled/><%} %>
                  </div>

                   <!-- end input -->
                   <div class="input-style-3">
                    <label>Color: </label>
                   <% if(type==null){%>
                     <input color="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=color%>"  disabled/><%} %>
                  </div>

                   <!-- end input -->
                   <div class="input-style-3">
                    <label>Age:</label>
                     <% if(age==null){%>
                     <input color="text" value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text"  value="<%=age%>"  disabled/><%} %>
                  </div>
                  <div class="input-style-3">
                   <label>Gender:</label>
                    <% if(gender==null){%>
                     <input color="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=gender%>"  disabled/><%} %>
                  </div>
                  <div class="input-style-3">
                     <label>Date:</label>
                       <% if(date==null){%>
                     <input color="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=date%>"  disabled/><%} %>
                  </div>
                  <div class="input-style-3">
                   <label>Time:</label>
                     <% if(time==null){%>
                     <input color="text"value="<%=nodata%>"  disabled/>
                      <%} else{%>
                        <input type="text" value="<%=time%>"  disabled/><%} %>
                  </div>

                      </div>
                    <!-- ======= textarea style end ======= -->
    </div>
            </div>
            <center><a href="BookingAcceptPage.jsp?B_id=<%=result.getString("B_id")%>">
                        <input class="btn" type="submit" value="Accept" name="approve"/> 
                       
                       </a></center>
           
           <!--Content Area End-->
        <%}
    result.close();
    smnt.close();
    dbcon.close();
    %>
      <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 order-last order-md-first">
                <div class="copyright text-center text-md-start">
                  <p class="text-sm">
                    Designed by Second Year (B.C.Sc) 

                    </p>
                </div>
              </div>
              <!-- end col-->
              <div class="col-md-6">
                <p class="text-sm">
                  Copyright &#169; 2024 University of Computer Studies(Pakokku)
                </p>
                    </div>
              </div>
            </div>
            <!-- end row -->
          </div>
          <!-- end container -->
          
        </footer>
      </main>
      <!-- ========= All Javascript files linkup ======== -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/Chart.min.js"></script>
    <script src="assets/js/dynamic-pie-chart.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <script src="assets/js/fullcalendar.js"></script>
    <script src="assets/js/jvectormap.min.js"></script>
    <script src="assets/js/world-merc.js"></script>
    <script src="assets/js/polyfill.js"></script>
    <script src="assets/js/main.js"></script>
    
    
  
</body>
</html>