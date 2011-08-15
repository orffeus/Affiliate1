<%@page import="com.interhome.webservice.WebServiceSoap"%>
<%@page import="com.interhome.webservice.WebService"%>
<%@page import="com.interhome.webservice.CheckServerHealthResult"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
</head>
<% session.setAttribute("site", "index"); %>
<body>

<div id="header">
	<jsp:include page="/WEB-INF/common/header.jsp"/>
</div>

<p> Welcome </p>

<div class = "content">
		<div class = "colum_left float_l">
		
		</div>
		<div class = "colum_right float_l">
			<p>Here you can put datastore to initial state: <a href="../index2.jsp">index2</a></p>
<%
			WebServiceSoap wss = new WebService().getWebServiceSoap();
			CheckServerHealthResult cshr = wss.checkServerHealth();
			String s = cshr.getAvailability();
			String s2 = cshr.getMessages().getServerName();
			
			//String s = "testujeme";
%>
			<p>Web service is <%= s %></p>
			<p>Server name is <%= s2 %></p>
			<p>Go to <a href="/views/testWS">testWS.jsp</a></p>
			<p>Go to old Search site<a href="/views/search_old">search_old.jsp</a></p>
		</div>
</div>


</body>
</html>