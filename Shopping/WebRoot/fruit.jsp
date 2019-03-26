<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.*,com.cnstrong.javaBean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] prodno = {"F001","F002","F003","F004"};
		int[] num = {0,0,0,0};
		String[] names = {"猕猴桃","菠萝","榴莲","樱桃"};
		String[] pic = {"img/flower.jpg","img/flower.jpg","img/flower.jpg","img/flower.jpg",};
		String[] info = {"长寿之果","富含丰富的VC","水果之王","口感好，赠送佳品"};
		double[] price = {10f,7.8f,16f,15f};
		ArrayList goodslist = new ArrayList();
		for(int i = 0; i < 4; i++){
			goodsBean goods = new goodsBean();
			goods.setId(i);
			goods.setName(names[i]);
			goods.setProdno(prodno[i]);
			goods.setInfo(info[i]);
			goods.setPic(pic[i]);
			goods.setPrice(price[i]);
			goods.setNum(num[i]);
			goodslist.add(goods);
		}
		session.setAttribute("goodslist", goodslist);
		response.sendRedirect("showGoods.jsp");
		
	 %>
</body>
</html>