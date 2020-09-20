<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Error Handling Page</title>
</head>
<body>
	
	<% exception.printStackTrace(response.getWriter()); %>
	
	<hr>
	
	<h3>An Exception was generated and Details are above</h3>
	

</body>
</html>