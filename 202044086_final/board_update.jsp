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
<body> <!-- 후기 내용 수정 UI -->
<%@ include file="connectDB.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));   // 선택한 번호
	String pass = request.getParameter("pass");				 // 비밀번호
	
	/* 선택한 번호에 맞는 행 찾기 */
	String sql = "select * from board where no=?";	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, no);
	ResultSet rs = pstmt.executeQuery();
	
	/* 비밀번호 맞는지 체크 */
	if(rs.next()){
		if(pass.equals(rs.getString("pass"))){  // 맞는 경우엔 수정페이지 보여주기
			%>
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/board_nav.jsp" flush="false"/>
		
		<div class="write">
		<h2 id="h2_1">후기 수정</h2>
		<br><hr><br><br>
		
		<form action="board_updatePro.jsp" method="post">
		<input type="hidden" name="no" value="<%=rs.getString("no")%>">
		<table id="table">
			<tr><th>글쓴이 </th><td><input class="input" type="text" name="name" value="<%=rs.getString("name")%>"></td></tr>
			<tr><th>제목 </th><td><input type="text" class="input" name="title" value="<%=rs.getString("title")%>"></td></tr>
			<tr><th>분야 </th><td>
				<span><input id="radio" type="radio"  name="field" value="봉사" checked>봉사</span>
				<span><input id="radio" type="radio"  name="field" value="기부">기부</span></td></tr>
			<tr><th>내용</th>
				<td><textarea class="noresize" rows="30" cols="70" name="content" ><%=rs.getString("content")%></textarea></td></tr>
			<tr><th>비밀번호 </th><td><input class="input" type="text" name="pass" value="<%=rs.getString("pass")%>"></td></tr>
		</table>	<br><br>
		<input type="submit" value="수정" class="button">
		<input type="button" value="돌아가기" class="button" onclick="location.href='board_see.jsp'">
		</form>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
			
		<%}else{  // 틀린 경우엔 경고창 띄우고 돌아가기
			%><script type="text/javascript">
			alert("비밀번호가 틀렸습니다.");
			history.go(-1);
			</script>
	<% 	}
	}
%>
</body>
</html>