<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage ="handle-error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object</title>
</head>
<body>

	<%
		String responseCheck = request.getParameter("office");
		if(responseCheck != null){
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location","response-redirect.jsp?office="+responseCheck);
		} 
		
		
		String errorCheck = request.getParameter("error");
		if(errorCheck != null){
				int x= 0;
				if(x==0)
					throw new RuntimeException(" Exception hase been raised !");
		} 
		
	
	%>
	<%
		int serverPort = request.getServerPort() ;
		out.print("<h3>The Server Port is  : "+serverPort + "</h3>");
		out.print("<h3>The Servlet Name is  : "+ config.getServletName() + "</h3>");
		out.print("<h3>The Serve Info : "+ application.getServerInfo()  + "</h3>");
		
		String pageName = page.toString();
	 	out.print("<h3>The Page Name is  : "+pageName + "</h3>");
	 	
	 	pageContext.setAttribute("userid", "John Smith");
	 	pageContext.setAttribute("userPid", "P10010");
	 	
	 	out.print("<h3> User Id Attiribute form pageContext : "+ pageContext.getAttribute("userid") + "</h3>");
	 	out.print("<h3> User PId Attiribute form pageContext : "+ pageContext.getAttribute("userPid") + "</h3>");
	 	
	%>
	<a href="index.jsp?office=head_ofice"> Show Usage of response object</a> <br>
	<a href="index.jsp?error=1"> Show Usage of Object object</a>
</body>
</html>