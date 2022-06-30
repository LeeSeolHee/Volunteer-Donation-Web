<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{margin:0; padding:0;}
	nav{
		width:13%;
		height:0%;
		float:left;
		padding-bottom:31%;
	}
	.menu li a{
		height:40px;
		line-height:30px;
		display:block;
		padding:10px 10px;
		font-size:17px;
		color:#555;
	}
	.menu li a:hover{background-color:yellowgreen; color:white;}
	ul{ list-style:none; padding-left:0px;}
	.write {
		background-color:#F4F4F4;
		margin:0px 300px;
		padding:100px 0px;
	}

	h1 {font-size:18px; padding-top:30px;}
</style>
</head>
<body> <!-- 봉사안내 NAV -->
	<nav>
		<h1>봉사안내</h1>
		<ul class="menu">
			<li><a href="volunteer.jsp">소개글</a></li>
			<li><a href="volunteer_see.jsp">봉사활동</a></li>
			<li><a href="volunteer_write.jsp">활동추가</a></li>
		</ul>
	</nav>

</body>
</html>