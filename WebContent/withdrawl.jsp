<%@page import="bean.LoginDao"%>
<%@page import="bean.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
	obj=(LoginBean)session.getAttribute("object");
	String acc=obj.getAccNo();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>WITHDRAW CASH</title>
		<link rel="stylesheet" type="text/css" href="design.css">
	</head>
	<body>
		<div class="content">
			<br><br><br><br><br><br>
    		<div class="container">
				<form action="withdrawAmount.jsp" method="post">
					<label>Your Account Number</label>
					<input type="text" value= <%  out.print(acc); %> name="useracc" required>
					<label>Withdrawing Amount</label>
					<input type="text" placeholder="Enter Transaction Amount" name="amount" required>
					<label>Enter your Internet Banking Password</label>
					<input type="password" placeholder="Enter Internet Banking Password" name="nbpassword" required>
					<div class="clearfix">
						<button type="submit" class="recvbtn">Receive</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>