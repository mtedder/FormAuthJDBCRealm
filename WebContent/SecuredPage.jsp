<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Secured Page</title>
</head>
<body>
<h1>Access Granted</h1>
<p>Put your secured content in this jsp page.</p><br>
<a href="logout.jsp">Click here to log out</a><br>
<%
	out.print("User " + request.getUserPrincipal().getName() + " is logged in.");
%>
</body>
</html>