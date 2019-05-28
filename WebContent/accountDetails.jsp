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
 		<link rel="stylesheet" type="text/css" href="design.css">
 	</head>
 	<body>
 	<br><br><br><br><br>
 	<div class="content">
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
 	</body>
 </html>