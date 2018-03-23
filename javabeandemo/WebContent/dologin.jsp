<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myUsers" class="com.po.Users" scope="application"/>
<h1>setProperty动作元素</h1>
<hr>
<%-- 

<!-- 根据表单自动匹配所有的属性 -->
<jsp:setProperty property="*" name="myUsers"/>
<!-- 根据表单自动匹配部分的属性 -->
<jsp:setProperty property="username " name="myUsers"/>
<!-- 手工设置 --> -->
<jsp:setProperty property="username" name="myUsers" value="admind"/>
<!-- 通过url传参数来给属性赋值-->
<jsp:setProperty property="password" name="myUsers" param="mypass"/>

--%>
<jsp:setProperty property="*" name="myUsers"/>
<!-- 使用getProperty方式来获取用户名和密码 -->
用户名：<jsp:getProperty property="username" name="myUsers"/><br>
密码：<jsp:getProperty property="password" name="myUsers"/><br>
<a href="testScope.jsp">测试javabean的四个作用域范围</a>
</body>
</html>