<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String office = request.getParameter("office");
		if(office !=null)
			out.println("<h3>Value of Office obtained : "+office+ "</h3>");
		else
			out.println("<h3>No Value of Office Found </h3>");
	%>
</body>
</html>