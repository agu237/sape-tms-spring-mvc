<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Route Form</title>
</head>
<body>
	<h3>Search Route</h3>
	<form action="${pageContext.request.contextPath}/SearchRoute"
		method="post">
		ID: <input type="text" name="id" required /><br> <input
			type="submit" value="Submit" />
	</form>
	<a href="${pageContext.request.contextPath }/AdminHomeView.jsp">Go back</a>
</body>
</html>