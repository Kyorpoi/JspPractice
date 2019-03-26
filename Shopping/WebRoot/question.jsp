<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
  					</table>
  				</td>
  			</tr>
  			<tr bgcolor = "yellow">
  				<td>
  				<form action = "" method = "post">
  					您获得的商品信息来源：
  					<input type = "checkbox" name = "favor" value = "web" /> web
  					<input type = "checkbox" name = "favor" value = "TV" /> TV
  					<input type = "checkbox" name = "favor" value = "FM" /> FM
  					<input type = "checkbox" name = "favor" value = "Paper" /> Paper
  					<br/>
  					<input type = "submit" name = "qwe" value = "提交"/>
  					<input type = "button" name = "back" value = "返回" OnClick="<a href = 'index.jsp'>"/>
   				</form>
   				<%
   					request.setCharacterEncoding("utf-8");
   					if(request.getParameter("qwe")!=null){
   						for(int i = 0; i < request.getParameterValues("favor").length; i++){
   							out.print("购物喜好："+ request.getParameterValues("favor")[i] +"<br/>");
   						}
   					}
   					
   				 %>  				
  				</td><td>右边部分</td>
  			</tr>
  			<tr bgcolor = "green">
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>
  </body>
</html>