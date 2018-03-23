<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
%>
<form action="result.jsp" method="post">
<table border="1" cellpadding="0">
  <tr>
  <td colspan="4"><input type="text" name="result" value="0"></td>

  <tr>
    <th><input type="button" name="1" value="1"></th>
    <th><input type="button" name="1" value="2"></th>
    <th><input type="button" name="1" value="3"></th>
 	<th><input type="button" name="+" value="+"></th>
  </tr>
  <tr>
   <th><input type="button" name="1" value="4"></th>
    <th><input type="button" name="5" value="5"></th>
    <th><input type="button" name="6" value="6"></th>
    <th><input type="button" name="-" value="-"></th>
  </tr>
   <tr>
      <th><input type="button" name="7" value="7"></th>
    <th><input type="button" name="8" value="8"></th>
    <th><input type="button" name="9" value="9"></th>
    <th><input type="button" name="x" value="x"></th>
  </tr>
  <tr>
  	<th colspan="3"><input type="submit" name="=" value="="></th>
  	<th><input type="button" name="/" value="/"></th>
  </tr>
</table>
</form>
</body>
</html>