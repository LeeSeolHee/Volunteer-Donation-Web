<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#table {
		text-align:center;
		margin : auto;
		border : 1px solid #BEBEBE;
		border-collapse: collapse;
	}
	th, td { padding: 10px 60px; border : 1px solid #BEBEBE;}
	.input {
		background-color:transparent;
	 	height:40px;
	 	font-size:15px;
	 	border: solid 1px #BEBEBE;
	}
</style>
</head>
<body> <!-- 후기 목록에 있는 상세 내용 보기 -->
<%@ include file="connectDB.jsp" %>
<%	
	request.setCharacterEncoding("utf-8");
	int no = Integer.parseInt(request.getParameter("no"));   // 데이터 베이스 번호
 	int num = Integer.parseInt(request.getParameter("num")); // 페이징 번호
	
 	/* 선택한 번호에 맞는 행 찾기 */
	String sql = "SELECT * FROM board WHERE no=" + no;	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();

	if(rs.next()){
		/* 조회수 증가  */
		int readcount = rs.getInt("readcount");  
    	readcount++;
    	/* 조회수 증가한 것을 데이터 베이스에 업데이트 */
    	sql = "UPDATE board SET readcount=? where no=?";
    	pstmt = conn.prepareStatement(sql); 
    	pstmt.setInt(1, readcount);
    	pstmt.setInt(2, no);
    	pstmt.executeUpdate();
    }
	
	/* 선택한 번호에 맞는 행 찾기 */
	sql = "select * from board where no=" + no;	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){	
		request.setAttribute("no", rs.getInt("no"));
		request.setAttribute("name", rs.getString("name"));
		request.setAttribute("field", rs.getString("field"));
		request.setAttribute("title", rs.getString("title"));
		request.setAttribute("content", rs.getString("content"));
		request.setAttribute("date", rs.getTimestamp("date"));
		request.setAttribute("readcount", rs.getInt("readcount"));	
	}
 	request.setAttribute("num", num);
	rs.close();
	pstmt.close();
	conn.close();	
%>
<script type="text/javascript">
/* 수정하기, 삭제하기 버튼 누를 경우 비밀번호 입력했는지 체크하는 함수처리 */	
function mySubmit(index){
	if(index == 1 ){  // 수정하기
		 document.frm.action="board_update.jsp";
		 function check(){
			 if(!frm.pass.value){
					alert("비밀번호를 입력하세요");
					frm.pass.focus();
					return false;
				}
			 return true;
		 }	
	 }
	 if(index == 2 ){  // 삭제하기
		 document.frm.action="board_delete.jsp";
		 function check(){
			 if(!frm.pass.value){
					alert("비밀번호를 입력하세요");
					frm.pass.focus();
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
		<jsp:include page="/board_nav.jsp" flush="false"/>
		<div class="write">
		<h2 id="h2_1">후기 목록</h2>
		<br><hr><br><br>
		<form name="frm">
			<table id="table">
				<tr><th>번호</th><td>${num }<input type="hidden" name="no" value="${no }"></td>
				<th>조회수</th><td>${readcount }</td></tr>
				<tr><th>작성자</th><td>${name}</td><th>작성일</th><td>${date }</td></tr>
				<tr><th>제목</th><td colspan="3">${title }</td></tr>
				<tr><th>내용</th><td colspan="3">${content }</td></tr>	
			</table>
			<br><br>
			<input class="button" type="button" value="내용수정" onclick="mySubmit(1)">
			<input class="button" type="button" value="내용삭제" onclick="mySubmit(2)">
			<input class="button" type="button" value="돌아가기" onclick="location.href='board_see.jsp'">
			<br><br><br>
			<input class="input" type="text" name="pass" placeholder="  비밀번호">
		</form>	
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>