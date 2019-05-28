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
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>
	<body >
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
                            	<h3 style="text-align: center">Amount Deposition</h3>
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
                            	<h3 style="text-align: center">Accounting Details</h3>
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