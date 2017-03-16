<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Vehicle Form</title>
</head>
<body>
<h3>Delete Employee</h3>
	<form:form action="${pageContext.request.contextPath}/DeleteEmployee" method="post">
		<form:label path="id">ID:</form:label> 
		<form:input type="number" path="id" required /><br>
		
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>