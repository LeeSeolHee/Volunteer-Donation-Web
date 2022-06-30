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
<body> <!-- 후기 목록 내용보기 UI -->
<%@ include file="connectDB.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	int no = Integer.parseInt(request.getParameter("no"));      // 번호
 	int num = Integer.parseInt(request.getParameter("num")); 	// 페이징 번호
 	String loginid = (String) session.getAttribute("id");		// 아이디 값
 	
 	/* 선택한 번호에 맞는 행 찾기 */
	String sql = "select * from volunteer where no=" + no;	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();   
	
	/* 쿼리 출력 */
	while(rs.next()){	
		request.setAttribute("no", rs.getInt("no"));				// 번호
		request.setAttribute("title", rs.getString("title"));		// 제목
		request.setAttribute("v_date1", rs.getDate("v_date1"));		// 봉사기간 START
		request.setAttribute("v_date2", rs.getDate("v_date2"));		// 봉사기간 END
		request.setAttribute("r_date1", rs.getDate("r_date1"));		// 모집기간 START
		request.setAttribute("r_date2", rs.getDate("r_date2"));		// 모집기간 END
		request.setAttribute("peoplenum", rs.getInt("peoplenum"));	// 인원수
		request.setAttribute("peoplecnt", rs.getInt("peoplecnt"));	// 참가 신청한 수
		request.setAttribute("content", rs.getString("content"));	// 내용
		request.setAttribute("id", rs.getString("id"));				// 아이디
		request.setAttribute("list", rs.getString("list"));			// 참가신청한 사람들, 이름[아이디]
	}
 	request.setAttribute("num", num);
 	
 	rs.close();
	pstmt.close();
	conn.close();	
%>

	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/volunteer_nav.jsp" flush="false"/>
		<div class="write">
		<h2 id="h2_1">봉사 내용</h2>
		<br><hr><br><br>
			<form action="volunteerProc.jsp">
			<table id="table" >
				<tr><th>번호</th><td>${num }<input type="hidden" name="no" value="${no }"></td>
				<th>인원수</th><td>${peoplenum } / ${peoplecnt }</td></tr>
				<tr><th>봉사기간</th><td>${v_date1}~${v_date1}</td><th>모집기간</th><td>${r_date1 }~${r_date2 }</td></tr>
				<tr><th>제목</th><td colspan="3">${title }</td></tr>
				<tr><th>내용</th><td colspan="3">${content }</td></tr>	
				<tr><th>참가자</th><td colspan="3">${list }</td></tr>					
			</table>
			<br><br>
			<input type="hidden" name="peoplecnt" value="${peoplecnt }">
			<input type="hidden" name="peoplenum" value="${peoplenum }">
			<input type="hidden" name="list" value="${list }">
			<input class="button" type="submit" value="참가신청" >
			<input class="button" type="button" value="돌아가기" onclick="location.href='volunteer_see.jsp'">
			<br><br><br>
		</form>	
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>