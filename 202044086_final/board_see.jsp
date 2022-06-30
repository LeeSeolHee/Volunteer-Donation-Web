<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#table2 {
		text-align:center;
		margin : auto;
		border : 1px solid #BEBEBE;
		border-collapse: collapse;
	}
	th { padding:0;}
	th, td { padding: 10px 60px; border : 1px solid #BEBEBE; }
</style>
<body> <!-- 후기 보기 UI -->
<%@ include file="connectDB.jsp" %>
<%	
	int count = 0;      //전체 행 개수 받을 변수
	String tempStart = request.getParameter("page");  /* 페이지 넘어갈 때마다 값 받기 */
	int startPage = 0;   //시작 페이지
	int onePageCnt = 10; //나눌 페이지 단위 = 10
	
	String sql = "SELECT COUNT(*) as cnt FROM board";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	/* 전체 행 개수 */
	while(rs.next()){
		count = rs.getInt("cnt");		
	}
	
	/* 전체 행 개수 = 내림(전체 행 개수) / 나눌 페이지 수(10) */
	count = (int)Math.ceil((double)count / (double)onePageCnt);
	
	/* 받은 페이지 수가 있으면 : 시작 페이지 = (페이지수-1)*10 */
	if(tempStart != null){
		startPage = (Integer.parseInt(tempStart)-1)*onePageCnt;
	}
	
	/* 페이지 초기화, 날짜는 내림차순으로 10행씩 출력 */
	sql = "SELECT @rownum:=@rownum+1 as num, dic.* FROM board dic WHERE (@rownum:=0)=0 order by date desc LIMIT ?, ?"; 
	pstmt = conn.prepareStatement(sql); 
	pstmt.setInt(1, startPage);
	pstmt.setInt(2, onePageCnt);
	rs=pstmt.executeQuery();
%>
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/board_nav.jsp" flush="false"/>
		<div class="write">
		<h2 id="h2_1">후기 목록</h2>
		<br><hr><br><br>
		<table id="table2">
			<tr><th>번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th></tr>
			<%
			while(rs.next()){
				int num = 0;
				num = rs.getInt("num");  // 현재 페이지
				if (tempStart != null && Integer.parseInt(tempStart) > 1){ // 받은 페이지가 NULL이 아니고 1보다 크면 : 즉, 2 이상 해당
					num = num + 10;		 // 현재 페이지 + 10
				}			
				request.setAttribute("num", num);			
			%>
			<tr><td>${num}</td>
				<td><a href="board_content.jsp?no=<%=rs.getInt("no")%>&num=<%=rs.getInt("num")%>"><%=rs.getString("title") %></a> </td>
				<td><%=rs.getString("name")%> </td>
				<td><%=rs.getTimestamp("date")%> </td>
				<td><%=rs.getInt("readcount")%></td></tr><% } %>
		</table><br><br><br>
			<% 
				/* 밑에 넘기는 페이지 숫자 출력 */
				for(int i=1; i<=count; i++){
			%>
			<span><a href="board_see.jsp?page=<%=i%>">[<%=i %>]</a></span><%}; %>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>