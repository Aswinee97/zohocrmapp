<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose Email</title>
</head>
<body>
	<h2>Compose Email Details</h2>
	<form action="triggeremail" method="post">
		<pre>
to<input type="text" name="email" value="${email}" />
subject<input type="text" name="subject" />
<textarea name="content" rows="10" cols="50">
</textarea>
<input type="submit" value="send" />
</pre>
	</form>

	${msg }
</body>
</html>