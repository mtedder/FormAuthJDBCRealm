<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

User '<%=request.getRemoteUser()%>' has been logged out.
<%@ page session="true"%> 
<% session.invalidate(); %>
<br/><br/>
<a href="SecuredPage.jsp">Click here to go back to Secured page</a>
