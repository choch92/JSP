<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
	<%
		// 세션 초기화
		session.invalidate();
	%>
	<div>로그아웃 하셨습니다.<br/>
	3초 후에 메인 페이지로 이동합니다.</div>
</body>
<script>
	setTimeout(function(e){
		// 메인 페이지로 이동
		location.href="./";
	}, 3000);
</script>
</html>
