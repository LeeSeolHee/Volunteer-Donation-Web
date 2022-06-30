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
	h1 {font-size:18px; padding-top:30px;}
	.h2_1 {font-family: Georgia, serif;}
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
	#table {
		text-align:left;
		margin : auto;
	}
	.input {
		background-color:transparent;
	 	height:40px;
	 	font-size:15px;
	 	margin-right : 10px;
	 	border: none; 
	 	border-bottom: solid 2px #E0E0E0;
	 	width:500px;
	}
	span {margin:0 30px;}
	.noresize {
	  width: 500px;
	  height: 300px;
	  resize: none; /* 사용자 임의 변경 불가 */
	  font-size : 18px;
	}

  	.button {
		width:100px;
		border :0px;
	 	height:40px;
	 	font-size:15px;
	 	color:purple;
	 	border-radius: 20px;
	 	outline: 1px solid purple;
	 	margin-left:50px;
	}
</style>
</head>
<body> <!-- 기부 안내 NAV -->
	<nav>
		<h1>기부안내</h1>
		<ul class="menu">
			<li><a href="donation.jsp">소개글</a></li>
			<li><a href="donation_bracelet.jsp">기부팔찌</a></li>
			<li><a href="donation_action.jsp">기부참여</a></li>
		</ul>
	</nav>

</body>
</html>