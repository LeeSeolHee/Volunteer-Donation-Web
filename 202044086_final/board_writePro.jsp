<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 후기 작성 처리코드 -->
<%@ include file="connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");    				 // 이름
	String[] field = request.getParameterValues("field");		 // 분야(봉사, 기부)
	String title = request.getParameter("title");				 // 제목
	String content = request.getParameter("content");			 // 내용
	String pass = request.getParameter("pass");  				 // 비밀번호
	int readcount = 0;											 // 조회수
	Timestamp date = new Timestamp(System.currentTimeMillis());	 // 작성시간	

	PreparedStatement  pstmt = null;
	ResultSet  rs = null;
	
	String sql = "select max(no) from board"; 
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	/* 현재 데이터베이스 최대 번호에서 +1을 하여서 마지막 행에 추가 */
	int num = 0;
    if(rs.next()){
    	num = rs.getInt("max(no)")+1;
    }
    
    /* 데이터베이스 값 넣어서 행 추가  */
    sql = "insert into board(no, name, field, title, content, readcount, date, pass) values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); 
	pstmt.setInt(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, field[0]);
	pstmt.setString(4, title);
	pstmt.setString(5, content);
	pstmt.setInt(6, readcount);
	pstmt.setTimestamp(7, date);
	pstmt.setString(8, pass);
	pstmt.executeUpdate();

	pstmt.close();
	conn.close();
	
%>
<script>
	alert('업로드 성공!');
	location.href='board_write.jsp';
</script>

</body>
</html>