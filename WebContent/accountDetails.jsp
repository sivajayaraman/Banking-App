<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.LoginBean"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
	obj=(LoginBean)session.getAttribute("object");
	int id=obj.getId();
  	String username=obj.getName();
  	String address=obj.getAddress();
  	String phone=obj.getPhone();
  	String intrest = obj.getIntrest();
  	float balance=obj.getBalance();
  	String acc = obj.getAccNo();
 %>
 <html>
 	<head>
 		<title>ACCOUNT DETAILS</title>
 	</head>
 	<style>
 		.container {
 			border: 3px solid #f1f1f1;
		  	padding: 16px;
 		}
 		.content {
		  max-width: 1000px;
		  margin: auto;
		}
		#tbl {
		  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		
		#tbl td, #tbl th {
		  border: 1px solid #ddd;
		  padding: 8px;
		  text-align: center;
		}
		
		#tbl tr:nth-child(even){
			background-color: #f2f2f2;
			text-align: center;
		}
		
		#tbl tr:hover {
			background-color: #ddd;
			text-align: center;
		}
		#tbl th { 
		  padding-top: 12px;
		  padding-bottom: 12px;
		  text-align: center;
		  background-color: #4CAF50;
		  color: white;
		}
	</style>
 	
 	<body>
 	<br><br><br><br><br>
 	<div class="content">
 		<div class="container">
 			<table id="tbl">
 				<tr>
		 			<th>ACCOUNT NO</th>
		 			<th>USERNAME</th>
		 			<th>BALANCE</th>
		 			<th>INTREST</th>
		 			<th>PHONE</th>
		 			<th>ADDRESS</th>
		 			</tr>
	 			<tr>
		 			<td><% out.print(acc); %></td>
		 			<td><% out.print(username); %></td>
		 			<td><% out.print(balance); %></td>
		 			<td><% out.print(intrest); %></td>
		 			<td><% out.print(phone); %></td>
		 			<td><% out.print(address); %></td>
		 		</tr>
 			</table>
 		</div>
 		</div>
 	</body>
 </html>