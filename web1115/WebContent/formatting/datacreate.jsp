<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 생성해주는 파일</title>
</head>
<body>
	<%@ page import = "java.util.*" %>
	<%
		// java.util.Date 객체를 만들고 세션에 저장
		Calendar cal = new GregorianCalendar(1992, 0, 27);
		Date date = new Date(cal.getTimeInMillis());
		session.setAttribute("date", date);
		
		session.setAttribute("num", 35400);
	%>
	<a href="datadisplay.jsp">데이터 출력</a>
</body>
</html>