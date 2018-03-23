<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.po.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>使用普通方式创建javabean的实力</h1>
<% 
	Users user = new Users();
	user.setPassword("admin");
	user.setUsername("admin");
%>
用户名：<%=user.getUsername() %><br>
密码：<%=user.getPassword() %><br>
</body>
</html>