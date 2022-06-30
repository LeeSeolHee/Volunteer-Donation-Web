<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#table2 {
		text-align:center;
		margin : auto;
		border : 1px solid #BEBEBE;
		border-collapse: collapse;
	}
	th { padding:0;}
	th, td { padding: 10px 20px; border : 1px solid #BEBEBE; }
	
</style>
<body> <!-- 봉사활동 목록 UI  -->
<%@ include file="connectDB.jsp" %>
<%	
	int count = 0;  									//전체 행 개수 받을 변수
	String tempStart = request.getParameter("page");	/* 페이지 넘어갈 때마다 값 받기 */
	String r_date2 = null;								// 모집기간 end
	int startPage = 0;									//시작 페이지
	int onePageCnt = 10; 								//나눌 페이지 단위 = 10
	
	/* 현재 날짜 가져오기 */
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = simpleDate.format(date);

	/* 모집날짜 마감날 < 현재 날짜 -> 삭제 */
	String sql="SELECT * FROM volunteer";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		if (rs.getString("r_date2").equals(strdate)){ 
			sql="delete from volunteer where r_date2 < CURDATE()";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		 } 
	}

	sql = "SELECT COUNT(*) as cnt FROM volunteer"; 
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
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
	
	/* 페이지 초기화, 10행씩 출력 */
	sql = "SELECT @rownum:=@rownum+1 as num, dic.* FROM volunteer dic WHERE (@rownum:=0)=0 LIMIT ?, ?"; // 초기화
	pstmt = conn.prepareStatement(sql); 
	pstmt.setInt(1, startPage);
	pstmt.setInt(2, onePageCnt);
	rs=pstmt.executeQuery();
%>
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/volunteer_nav.jsp" flush="false"/>
		<div class="write">
		<h2 id="h2_1">봉사 모집</h2>
		<br><hr><br><br>
		<table id="table2">
			<tr><th>번호</th><th>제목</th><th>봉사기간</th><th>모집기간</th><th>인원수</th></tr>
			<%
			while(rs.next()){
				int num=0;
				num = rs.getInt("num");   // 현재 페이지
				if (tempStart != null && Integer.parseInt(tempStart) > 1){ // 받은 페이지가 NULL이 아니고 1보다 크면 : 즉, 2 이상 해당
					num = num + 10;       // 현재 페이지 + 10
				}
				
				request.setAttribute("num", num);
				
			%>
			<tr><td>${num}</td>
				<td><a href="volunteer_content.jsp?no=<%=rs.getInt("no")%>&num=<%=rs.getInt("num")%>"><%=rs.getString("title") %></a> </td>
				<td><%=rs.getString("v_date1")%>~<%=rs.getString("v_date2")%> </td>
				<td><%=rs.getString("r_date1")%>~<%=rs.getString("r_date2")%> </td>
				<td><%=rs.getInt("peoplenum")%></td></tr><% } %>
		</table><br><br><br>
			<%
				/* 밑에 넘기는 페이지 숫자 출력 */
				for(int i=1; i<=count; i++){
			%>
			<span><a href="volunteer_see.jsp?page=<%=i%>">[<%=i %>]</a></span><%}; %>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>