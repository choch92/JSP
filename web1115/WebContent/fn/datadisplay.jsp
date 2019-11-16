<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL의 함수 라이브러리를 사용하기 위한 설정 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력</title>
</head>
<body>
	<p>기본:${msg}</p>
	<p>대문자출력:${fn:toUpperCase(msg)}</p>
	<p>길이:${fn:length(msg)}</p>
</body>
</html>
