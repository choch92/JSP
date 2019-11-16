<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="data" class="domain.Data" scope="request"/>
<jsp:setProperty name="data" property="num" value="2"/>
<jsp:setProperty name="data" property="name" value="류씨가문"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 객체 생성</title>
</head>
<body>
	<%@ page import="java.util.*" %>
	<%
		data.setBirthday(new Date());
		
		/* 포워딩 */
		RequestDispatcher dispatcher = request.getRequestDispatcher("beanuse.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>
