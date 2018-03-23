<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>session内置对象</h1>
<hr>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss");
	Date d = new Date(session.getCreationTime());
	session.setAttribute("username", "admin");
	session.setAttribute("password", "123456");
	session.setAttribute("age", 20);
	
	//设置当前session最大生成周期单位是秒
	//session.setMaxInactiveInterval(5);
%>
Session创建时间：<%=sdf.format(d)%><br>
Session的ID编号：<%=session.getId() %>
从Session中获取用户名：<%=session.getAttribute("username") %>
<%
	session.invalidate();//销毁对话
%>
<br>
<a href="session_page4.jsp" target="_blank">跳转到session_page4.jsp</a>
</body>
</html>