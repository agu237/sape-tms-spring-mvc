<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Drop Form</title>
</head>
<body>
	<h1>Update Drop</h1>
	<form:form action="${pageContext.request.contextPath}/UpdateDrop" method="post">
        <form:label path="id">ID:</form:label> 
		<form:input type="number" path="id" required /><br>
		
		<form:label path="name">Name:</form:label>
		<form:input type="text" path="name" required /><br>
		
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>