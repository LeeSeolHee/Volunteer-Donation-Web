<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String title = request.getParameter("title");							// 제목
	String vdate1 = request.getParameter("vdate1");							// 봉사기간 start
	String vdate2 = request.getParameter("vdate2");							// 봉사기간 end
	String rdate1 = request.getParameter("rdate1");							// 모집기간 start
	String rdate2 = request.getParameter("rdate2");							// 모집기간 end
	int peoplenum = Integer.parseInt(request.getParameter("peoplenum"));	// 인원수
	String content = request.getParameter("content");						// 내용
	String id = (String) session.getAttribute("id");						// 아이디

	PreparedStatement  pstmt = null;
	ResultSet  rs = null;
	
	/* 현재 데이터베이스 최대 번호에서 +1을 하여서 마지막 행에 추가 */
	int num = 0;
	String sql = "select max(no) from volunteer";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

    if(rs.next()){
    	num = rs.getInt("max(no)")+1;
    }
    
    /* 데이터베이스 값 넣어서 행 추가  */
    sql = "insert into volunteer(no, title, v_date1, v_date2, r_date1, r_date2, peoplenum, content, id) values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); 
	pstmt.setInt(1, num);
	pstmt.setString(2, title);
	pstmt.setString(3, vdate1);
	pstmt.setString(4, vdate2);
	pstmt.setString(5, rdate1);
	pstmt.setString(6, rdate2);
	pstmt.setInt(7, peoplenum);
	pstmt.setString(8, content);
	pstmt.setString(9, id);
	pstmt.executeUpdate();

	pstmt.close();
	conn.close();
	
%>
<script>
	location.href='volunteer_see.jsp';
</script>

</body>
</html>