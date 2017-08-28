<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="com.indus.training.persist.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Double result;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Deatils :</h1>
	<%
		String result = (String) request.getAttribute("inResult");
	%> 
	<br> result :
	<%=result%><br>
	<a href="EmpIn.jsp">Home</a>
</body>
</html>