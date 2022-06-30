<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 게시판 후기 내용 삭제 처리 -->
<%@ include file="connectDB.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));   // 번호
	String pass = request.getParameter("pass");				 // 비밀번호

	/* 선택한 번호에 맞는 행 찾기 */
	String sql = "select * from board where no=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, no);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		if(pass.equals(rs.getString("pass"))){   // 비밀번호가 일치할 경우 삭제
			sql = "delete from board where no=?";	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();%>
			<script type="text/javascript">
			alert("삭제했습니다.");
			location.href="board_see.jsp";
			</script><%
		}else{  	// 비밀번호가 틀린 경우 경고창 띄우고 돌아가기
			%><script type="text/javascript">
			alert("비밀번호가 틀렸습니다.");
			history.go(-1);
			</script>
	<% 	}
	}
	rs.close();
	pstmt.close();
	conn.close();	
%>
</body>
</html>