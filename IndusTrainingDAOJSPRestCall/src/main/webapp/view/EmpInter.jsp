<%@page import="java.io.InputStreamReader"%>
<%@page import="com.indus.training.persist.entity.Employee"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String param1 = request.getParameter("ID");

		String result = null;

		URL url = new URL("http://localhost:8080/IndusTrainingHibernateJpaServlet/service/getempl/" + param1);

		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Accept", "application/json");
		conn.connect();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String ouput;
		ouput = br.readLine();
		ObjectMapper mapper = new ObjectMapper();
		Employee empObj = mapper.readValue(ouput, Employee.class);
		conn.disconnect();
		result = empObj.getFirstName();
		request.setAttribute("inResult", result);
		RequestDispatcher reqObj = request.getRequestDispatcher("EmpOut.jsp");
		reqObj.forward(request, response);
	%> 
</body>
</html>