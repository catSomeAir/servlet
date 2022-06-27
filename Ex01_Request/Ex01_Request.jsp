<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01_Request</title>
<style type="text/css">
	*{
		background-color: black;
		color : white;
	}
	div{
		border: 1px solid white;
		width : 80px;
		display : inline-block;
	}
</style>
</head>
<body>
	<!-- 요청 방식은 크게 두가지 ( GET / POST )
		
		GET :  URL에 보낸 파라메터가 그대로 찍힘(보안x)
		POST : URL에 보낸 파라메터가 공개가 안됨(보안o) 테스트 x
		요청을 URL로함(Servlet)	→ servlet→ jsp ( Model(데이터) View Controller ) : MVC 
			→ URL로함(jsp페이지로 이동) → jsp
	 -->
	 
	 <!-- Ex01_Request라는 서블릿을 만들고 요청해보기. -->
	 <h1>Get 방식 요청</h1>
	 <form action="../Ex01_Request" method="get">
	 	<lable for="id"> 아이디 : </lable><input type="text" name="id" placeholder="아이디를 입력하세요">
	 	<lable for="pw"> 비밀번호 : </lable><input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		<div><input type = "submit" value="전송(get)"></div>
	</form>
	
	<h1>Post 방식 요청</h1>
	 <form action="../Ex01_Request" method="post">
	 	<lable for="id"> 아이디 : </lable><input type="text" name="id" placeholder="아이디를 입력하세요">
	 	<lable for="pw"> 비밀번호 : </lable><input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		<div><input type = "submit" value="전송(post)"></div>
	</form>
	
	<h1>페이지 to 페이지</h1>
	 <form action="Ex01_RequestResult.jsp" method="get">
	 	<lable for="id"> 아이디 : </lable><input type="text" name="id" placeholder="아이디를 입력하세요">
	 	<lable for="pw"> 비밀번호 : </lable><input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		<div><input type = "submit" value="전송(get)"></div>
	</form>
	
</body>
</html>