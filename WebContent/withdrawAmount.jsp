<%@page import="bean.LoginDao"%>
<%@page import="bean.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
	obj=(LoginBean)session.getAttribute("object");
	obj.setNetBankingPassword(request.getParameter("nbpassword"));
	obj.setTransactionAmount(Float.parseFloat(request.getParameter("amount")));
	int status=LoginDao.withdrawCash(obj);
	if(status==1){
		out.print("AMOUNT WITHDRAWN SUCCESSFULLY!");
	}  
    else  if(status==0)
    {  
    	out.print("Invalid Password. Please Retry!");  
    }
    else if(status==2){
    	out.print("Insufficient Balance!");
    }
    else{
    	out.print("Enter valid withdrawing amount!");
    }
%>