<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		*{
			background-color: black;
			color : white;
		}
	</style>
</head>
<body>
 <h1>파라메터 100개 보내기</h1>
	 <form action="../Test01_Request" method="get">
 	<%for(int i =0; i < 100; i++){ %>
	  	<input type="text" name="num<%=i %>" value="<%=i %>">
	<%} %>
	 		<div><input type = "submit" value="전송(get)"></div>
	</form>
	
	<!-- get방식을 이용해서 Request를 사용할 수 가 있음. -->	
	<% if(request.getParameter("cnt") != null){
		
		int cnt = Integer.parseInt(request.getParameter("cnt"));
			
		
	}%>
	
 <h1>파라메터 100개 보내기</h1>
	 <form action="../Test02_Request" method="get">
	 
 	<%
 	int cnt=10;
 	for(int i =0; i < cnt; i++){ %>
	  	<input type="text" name="num<%=i %>" value="<%=i %>">
	<%} %>
	<input type="text" name = "cnt" value="30">
	 		<div><input type = "submit" value="전송(get)"></div>
	</form>
	
	
</body>
</html>