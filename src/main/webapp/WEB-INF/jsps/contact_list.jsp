<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacts page</title>
</head>
<body>
	<h2>Contact Details</h2>
	<table border="2">
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Source</th>
		</tr>
		<c:forEach var="cont" items="${contacts}">
			<tr>
				<td>${cont.firstName}</td>
				<td>${cont.lastName}</td>
				<td>${cont.email}</td>
				<td>${cont.mobile}</td>
				<td>${cont.source}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>