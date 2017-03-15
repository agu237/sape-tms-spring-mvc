<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Vehicle successful</title>
</head>
<body>
	<h3>Result</h3>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
		</tr>
		<tr>
			<c:forEach var="item" items="${requestScope.drops}">
				<tr>
					<td>${item.getId() }</td>
					<td>${item.getName() }</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<a href="${pageContext.request.contextPath}/AdminHomeView">Go back</a>
</body>
</html>