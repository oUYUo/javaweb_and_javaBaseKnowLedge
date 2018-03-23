<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<jsp:useBean id="loginUser" class="com.po.Users"/>
<jsp:useBean id="userDao" class="com.dao.UsersDAO"/>
<jsp:setProperty property="*" name="loginUser"/>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

  
  //如果用户和密码都等于admin,则登录成功
  if(userDao.usersLogin(loginUser))
  {
     session.setAttribute("loginUser", loginUser.getPassword());
     request.getRequestDispatcher("login_success.jsp").forward(request, response);
  }
  else
  {
     response.sendRedirect("login_failure.jsp");
  }
%>
