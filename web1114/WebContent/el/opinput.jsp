<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List 와 Map 생성</title>
<%@ page import = 'java.util.*' %>
<%
	// 문자열을 저장할 수 있는 List 생성
	List<String> list = new ArrayList<String>();
	list.add("핫쇼킹치킨");
	list.add("골든스노윙치킨");
	list.add("수원왕갈비맛치킨");
	list.add("고추부러진치킨");
	
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("Java", "제임스 고슬링");
	map.put("Python", "반도 귀 로섬");
	map.put("C", "데니스 리치히");
	
	session.setAttribute("list", list);
	session.setAttribute("map", map);
%>
</head>
<body>
	<a href="opoutput.jsp">연산자 사용</a>
</body>
</html>
