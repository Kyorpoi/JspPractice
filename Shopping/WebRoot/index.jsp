<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body background="img\flower.jpg" style="font-size:30px;
  	text-align:center;">
  	<center>
  		<table width=100% border=1>
  			<tr bgcolor = "white">
  				<td height = 100px colspan=6>
  					<table width=100% border=0>
  						<tr>
  						<td><%@include file="top.html"%></td>
  						</tr>
  						<tr>
  						<td>
  							<%
  							String psd = request.getParameter("psd");
  							out.print(psd);
  							String sex = request.getParameter("sex");
  							out.print(sex);
  							 %>
  						</td>
  						</tr>
  					</table>
  				</td>
  			</tr>
  			<tr bgcolor = "yellow">
  				<td>左边部分</td><td>右边部分</td>
  			</tr>
  			<tr bgcolor = "green">
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>
  </body>
</html>
