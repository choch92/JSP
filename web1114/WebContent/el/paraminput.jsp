<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 생성</title>
</head>
<body>
	<!-- URL뒤에 직접 입력하는 방법 -->
	<a href="paramoutput.jsp?name=조씨가문&age=28">파라미터를 직접 입력해서 생성</a><br/>
	
	<!-- form을 이용해서 입력을 받아서 묶어서 전송하는 방법 -->
	<form action="paramoutput.jsp"method="get">
		<input name="name" placeholder="이름을 입력하세요"/><br/>
		<input name="age" placeholder="나이를 입력하세요"/><br/>
		<input type="submit" value="전송"/>
	</form>
	
	<!-- 쿠키 -->
	<%
		// 쿠키를 생성해서 저장
		// 쿠키는 인코딩이 되어야 합니다.
		String chicken = java.net.URLEncoder.encode("뿌링클", "utf-8");
		Cookie cookie = new Cookie("chicken", chicken);
		response.addCookie(cookie);
	%>
	
</body>
</html>