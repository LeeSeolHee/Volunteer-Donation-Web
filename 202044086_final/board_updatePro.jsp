<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 게시판 후기 내용 업데이트 처리 -->
<%@ include file="connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	int no = Integer.parseInt(request.getParameter("no"));      // 번호
	String name = request.getParameter("name");    				// 이름
	String[] field = request.getParameterValues("field");		// 분야(봉사, 기부)
	String title = request.getParameter("title");				// 제목
	String content = request.getParameter("content");			// 내용
	String pass = request.getParameter("pass");					// 비밀번호

	/* 선택한 번호에 맞는 행 찾기 */
	String sql = "select * from board where no=" + no;	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		/* 데이터 베이스 업데이트 */
		sql = "update board set name=?, field=?, title=?, content=?, pass=? where no=?";
    	pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, name);
		pstmt.setString(2, field[0]);
		pstmt.setString(3, title);
		pstmt.setString(4, content);
		pstmt.setString(5, pass);
		pstmt.setInt(6, no);
		pstmt.executeUpdate();
	}		
	
	rs.close();
	pstmt.close();
	conn.close();	
%>
<script>
	alert("수정했습니다.");
	location.href="board_see.jsp";
</script>
</body>
</html>