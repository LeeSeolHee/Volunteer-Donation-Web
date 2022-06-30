<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login_in {
		background-color:#F4F4F4;
		margin:0px 300px;
		padding:100px 0px;;
	}
	.h2_1 {font-family: Georgia, serif;}
	.input {
		background-color:transparent;
	 	height:40px;
	 	font-size:15px;
	 	margin-right : 10px;
	 	border: none; 
	 	border-bottom: solid 2px #E0E0E0;
	}
	
	.button {
		width:100px;
		border :0px;
	 	height:40px;
	 	font-size:15px;
	 	color:purple;
	 	border-radius: 20px;
	 	outline: 1px solid purple;
	}

	#join_table {
		text-align:left;
		margin : auto;
	}
	th, td {
	    padding: 10px;
  }
	
</style>
</head>
<body> <!-- 회원가입 UI -->
<script>	
/* 입력 태그 모두 입력했는지 확인 */
	 function mySubmit(index){
		 if(index == 1 ){  // 회원가입
			 document.frm.action="joinDB.jsp";
		 	function check(){
				if(!frm.id.value){
					alert("아이디를 입력하세요");
					frm.id.focus();
					return false;
				}
				if(!frm.pass.value){
					alert("비밀번호을 입력하세요");
					frm.pass.focus();
					return false;
				}
				if(!frm.pass2.value){
					alert("비밀번호 확인을 입력하세요");
					frm.pass2.focus();
					return false;
				}
				if(!frm.name.value){
					alert("이름를 입력하세요");
					frm.name.focus();
					return false;
				}
				if(!frm.email.value){
					alert("이메일를 입력하세요");
					frm.email.focus();
					return false;
				}
				return true;
			}
		 }
		 if(index == 2 ){  // 아이디 중복체크
			 document.frm.action="idcheck.jsp";
			 function check(){
				 if(!frm.id.value){
						alert("아이디를 입력하세요");
						frm.id.focus();
						return false;
					}
				 return true;
			 }	
		 }
		 if(check() == true){document.frm.submit();}
	 }
	 
</script>
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<div class="login_in">
			<h2 id="h2_1">Sign in</h2>
			<br><hr><br><br>
			
			<form name="frm" method="post" onsubmit="return check()">
			<table id="join_table">
				<tr> <th colspan="2">아이디</th> </tr>
				<tr>
					<td><input class="input" type="text" name="id" size=40 placeholder="아이디" autofocus="autofocus"></td>
					<td><input class="button" type="button" value="중복검사" onclick="mySubmit(2)"></td>
				</tr>
				<tr> <th colspan="2">비밀번호</th> </tr>
				<tr>
					<td colspan="2"><input class="input" type="text" name="pass" size=60 placeholder="비밀번호"></td>		
				</tr>
				<tr> <th colspan="2">비밀번호 확인</th> </tr>
				<tr>
					<td colspan="2"><input class="input" type="text" name="pass2" size=60 placeholder="비밀번호 확인" ></td>		
				</tr>
				<tr> <th colspan="2">이름</th> </tr>
				<tr >
					<td colspan="2"><input class="input" type="text" name="name" size=60 placeholder="이름" ></td>		
				</tr>
				<tr> <th colspan="2">이메일</th> </tr>
				<tr>
					<td colspan="2"><input class="input" type="text" name="email" size=60 placeholder="이메일"> </td>		
				</tr>
				</table>
				<br><br>
				<input class="button" type="button" value="회원가입" onclick="mySubmit(1)">
			</form>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>