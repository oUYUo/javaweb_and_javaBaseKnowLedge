<%@page import="demo1.aDD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>这是主页</title>
</head>
<body>
<h1>久久乘法表</h1>
<br>
<%
	demo1.aDD a = new demo1.aDD();
	for(int i=1;i<=9;i++)
	{
		for(int j=1;j<=i;j++)
		{
			out.println(i+"*"+j+"="+i*j+"&nbsp");
		
		}
		
		out.println("<br>");
	}
%>
<hr>

<form action="pageContext.jsp">

<input type="submit" value="ok">
</form>

getBufferSize()=<%=out.getBufferSize() %><br>
getReaming()=<%=out.getRemaining() %><br>
isAutoFlush()=<%=out.isAutoFlush() %><br>

</body>
</html>