<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%
	Date now = new Date();
%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is <%= now %>.</P>
	<a href="${pageContext.request.contextPath }/test ">links</a>
</body>
</html>
