<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	#msg{color:red}
</style>
</head>
<body>
	<div id="msg">${msg}</div>
	<!-- form의 action은 서버에서 처리할 URL 입니다. 생략하면 요청한 URL을 그대로 사용 -->
	<!-- 최근에는 form에 오게된 요청과 form을 처리하는 요청을 동일하게 만들고 
	form에 오게된 요청은 GET으로 form을 처리하는 요청은 POST로 설정해서 구분
	데이터 삽입은 POST 수정은 PUT 삭제는 DELETE로 구분하기도 합니다. -->
	<form method="post">
		<input type="text" name="id" id="id" size="30" required="required" placeholder="아이디를 입력해라 임마"/><br/>
		비밀번호<br/>
		<input type="password" name="pw" id="pw" size="30" required="required" placeholder="비밀번호 입력해라 임마"/><br/>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>