<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- jQuery을 위한 링크 설정 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	// window 객체의 beforeunload 이벤트가 발생하면 - 브라우저 창을 닫을 때
	window.addEventListener("beforeunlad", function(e){
		// jQuery를 이용해서 ajax를 수행
		$.ajax({
			url:"logout.jsp"
		});
	});
</script>
</head>
<body>
	<p>저의 홈페이지에 방문하신 것을 환영합니다.</p>
	<a href="logout.jsp">로그아웃</a>
	
	<h3>CRUD</h3>
	<ul>
		<li><a href="create.do">데이터 삽입</a></li>
		<li><a href="read.do">데이터 조회</a></li>
		<li><a href="update.do">데이터 수정</a></li>
		<li><a href="delete.do">데이터 삭제</a></li>
	</ul>
</body>
</html>