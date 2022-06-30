<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body  {background-color : #AFACA7; margin:0; padding:0;} 
	.back {
		background-color : #E2E0DA;
		margin : 40px;
	}
	 a:link { text-decoration:none; color:#000000;}
	 a:visited { text-decoration:none;color:#000000;}
	 a:active {text-decoration:none; color:#0000000; }
	 a:hover { text-decoration:none; color:#ffffff;} 
	 #am {padding-right:40px;
	 	font-weight : bold;
	 	font-size : 20px;}
</style>
</head>
<body> <!-- 상단 페이지, 로그인/로그아웃 -->
<%
	String loginCheck = null;
	String href = null;	
	String id = (String)session.getAttribute("id");//꺼내올때는 다운캐스팅을 해서 꺼냄
	if(id == null){
		loginCheck = "로그인";
		href = "login.jsp";
	}
	else{
		loginCheck = "로그아웃";
		href = "logout.jsp";
	}	
%>
	<a id="am" href="home.jsp" >Home</a>
	<a id="am" href="volunteer.jsp" >봉사안내</a>
	<a id="am" href="donation.jsp" >기부안내</a>
	<a id="am" href="board_see.jsp" >게시판</a>
	<a id="am" href=<%=href %> ><%= loginCheck %></a>	
	<br><br><br> <hr> <br><br>
</body>
</html>