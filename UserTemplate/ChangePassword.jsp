<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="customerlogin.css" />

    <title>Pet Care Service Booking System</title>
</head>
<body>
       
        <section class="container forms">
            <div class="form login">
                <div class="form-content">
                    <header>Change Password</header>
                    <form action="ChangePasswordPage.jsp" method="post">
                        <div class="field input-field">
                            <input type="password"  name="currentpassword" placeholder="Current Password" 
      
                             class="input">
                        </div> 

                        <div class="field input-field">
                            <input type="password" name="newPassword"  
                            placeholder=" New Password" class="password">
                            
                        </div>
                         <div class="field input-field">
                            <input type="password" name="confirmPassword"  
                            placeholder=" Confirm Password" class="password">
                            
                        </div>
                        

                        
                        <div class="field button-field">
                            <button>Change Password</button>
                        </div>
                    </form>

       
       
       
  </body>
</html>