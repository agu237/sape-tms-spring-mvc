<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="com.sapient.tms.model.bl.CentralLogic" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
	
	<c:if test="${not empty requestScope.status }">
		<p id="errorMessage"><c:out value="${status}"></c:out></p>
	</c:if>
	<h1>Enter details</h1>
	<form:form action="./signUp" method="post" commandName="employee">
		
		<form:label path="id"> Employee ID:</form:label>
		 <form:input type="number" path="id" required="required"/><br><br>
		 
		<form:label path="password">Password:</form:label>
		<form:password  path="password" required="required"/><br><br>
		
		<form:label path="name">Name:</form:label>
		<form:input type="text" path="name" required="required"/><br><br>
		
		<form:label path="ride">Ride:</form:label>
	
		<table border="2">
			<tr>
				<th>Select</th>
				
				<th>Vehicle</th>
				
				<th>Pickup Start</th>
				
				<th>Drop Start</th>
				
				<th>Seats Allocated / Capacity</th>
			</tr>
			<c:forEach var="ride" items="${rides}">
				<tr>
					<td><form:radiobutton path="ride.vehicle.id" value="${ride.getVehicle().getId()}" /></td>
					<td>${ride.getVehicle().getBrandName()} ${ride.getVehicle().getModelName()}</td>
					<td>${ride.getPickupTime() }</td>
					<td onclick="alert('Drops:\n' + ${ride.getRoute().getDropList().toString()})">${ride.getDropTime() }</td>
					<td>${ride.getSeatsAllocated() } / ${ride.getVehicle().getCapacity() }</td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Submit">
		<a href=./GoBackToAdmin>Go Back</a>
	</form:form>
</body>
</html>