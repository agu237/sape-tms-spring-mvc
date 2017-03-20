<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Vehicle Form</title>
</head>
<body>
	<h3>Delete Vehicle</h3>
	<form:form action=./DeleteVehicle method="post">
	
	     <form:label path="name">ID:</form:label>
		 <form:input type="text" path="id" required="required" /><br>
		<input type="submit" value="Submit" />
	</form:form>
	<a href=./AdminHomeView>Go back</a>
</body>
</html>