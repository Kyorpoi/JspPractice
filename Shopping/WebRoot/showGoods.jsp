<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
   <%@page import = "java.util.*,com.cnstrong.javaBean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascripte">
function decrease(id){
	var buynum = document.getElementById("buynum"+id).value;
	var limit = document.getElementById("limit").value;
	buynum--;
	if(buynum < 0){
		buynum = 0;
	}
	if(buynum > limit){
		buylimit = limit;
		alert("最多只能购买"+limit+"件!");
	}
	document.setElementById("buynum"+id).value = buynum;
}
function increase(id){
	var buynum = document.getElementById("buynum"+id).value;
	var limit = document.getElementById("limit").value;
	buynum++;
	if(buynum < 0){
		buynum = 0;
	}
	if(buynum > limit){
		buylimit = limit;
		alert("最多只能购买"+limit+"件!");
	}
	document.setElementById("buynum"+id).value = buynum;
}
function itembuy(id){
	
}

</script>




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
  			<tr bgcolor = "white">
  				<td colspan = "6">
  					<table border = "1" width = "100%" class = "one" bgcolor = "#FFFF99"> 
  						<tr>
  						<td width = "15%">名称</td>
  						<td>实拍图片</td>
  						<td>详细描述</td>
  						<td>单价（元）</td>
  						<td>数量</td>
  						<td>购买（kg）</td>
  						</tr>
  						<tr>
  						<%
  							ArrayList goodslist = new ArrayList();
  							goodslist = (ArrayList)session.getAttribute("goodslist");
  							if(goodslist == null || goodslist.size() == 0){
  						 %>
  						 <tr>
  						 	<td colspan = "6">当前没有任何商品</td>
  						 </tr>
  						 <%
  						 }else{
  						 	goodsBean goods = new goodsBean();
  						 	for(int i = 0; i < goodslist.size(); i++){
  						 		goods = (goodsBean)goodslist.get(i);
  						 %>
  						 <tr>
  						 <td><%=goods.getName() %><br><%=goods.getProdno() %></td>
  						 <td><img src = "<%=goods.getPic() %>" height = 150px/></td>
  						 <td style = "text-align: left"><%=goods.getInfo() %></td>
  						 <td><%=goods.getPrice() %></td>
  						 <td><%=goods.getNum() %></td>
  						 <td>
  						 	<input class = "two" type = "button" 
  						 	style = "background-color: white" 
  						 	value = "-" id = "decrease<%=goods.getId()%>" 
  						 	onclick = "decrease(<%=i%>);">
  						 	<input class = "two" type = "text" 
  						 	style = "text-align: right;" 
  						 	value = "1" id = "decrease<%=goods.getId()%>" 
  						 	onclick = "buynum(<%=i%>);">
  						 	<input class = "two" type = "button" 
  						 	style = "background-color: white" 
  						 	value = "+" id = "increase<%=goods.getId()%>" 
  						 	onclick = "increase(<%=i%>);">
  						 	<br>
  						 	<input type = "hidden" name = "limit" value = "100"/>
  						 	<p>（单次限购：100）</p>
  						 	<input type = "button" value = "加入购物车" class = "btntype" onclick = "itembuy(<%=goods.getId() %>)">
  						 </td>
  						 </tr>
  						 <%	
  						 	}
  						 }
  						  %>
  						</tr>
  					</table>
  				</td>
  			</tr>
  			<tr bgcolor = "green">
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>
  </body>
</html>