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
	<h1> 쿠키, URL/URI , 요청방식 등 Request의 속성들을 일단 따라 쳐보기</h1>
	<table border="1">
		<tr>
			<td>쿠키정보</td>	
			<%Cookie[] cookie = request.getCookies(); 
				if(cookie==null){
			%>		
				<td>쿠키가 존재하지 않습니다 . </td>
					
			<%	}else{
				
					for(int i = 0; i<cookie.length; i++){
						%>	
						<td><%=cookie[i].getName() %> &nbsp; <%=cookie[i].getValue() %></td>
					<%}
				
			}
			%>	
		</tr>
		<tr>
			<td>서버 도메인명</td>
			<td><%=request.getServerName() %></td>
		</tr>
		
		<tr>
			<td>서버 포트</td>
			<td><%=request.getServerPort() %></td>
		</tr>
		
		<tr>
			<td>요청 URL(사용자가 보는경우)</td>
			<td><%=request.getRequestURL() %></td>
		</tr>
		
		<tr>
			<td>요청 URI(개발자가 봤을경우 편함)</td>
			<td><%=request.getRequestURI() %></td>
		</tr>
		<!-- URI 큰범우, URL 작은범위
			URI 통합 자원 식별자(Uniform Resource Identifier) 웹기술에서 사용되는 논리,물리적
			리소스를 식별하는 고유한 문자열 시퀀스
			
			URL: 웹주소 -> 리소스가 어디에 있는지를 알려주기 위한 URI에 서브셋(편하게보게만듬)
			→스키마 사용함.. 복잡함
		 -->
		 
		<tr>
			<td>요청 쿼리(질의어)</td>
			<td><%=request.getQueryString() %></td>
		</tr>
		 
		<tr>
			<td>클라이언트 호스트명</td>
			<td><%=request.getRemoteHost() %></td>
		</tr>
		
		<tr>
			<td>클라이언트 IP 주소</td>
			<td><%=request.getRemoteAddr() %></td>
		</tr>
		
		<tr>
			<td>프로토콜</td>
			<td><%=request.getProtocol() %></td>
		</tr>
		
		<tr>
			<td>메소드(요청방식)</td>
			<td><%=request.getMethod() %></td>
		</tr>
		
		<tr>
			<td>컨텍스트 경로(server.xml docbase)</td>
			<td><%=request.getContextPath() %></td>
		</tr>
		 
	</table>
</body>
</html>