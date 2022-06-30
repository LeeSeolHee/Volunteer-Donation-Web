<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th { padding: 10px; padding-right:50px;}
  	td { padding :10px; text-align:center;}
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
	.date {
		background-color:transparent;
	 	height:40px;
	 	font-size:15px;
		margin :0px 15px;
	 	border: none; 
	 	border-bottom: solid 2px #E0E0E0;
	 	width:220px;
	}
  	.write {
		background-color:#F4F4F4;
		margin:0px 300px;
		padding:100px 0px;
	}
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
<body> <!-- 봉사활동 추가 UI -->
 <%
	String id = null;
	if(session.getAttribute("id") != null){
		id = (String)session.getAttribute("id");
	}
	// 로그인을 한 사람만 글쓰기 가능
	if(id == null){
		out.println("<script>");
		out.println("alert('로그인이 필요합니다.')");
		out.println("location.href='login.jsp'");
		out.println("</script>");
	}
%> 
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/volunteer_nav.jsp" flush="false"/>
		
		<div class="write">
		<h2 id="h2_1">봉사활동 작성</h2>
		<br><hr><br><br>
		
		<form action="volunteer_writePro.jsp" method="post">
		<table id="table">
			<tr><th>제목 </th><td><input type="text" class="input" name="title"></td></tr>
			<tr><th>봉사기간</th><td><input type="date" class="date" name="vdate1"> ~ <input type="date" class="date" name="vdate2"></td></tr>
			<tr><th>모집기간</th><td><input type="date" class="date" name="rdate1"> ~ <input type="date" class="date" name="rdate2"></td></tr>
			<tr><th>인원수 </th><td ><input class="input" type="text" name="peoplenum"></td></tr>
			<tr><th>내용</th>
				<td><textarea class="noresize" rows="30" cols="90" name="content"></textarea></td></tr>
			<tr><td colspan="2" style="height:150px;">
				<input type="submit" value="저장" class="button">
				<input type="reset" value="취소" class="button"></td></tr>
		</table>	
		</form>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>