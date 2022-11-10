<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create lead page</title>
</head>
<body>
	<h2>LEAD PAGE DETAILS HERE</h2>
	<form action="savelead" method="post">
		<pre>
first Name<input type="text" name="firstName" />
last Name<input type="text" name="lastName" />
Email<input type="text" name="email" />
Mobile<input type="text" name="mobile" />
Source:<select name="source">
  <option value="radio">radio</option>
  <option value="newspaper">newspaper</option>
  <option value="tread show">tread show</option>
  <option value="website">web site</option>
 
</select>
<input type="submit" value="save" />
 </pre>
	</form>


</body>
</html>