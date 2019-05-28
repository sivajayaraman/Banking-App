<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="design.css">
		<title>CASH DEPOSIT</title>
	</head>
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