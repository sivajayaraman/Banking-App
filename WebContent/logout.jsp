<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<% 
		session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Logout</title>
	</head>
	<style>
		.content {
		  max-width: 500px;
		  margin: auto;
		}
	</style>
	<body>
	<div class="content">
		<p><h2>You have been successfully logout</h2></p>
		<a href="login.html">Click here for Login Page</a>
	</div>
	</body>
</html>