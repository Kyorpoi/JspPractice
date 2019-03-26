<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	3秒后自动跳转回登录页面
<%
	String username = request.getParameter("username");
	out.print(username+"登录信息出错,单击<a herf = 'userlogin.jsp'>此处</a>返回登录页面");
	response.setHeader("refresh", "3;url=userlogin.jsp");
%>
</body>
</html>