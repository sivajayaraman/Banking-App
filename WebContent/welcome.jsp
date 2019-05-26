<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.LoginBean"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
	obj=(LoginBean)session.getAttribute("object");
  	String username=obj.getName();
 %>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HOME PAGE</title>
	</head>
	<style>
		
		* {
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		    box-sizing: border-box;
		}
		a {
			text-decoration: none
		}
		h3{
			color: black;
		}
		
		.logoutLblPos{
  		 	position:fixed;
  		 	right:10px;
   	     	top:5px;
		}
		.flip-card {
		  box-shadow: 0 4px 8px 0 rgba(46, 49, 49, 1);
		  border-radius: 73px;    
		  background-color: transparent;
		  width: 150px;
		  height: 150px;
		  perspective: 1000px; 
		 }
		.flip-card-inner {
		  position: relative;
		  width: 100%;
		  height: 100%;
		  text-align: center;
		  transition: transform 0.8s;
		  transform-style: preserve-3d;
		}
		.flip-card-front {
		  position: absolute;
		  width: 100%;
		  height: 100%;
		  backface-visibility: hidden;
		  border-radius: 25px;    
		}
		
		.flip-card-front {
		  
		  color: black;
		}
		.grid-container {
		  display: grid;
		  grid-template-columns: auto auto auto auto;
		  padding: 5px;
		}
		
		.grid-item {
		  padding: 70px;
		  text-align: center;
		}
	</style>
	<body style="background-color: #4863A0;">
		<br><br><br><br><br><br>
		<h1 style="color: white;"> Welcome, <% out.print(username); %> ! </h1>
		<div class="grid-container">
  			<div class="grid-item">
    			<div class="flip-card">
  					<div class="flip-card-inner">
    					<div class="flip-card-front">
      						<a href="transaction.jsp" ><br><br>
                        	<div class="row h-100 justify-content-center align-items-center">
                            	<h3 style="text-align: center">Online Transaction</h3>
                         	</div> 
                         </a>
						</div>
    				  </div>
					</div>
				</div>
				<div class="grid-item">
    			<div class="flip-card">
  					<div class="flip-card-inner">
    					<div class="flip-card-front">
      						<a href="withdrawl.jsp" ><br><br>
                        	<div class="row h-100 justify-content-center align-items-center">
                            	<h3 style="text-align: center">Amount Withdraw</h3>
                         	</div> 
                         </a>
						</div>
					  </div>
					</div>
				</div>
				<div class="grid-item">
    			<div class="flip-card">
  					<div class="flip-card-inner">
    					<div class="flip-card-front">
      						<a href="deposit.jsp" ><br><br>
                        	<div class="row h-100 justify-content-center align-items-center">
                            	<h3 style="text-align: center">Amount Deposit</h3>
                         	</div> 
                         </a>
						</div>
					  </div>
					</div>
				</div>
				<div class="grid-item">
    			<div class="flip-card">
  					<div class="flip-card-inner">
    					<div class="flip-card-front">
      						<a href="accountDetails.jsp" ><br><br>
                        	<div class="row h-100 justify-content-center align-items-center">
                            	<h3 style="text-align: center">Account Details</h3>
                         	</div> 
                         </a>				    
						</div>
   					  </div>
					</div>
				</div>
			<br><br><br><br>
		</div>
		<form align="right" name="form1" method="post" action="logout.jsp">
  			<label class="logoutLblPos">
  				<button type="submit" class="btn btn-danger">Logout</button>
  			</label>
		</form>
	</body>
</html>