<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive - JSP 환경 설정</title>
<!-- 불필요한 공백을 제거해주는 디렉티브 설정 -->
<%@ page trimDirectiveWhitespaces="true" %>
<!-- java.util.Calendar 클래스를 줄여쓰기 위한 import -->
<%@ page import="java.util.*" %>

<%
	int result = 100 + 200;
	Calendar cal = new GregorianCalendar();
	Date date = new Date(cal.getTimeInMillis());
%>
</head>
<body>
	<p>안녕하세요 Directive와 Scriptlet을 학습중입니다.</p>
	<p>result:<%=result %></p>
	
	<!-- toString을 호출한 결과 -->
	<p>cal:<%=date %></p>
	
	<!-- result의 값이 300이상이면 합격 아니면 불합격 -->
	<%
		if(result >= 300){
	%>
	<%="합격" %>
	<%
		}else{
	%>
	<%="불합격" %>
	<%
		}
	%>
	
	<!-- List사용해보기 -->
	<%
		List<String> list = new ArrayList<>();
		list.add("Java - JSP");
		list.add("C# - ASP.net");
		list.add("JavaScript - node.js");
		list.add("Phthon - Django, Flask");
		list.add("PHP - 라라벨");
		
		for(String imsi : list){
	%>
	<div><%=imsi %></div>
	<% } %>
	
</body>
</html>