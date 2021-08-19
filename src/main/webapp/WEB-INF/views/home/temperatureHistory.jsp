<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#temperatureHistory {
	width: 100%;
	align-items: center;
	display: flex;
}
</style>
<div id="temperatureHistory">

	<button onclick="startInterval()">start</button>&nbsp;
	<button onclick="stopInterval()">stop</button>

	<br>
	<c:forEach var="temperature" items="${temperatureList}"
		varStatus="status">
		<c:out value="${temperature }" />
		<br>
	</c:forEach>
</div>