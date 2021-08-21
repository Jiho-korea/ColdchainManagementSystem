<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#temperatureHistory3 {
	width: 100%;
	align-items: center;
	display: flex;
}
</style>
<div id="temperatureHistory3">
	<p style="text-align:left; width: ${temperature.temperature}%"
		data-value="${temperature.temperature }">></p>
	<progress max="100" value="${temperature.temperature }" class="html5"> </progress>
	
	<c:forEach var="index" items="${outlierList3}" varStatus="status">
		<c:out value="${index.temperature }" /> / <c:out value="${index.date }" />
		<br>
	</c:forEach>
</div>