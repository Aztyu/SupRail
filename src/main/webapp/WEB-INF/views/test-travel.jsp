<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<body>
		<h1>Trip summary</h1>
		<c:forEach var="trip" items="${travel.aller}">
		   <h2>${ trip.start.name }</h2>
		   <p>${ trip.formatedStartDate }</p>
		   
		   <h2>${ trip.end.name }</h2>
		   <p>${ trip.formatedStopDate }</p>
		</c:forEach>	
	</body>
</html>