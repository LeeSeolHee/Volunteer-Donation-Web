<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 로그인 되어있을 때 로그아웃 누르면 로그아웃 처리 -->

<%
	// 기존의 세션 데이터를 모두 삭제(초기화)
	session.invalidate();	
%>
<script>
	alert("로그아웃 하였습니다.");
	location.href="home.jsp";
</script>
</body>
</html>