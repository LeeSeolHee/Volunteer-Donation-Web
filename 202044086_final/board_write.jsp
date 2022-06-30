<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th { padding: 10px; padding-right:50px;}
  	td { padding: 10px; text-align:center;}
</style>
</head>
<body> <!-- 후기 작성 UI -->
<% 
	String id = null;
	if(session.getAttribute("id") != null){  /* 세션으로 아이디 받기  */
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
		<jsp:include page="/board_nav.jsp" flush="false"/>
		
		<div class="write">
		<h2 id="h2_1">후기 작성</h2>
		<br><hr><br><br>
		
		<form action="board_writePro.jsp" method="post">
		<table id="table">
			<tr><th>글쓴이 </th><td><input class="input" type="text" name="name"></td></tr>
			<tr><th>제목 </th><td><input type="text" class="input" name="title"></td></tr>
			<tr><th>분야 </th><td>
				<span><input id="radio" type="radio"  name="field" value="봉사" checked>봉사</span>
				<span><input id="radio" type="radio"  name="field" value="기부">기부</span></td></tr>
			<tr><th>내용</th>
				<td><textarea class="noresize" rows="30" cols="70" name="content"></textarea></td></tr>
			<tr><th>비밀번호 </th><td><input class="input" type="text" name="pass"></td></tr>
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