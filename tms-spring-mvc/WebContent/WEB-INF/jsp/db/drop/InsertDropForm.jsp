<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Vehicle Form</title>
</head>
<body>
	<h1>Insert Drop</h1>
	<form:form action="/InsertDrop" method="post">
	
	<form:label path="name">Name: </form:label>
	<form:input type="text" path="name" required /><br>
		
		<input type="submit" value="submit" />
	</form:form>
</body>
</html>