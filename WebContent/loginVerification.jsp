<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>
<% String user = request.getParameter("username"); 
   String pass = request.getParameter("password"); %> 
<%  
	obj.setUsername(user);
	obj.setPassword(pass);
	boolean status=LoginDao.validate(obj);
	session.setAttribute("object",obj);
	session.setAttribute("log", 1);
    if(status==true){
    	session.setAttribute("session","TRUE");
    	%>
		<jsp:include page="welcome.jsp"></jsp:include>
<%  }  
    else  
    {  
    	out.print("Sorry, Invalid Credentials! Retry!");  
    %>  
    <jsp:include page="login.html"></jsp:include>  
    <%}%>