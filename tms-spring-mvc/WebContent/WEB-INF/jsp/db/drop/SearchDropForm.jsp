<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Drop Form</title>
</head>
<body>
	<h1>Search Drop</h1>
	<form:form action="${pageContext.request.contextPath}/SearchDrop" method="post">
		<form:label path="id">ID:</form:label> 
		<input type="number" name="id" required /><br>
		
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>