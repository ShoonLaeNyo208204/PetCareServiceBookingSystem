<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<head>

<link rel="stylesheet" href="viewstaff.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>PetCare Service Booking System</title>

<link rel="shortcut icon" href="assets/images/favicon.svg"
	type="image/x-icon" />
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/lineicons.css" />
<link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="CreateForm.css">

</head>
<body>
	<aside class="sidebar-nav-wrapper">
		<div class="navbar-logo">
			<a href="index.html"> <img class="img"
				src="assets/images/logo/petCarelogo2.png" alt="logo" /> </a>
		</div>

		<nav class="sidebar-nav">
			<ul>

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_1" aria-controls="ddmenu_1"
					aria-expanded="false" aria-label="Toggle navigation"> <span
						class="icon"> <svg width="22" height="22"
								viewBox="0 0 22 22">
                          <path
									d="M17.4167 4.58333V6.41667H13.75V4.58333H17.4167ZM8.25 4.58333V10.0833H4.58333V4.58333H8.25ZM17.4167 11.9167V17.4167H13.75V11.9167H17.4167ZM8.25 15.5833V17.4167H4.58333V15.5833H8.25ZM19.25 2.75H11.9167V8.25H19.25V2.75ZM10.0833 2.75H2.75V11.9167H10.0833V2.75ZM19.25 10.0833H11.9167V19.25H19.25V10.0833ZM10.0833 13.75H2.75V19.25H10.0833V13.75Z" />
                        </svg> </span> <span class="text">Dashboard</span> </a>
					<ul id="ddmenu_1" class="collapse dropdown-nav">
						<li><a href="index.html">Pet Care Service Booking System </a>
						</li>
					</ul>
				</li>


				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_2" aria-controls="ddmenu_2"
					aria-expanded="false" aria-label="Toggle navigation"> <span
						class="icon"> <path
								d="M12.8334 1.83325H5.50008C5.01385 1.83325 4.54754 2.02641 4.20372 2.37022C3.8599 2.71404 3.66675 
                          3.18036 3.66675 3.66659V18.3333C3.66675 18.8195 3.8599 19.2858 4.20372 19.6296C4.54754 19.9734 5.01385 
                          20.1666 5.50008 20.1666H16.5001C16.9863 20.1666 17.4526 19.9734 17.7964 19.6296C18.1403 19.2858 18.3334 
                          18.8195 18.3334 18.3333V7.33325L12.8334 1.83325ZM16.5001 18.3333H5.50008V3.66659H11.9167V8.24992H16.5001V18.3333Z" />

					</span> 


			

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_4" aria-controls="ddmenu_4"
					aria-expanded="false" aria-label="Toggle navigation"> <span
						class="icon"> <path
								d="M3.66675 4.58325V16.4999H19.2501V4.58325H3.66675ZM5.50008 14.6666V6.41659H8.25008V14.6666H5.50008ZM10.0834 14.6666V11.4583H12.8334V14.6666H10.0834ZM17.4167 14.6666H14.6667V11.4583H17.4167V14.6666ZM10.0834 9.62492V6.41659H17.4167V9.62492H10.0834Z" />
							</svg> </span> <span class="text">Package</span> </a>
					<ul id="ddmenu_4" class="collapse dropdown-nav">
						<li><a href="CreatePackageForm.jsp"> Create Package </a>
						</li>
						<li><a href="ViewPackageList.jsp">View Package</a>
						</li>
					</ul>
				</li>

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_55" aria-controls="ddmenu_55"
					aria-expanded="false" aria-label="Toggle navigation"> <span
						class="icon"> <path
								d="M1.83325 19.25V17.4167H18.3333V19.25H1.83325ZM18.3333 7.33333V4.58333H16.4999V7.33333H18.3333ZM18.3333 2.75C18.8195 2.75 19.2858 2.94315 19.6296 3.28697C19.9734 3.63079 20.1666 4.0971 20.1666 4.58333V7.33333C20.1666 7.81956 19.9734 8.28588 19.6296 8.6297C19.2858 8.97351 18.8195 9.16667 18.3333 9.16667H16.4999V11.9167C16.4999 12.8891 16.1136 13.8218 15.426 14.5094C14.7383 15.197 13.8057 15.5833 12.8333 15.5833H7.33325C6.36079 15.5833 5.42816 15.197 4.74053 14.5094C4.05289 13.8218 3.66659 12.8891 3.66659 11.9167V2.75H18.3333ZM14.6666 4.58333H5.49992V11.9167C5.49992 12.4029 5.69307 12.8692 6.03689 13.213C6.38071 13.5568 6.84702 13.75 7.33325 13.75H12.8333C13.3195 13.75 13.7858 13.5568 14.1296 13.213C14.4734 12.8692 14.6666 12.4029 14.6666 11.9167V4.58333Z" />

					</span> <span class="text">Booking</span> </a>
					<ul id="ddmenu_55" class="collapse dropdown-nav">
						<li><a href="ViewBooking.html"> View Booking </a>
						</li>
					</ul>
				</li>

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_5" aria-controls="ddmenu_5"
					aria-expanded="false" aria-label="Toggle navigation"> <span
						class="icon"> <path
								d="M13.75 4.58325H16.5L15.125 6.41659L13.75 4.58325ZM4.58333 1.83325H17.4167C18.4342 1.83325 19.25 2.65825 19.25 3.66659V18.3333C19.25 19.3508 18.4342 20.1666 17.4167 20.1666H4.58333C3.575 20.1666 2.75 19.3508 2.75 18.3333V3.66659C2.75 2.65825 3.575 1.83325 4.58333 1.83325ZM4.58333 3.66659V7.33325H17.4167V3.66659H4.58333ZM4.58333 18.3333H17.4167V9.16659H4.58333V18.3333ZM6.41667 10.9999H15.5833V12.8333H6.41667V10.9999ZM6.41667 14.6666H15.5833V16.4999H6.41667V14.6666Z" />
							</svg> </span> <span class="text">Contact</span> </a>
					<ul id="ddmenu_5" class="collapse dropdown-nav">
						<li><a href="ViewContact.html">View Contact</a>
						</li>
					</ul>
				</li>
	</aside>


	<div class="overlay"></div>
	<!-- ======== sidebar-nav end =========== -->


	<!-- ======== main-wrapper start =========== -->
	<main class="main-wrapper"> <!-- ========== header start ========== -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-5 col-md-5 col-6">
					<div class="header-left d-flex align-items-center">
						<div class="menu-toggle-btn mr-20">
							<button id="menu-toggle" class="main-btn primary-btn btn-hover">
								<i class="lni lni-chevron-left me-2"></i> Menu
							</button>
						</div>
						<div class="header-search d-none d-md-flex">
							<form action="#">
								<input type="text" placeholder="Search..." />
								<button>
									<i class="lni lni-search-alt"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-7 col-6">
					<div class="header-right">
						<!-- filter end -->
						<!-- profile start -->
						<div class="profile-box ml-15">
							<button class="dropdown-toggle bg-transparent border-0"
								type="button" id="profile" data-bs-toggle="dropdown"
								aria-expanded="false">
								<div class="profile-info">
									<div class="info">
										<h6>Admin</h6>
										<div class="image">
											<img src="assets/images/profile/profile-image.png" alt="" />

										</div>
									</div>
								</div>
								<i class="lni lni-chevron-down"></i>
							</button>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="profile">
								<li><a href="#0"> <i class="lni lni-user"></i> View
										Profile</a>
								</li>
								<li><a href="ChangePassword.html"> </i>Change Password</a>
								</li>
								<li><a href="LogOut.html"> <i class="lni lni-exit"></i>
										Log Out</a>
								</li>
							</ul>
						</div>
						<!-- profile end -->
					</div>
				</div>
			</div>
		</div>
	</header> <!--Content Area-->
	
	

	<table border=1>
	<thead class="viewheader">
		<caption>
			<h3>View Package List</h3>
		</caption>
		<tr class="th">
			<th>No</th>
			<th>PackageName</th>
			<th>Price</th>
			<th>Description</th>
			<th>Setting</th>    
		</tr>
        </thead>
		<%
			Class.forName("com.mysql.jdbc.Driver");

			Connection dbcon = DriverManager.getConnection("jdbc:mysql://localhost/petcareservice", "root", "root");
			System.out.println("Connect to Database!!");
			Statement smnt = dbcon.createStatement();
			String query1 = "Select*from Package";
			ResultSet result1 = smnt.executeQuery(query1);
			int count = 0;
			while (result1.next()) {
				count++;
			    String  id = result1.getString("P_id");
				String Name = result1.getString("P_name");
				String price = result1.getString("P_price");
				String desc = result1.getString("P_description");
				
		%>
		<tr>
			<td><%=count%></td>
			<td><%=Name%></td>
			<td><%=price%></td>
			<td><%=desc%>

			
			<td><a href="PackageInformatiom.jsp?P_id=<%=id%>"><button class="detail">Detail</button></a>
			<a href="PackageDectativate.jsp?P_id=<%=id%>"><button class="dect">Deactive</button></a>
			
			</a></td>

		</tr>

		<%
			}
		%>
		<%
			result1.close();
			smnt.close();
			dbcon.close();
		%>
	</table>
	<!-- ========== footer start =========== --> <footer class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 order-last order-md-first">
					<div class="copyright text-center text-md-start">
						<p class="text-sm" style="color: black;">Designed by Second
							Year (B.C.Sc)</p>
					</div>
				</div>
				<!-- end col-->
				<div class="col-md-6" style="color: black;">Copyright &#169;
					2024 University of Computer Studies(Pakokku)</div>
			</div>
		</div>
		<!-- end row -->
		</div>
		<!-- end container -->
	</footer> </main>
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


