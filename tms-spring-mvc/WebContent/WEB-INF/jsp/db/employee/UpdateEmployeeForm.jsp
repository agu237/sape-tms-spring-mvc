<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Employee Form</title>
</head>
<body>
	<h1>Update Employee Details</h1>
	<form:form action="${pageContext.request.contextPath}/UpdateEmployee" method="post">
		<form:label path="id">ID:</form:label> 
		<form:input type="text" path="id" required /><br>
		
		<from:label path="password">New Password:</from:label> 
		<form:input type="password" path="password" required /><br>
		
		<form:label path="name">Employee Name:</form:label>
		<form:input type="text" path="name" required /><br>
		
		<form:label path="id">Vehicle id:</form:label>
	    <input type="text" name="id" required /><br>
		
		<input type="submit" value="Submit" />
	</form:form>



</body>
</html>