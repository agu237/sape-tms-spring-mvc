<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="com.sapient.tms.model.bl.CentralLogic" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
	<% request.setAttribute("rides", new CentralLogic().displayAllAvailableRides()); %>
	<c:if test="${not empty requestScope.status }">
		<p id="errorMessage"><c:out value="${requestScope.status}"></c:out></p>
	</c:if>
	<h1>Enter details</h1>
	<form:form action="/SignUp" method="post">
		<form:label path="id">Employee ID:</form:label> 
		<form:input type="number" path="id" required/><br>
		
		<form:label path="password"></form:label>
		<form:input type="password" path="password" required/><br>
		
		<form:label path="name">Name:</form:label>
	    <form:input type="text" path="name" required/><br>
		Ride: <br>
		<table>
			<tr>
				<th>Select</th>
				<th>Vehicle</th>
				<th>Pickup Start</th>
				<th>Drop Start</th>
				<th>Seats Allocated / Capacity</th>
			</tr>
			<c:forEach var="ride" items="${requestScope.rides}">
				<tr>
					<td><form:radiobutton path="id" value="${ride.getVehicle().getId()}" /></td>
					<td>${ride.getVehicle().getBrandName()} ${ride.getVehicle().getModelName()}</td>
					<td>${ride.getPickupTime() }</td>
					<td onclick="alert('Drops:\n' + ${ride.getRoute().getDropList().toString()})">${ride.getDropTime() }</td>
					<td>${ride.getSeatsAllocated() } / ${ride.getVehicle().getCapacity() }</td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Submit">
		<a href="${pageContext.request.contextPath }/HomeView.jsp">Go back</a>
	</form:form>
</body>
</html>