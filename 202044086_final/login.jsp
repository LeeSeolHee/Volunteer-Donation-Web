<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#h3_lgoin {color : #B0ACAC; }
	#input {
	  height:40px;
	  font-size:15px;
	}
	#button {width : 550px; height : 50px; font-size:20px; font-family: Georgia, "맑은 고딕", serif;}
	.login_in {
		background-color:#F4F4F4;
		margin:0px 300px;
		padding:100px 0px;;
	}
</style>
</head>
<body> <!-- 로그인 UI -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<div class="login_in">
			<h1>Welcome to Focus!</h1>
			<h3 id="h3_lgoin">Register your account</h3><br><br><br>
			<form action="loginDB.jsp">
				<input id="input" type="text" name="id" size=63 placeholder="ID"><br><br><br>
				<input id="input" type="text" name="pass" size=63 placeholder="PASSWORD"><br><br><br>
				<input id="button" type="submit" value="Login"><br><br><br><br>
				회원이 아니신가요? <b><a href="join.jsp">회원가입</a></b>
			</form>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>