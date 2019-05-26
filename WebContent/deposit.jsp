<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>CASH DEPOSIT</title>
	</head>
	<style>
		body {
		    font-family: Arial, Helvetica, sans-serif;
		}
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
		}
		a {
			text-decoration: none
		}
		button {
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  cursor: pointer;
		  width: 100%;
		}
		button:hover {
		  opacity: 0.8;
		  background-color: #000000;
		}
		.container {
		  border: 3px solid #f1f1f1;
		  padding: 16px;
		}
		.recvbtn{
		  float: center;
		}
		.content {
		  max-width: 500px;
		  margin: auto;
		}
		.clearfix::after {
	      content: "";
		}
	</style>
	<body>
		<div class="content">
			<br><br><br><br><br><br><br><br>
    		<div class="container">
				<form action="payAmount.jsp" method="post">
					<label>Depositing Amount</label>
					<input type="text" placeholder="Enter Transaction Amount" name="amount" required>
					<label>Enter your Internet Banking Password</label>
					<input type="password" placeholder="Enter Internet Banking Password" name="nbpassword" required>
					<div class="clearfix">
						<button type="submit" class="recvbtn">CONFIRM</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>