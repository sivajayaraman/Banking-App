<%@page import="bean.LoginDao"%>
<%@page import="bean.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>
<%
	if((int)session.getAttribute("log")==0)
	    response.sendRedirect("login.html");

	%>
<%
	obj=(LoginBean)session.getAttribute("object");
	obj.setNetBankingPassword(request.getParameter("nbpassword"));
	obj.setTransactionAmount(Float.parseFloat(request.getParameter("amount")));
	int status=LoginDao.depositCash(obj);
	if(status==1){
		out.print("AMOUNT DEPOSITED SUCCESSFULLY!");
	}  
    else  if(status==0)
    {  
    	out.print("Invalid Password. Please Retry!");  
    }
    else{
    	out.print("Please Enter Valid Deposit Amount!");
    }
%>