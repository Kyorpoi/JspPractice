<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.swing.JOptionPane" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String username = request.getParameter("username"); 
	String userpassword=request.getParameter("userpassword"); 
	Boolean usercheck = false; 
	if(username.length()>3&&userpassword.length()>5) 
	{ 
		JOptionPane.showMessageDialog(null,"登录成功"); 
		usercheck = true;
	} else{
		JOptionPane.showMessageDialog(null,"登录失败"); 
		usercheck = false;
	}
	if(usercheck == true){
	%>
		<jsp:forward page="index.jsp"></jsp:forward>
	<%
	}else{
 	%>
 		<jsp:forward page="usererror.jsp"></jsp:forward>
 	<%
 	}
 	%>
</body>
</html>