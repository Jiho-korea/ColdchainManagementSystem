<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%
Date date = new Date();
%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<p>
		The time on the server is
		<%=date%>.
	</p>

	<div class="fixed" id="temperatureHistoryList">
		<c:import url="temperatureHistory.jsp" />
	</div>
	<div id="result"></div>

</body>
<!-- Jquery Plugins, main Jquery -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script defer type="text/javascript">
	var interval = null;

	function printTemperature() {
		$.ajax({
			url : "${pageContext.request.contextPath}/test",
			type : "post",
			dataType : "text",
			contentType : false,
			processData : false,
			cache : false
		}).done(function(result) {
			var html = jQuery('<div>').html(result);
			var contents = html.find("div#temperatureHistory").html();
			$("#temperatureHistoryList").html(contents);
		}).fail(function(jqXHR, textStatus, errorThrown) {
			console.log("에러");
			console.log(jqXHR);
			console.log(textStatus);
			console.log(errorThrown);
		});
	}

	function startInterval() {
		interval = setInterval(printTemperature, 1000);
	}

	function stopInterval() {
		if (interval != null) {
			clearInterval(interval);
		}
	}
</script>
</html>
