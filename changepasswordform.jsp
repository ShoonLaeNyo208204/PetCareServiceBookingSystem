<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pet Care Service Booking System</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/nunito-font.css">
	<!-- Main Style Css -->
	
	<link
    rel="shortcut icon"
    href="assets/images/favicon.svg"
    type="image/x-icon"
  />
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/css/lineicons.css" />
  <link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
  <link rel="stylesheet" href="assets/css/fullcalendar.css" />
  <link rel="stylesheet" href="assets/css/fullcalendar.css" />
  <link rel="stylesheet" href="assets/css/main.css" />
 
    <style>
    .dashboardphoto{
           margin-top:15%;
         color:white;
         font-size:3em;
         font-weight:bolder;
         font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
         text-align:center;
    
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
		body {
	margin:  0;
}
.page-content {
	width: 100%;
	margin:  0 auto;
	background-image: -moz-linear-gradient( 136deg, #003a46 0%, rgb(28,181,224) 100%);
    background-image: -webkit-linear-gradient( 136deg, rgb(0, 70, 69) 0%, rgb(28,181,224) 100%);
    background-image: -ms-linear-gradient( 136deg, rgb(0, 70, 47) 0%, rgb(28,181,224) 100%);
	display: flex;
	display: -webkit-flex;
	justify-content: center;
	-o-justify-content: center;
	-ms-justify-content: center;
	-moz-justify-content: center;
	-webkit-justify-content: center;
	align-items: center;
	-o-align-items: center;
	-ms-align-items: center;
	-moz-align-items: center;
	-webkit-align-items: center;
}
.form-v6-content  {

	background: #fff;
	width: 700px;
	border-radius: 8px;
	-o-border-radius: 8px;
	-ms-border-radius: 8px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	margin: 180px 0;
	font-family: 'Nunito', sans-serif;
	color: #fff;
	font-weight: 700;
	position: relative;
	display: flex;
	display: -webkit-flex;
}
.form-v6-content .form-left {
	margin-bottom: -6px;
}

.form-v6-content .form-detail {
    padding: 30px 40px;
	position: relative;
	width: 100%;
}
.form-v6-content .form-detail h2 {
	color: #333;
	font-size: 35px;
	text-align: center;
	position: relative;
	padding: 6px 0 0;
	margin-bottom: 47px;
}
.form-v6-content .form-row {
    width: 100%;
}
.form-v6-content .form-detail .form-row-last {
	text-align: center;
}
.form-v6-content .form-detail .input-text {
	margin-bottom: 35px;
}
.form-v6-content .form-detail input {
	width: 92%;
    padding: 0px 15px 10px 15px;
    border: 2px solid transparent;
    border-bottom: 2px solid #e5e5e5;
    appearance: unset;
    -moz-appearance: unset;
    -webkit-appearance: unset;
    -o-appearance: unset;
    -ms-appearance: unset;
    outline: none;
    -moz-outline: none;
    -webkit-outline: none;
    -o-outline: none;
    -ms-outline: none;
    font-family: 'Nunito', sans-serif;
    font-size: 16px;
    font-weight: 700;
    color: #333;
}
.form-v6-content .form-detail .form-row input:focus {
	border-bottom: 2px solid #fe892a;
}
.form-v6-content .form-detail .register {
	background: #fe892a;
	border-radius: 6px;
	-o-border-radius: 6px;
	-ms-border-radius: 6px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	width: 160px;
	box-shadow: 0px 3px 10px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 3px 10px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 3px 10px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 3px 10px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 3px 10px 0px rgba(0, 0, 0, 0.15);
	border: none;
	margin: 11px 0 50px 0px;
	cursor: pointer;
	font-family: 'Nunito', sans-serif;
	color: #fff;
	font-weight: 700;
	font-size: 18px;
}
.form-v6-content .form-detail .register:hover {
	background: #e37b27;
}
.form-v6-content .form-detail .form-row-last input {
	padding: 13px;
}
input::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #666;
  font-size: 16px;
}
input::-moz-placeholder { /* Firefox 19+ */
  color: #666;
  font-size: 16px;
}
input:-ms-input-placeholder { /* IE 10+ */
  color: #666;
  font-size: 16px;
}
input:-moz-placeholder { /* Firefox 18- */
  color: #666;
  font-size: 16px;
}

/* Responsive */
@media screen and (max-width: 991px) {
	.form-v6-content {
		margin: 180px 20px;
		flex-direction:  column;
		-o-flex-direction:  column;
		-ms-flex-direction:  column;
		-moz-flex-direction:  column;
		-webkit-flex-direction:  column;
	}
	.form-v6-content .form-left {
		width: 100%;
	}
	.form-v6-content .form-left img {
		width: 100%;
		border-bottom-left-radius: 0px;
	    border-top-right-radius: 8px;
	}
	.form-v6-content .form-detail {
		padding: 30px 20px 30px 20px;
	    width: auto;
	}
	.form-v6-content .form-detail .form-row input {
		width: 96%;
	}
	.form-v6-content .form-detail .register {
		margin-bottom: 80px;
	}
}
@media screen and (max-width: 767px) {
	.form-v6-content .form-detail .form-row input {
		width: 94%;
	}
}

@media screen and (max-width: 575px) {
	.form-v6-content .form-detail .form-row input {
	    width: 89%;
	}
}
.loginimg{
margin-left:50px;
margin-top:10px;
margin-bottom:20px;
box-shadow:10px 10px 10px 10px gray;
}

	</style>
</head>
<body class="form-v6">
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
                            <a href="changePasswordform.jsp"> <i class="lni lni-cog"></i>Change Password</a>
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
	<div class="page-content">
		<div class="form-v6-content" style="margin-top:100px;">
			<div class="form-left">
				<img src="images/Createpackagepho4.jpg" alt="form" width="300px" height="500px" class="loginimg">
			</div>
			<form class="form-detail" action="changepassword.jsp" method="post">
				<h2>Change Password</h2>   
				<div class="form-row">
					<input type="password" name="currentpassword" id="password" class="input-text" placeholder="Current Password" required ">
				</div>
				<div class="form-row">
					<input type="password" name="newpassword" id="password" class="input-text" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" placeholder="New Password" required>
				</div>
				<div class="form-row">
					<input type="password" name="confirmpassword" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" class="input-text" placeholder="Re-type New Password" required>
				</div>
				<div class="form-row-last">
					<input type="submit" name="Confirm" class="register" value="Confirm">
				</div>
			</form>
		</div>
	</div>
	 <footer class="footer" style="color:black;">
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
         
          <!-- end container -->
        </footer>
     
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
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>