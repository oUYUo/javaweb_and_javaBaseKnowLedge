<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>application内置对象</h1>
<%
	application.setAttribute("city", "beijing");
	application.setAttribute("emial", "lisi@123.com");
%>
所在城市是：<%=application.getAttribute("city")%>
<br>
application中的属性有：
<%
	Enumeration attibutes = application.getAttributeNames();
	while(attibutes.hasMoreElements())
	{
		out.print(attibutes.nextElement()+"<hr>");
	}
%>
<br>
JSP(SERVELTE)引擎及版本号：<%=application.getServerInfo() %>


</body>
</html>