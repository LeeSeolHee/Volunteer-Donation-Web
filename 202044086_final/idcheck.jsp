<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 아이디 중복체크 처리  -->
<%@ include file="connectDB.jsp" %>
<%
	String id = request.getParameter("id");  // ID
	
	PreparedStatement  pstmt = null;
	ResultSet  rs = null;
	
	String idcheck = "SELECT * FROM login WHERE id=?"; 
	
	/*conn으로 연결한뒤 , statement로 값을 넘긴다,쿼리문을 실행한다.  */
	pstmt = conn.prepareStatement(idcheck);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	
	if(rs.next()){  // 같은 아이디가 있으면
		out.println("<script>");
	 	out.println("alert('중복된 아이디입니다.')");
	 	out.println("location.href='join.jsp'");
	 	out.println("</script>");
	}else{			// 같은 아이디가 없으면
		out.println("<script>");
	 	out.println("alert('사용가능한 아이디입니다.')");
	 	out.println("location.href='join.jsp'");
	 	out.println("</script>");
	}
	pstmt.close();
	conn.close();
%>
</body>
</html>