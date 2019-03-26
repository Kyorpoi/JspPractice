<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body backgrount="d:\\flower.jpg">
<center>
	<form name = "userLogin" method = "post" 
	action = "userlogincheck.jsp">
		<table border = 0 align = center>
			<tr>
				<td colspan = 2>天猫商城用户登录</td>
			</tr>
			<tr>
				<td>登录名：</td>
				<td><input type = "text" name="username" value = ""/>
				</td>
			</tr>
			<tr>
				<td>登录密码：</td>
				<td><input type = "password" name="userpassword" value = ""/>
				</td>
			</tr>
			<tr>
				<td colspan = 2>
				<input type = "submit" name = "submit" value = "登录"/></td>
			</tr>
		</table>
	</form>
</center>
	
</body>
</html>