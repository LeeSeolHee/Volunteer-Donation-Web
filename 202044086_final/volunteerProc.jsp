<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connectDB.jsp" %>
<% 
	String loginid = null;
	if(session.getAttribute("id") != null){
		loginid = (String)session.getAttribute("id");
	}
	// 로그인을 한 사람만 글쓰기 가능
	if(loginid == null){
		out.println("<script>");
		out.println("alert('로그인이 필요합니다.')");
		out.println("location.href='login.jsp'");
		out.println("</script>");
	}
%>
<% 	
	request.setCharacterEncoding("utf-8");

	int no = Integer.parseInt(request.getParameter("no"));
	int peoplecnt = Integer.parseInt(request.getParameter("peoplecnt"));
	int peoplenum = Integer.parseInt(request.getParameter("peoplenum"));
	
	PreparedStatement  pstmt = null;
	ResultSet  rs = null;
	
	String sql = "SELECT * FROM volunteer WHERE id=?"; 
	pstmt = conn.prepareStatement(sql); 
	pstmt.setString(1,loginid);
	
	// 쿼리 실행
	rs = pstmt.executeQuery();
	while(rs.next()){
		if(loginid.equals(rs.getString("id"))){
			out.println("<script>");
			out.println("alert('작성자는 신청할 수 없습니다.')");
			out.println("location.href='./volunteer_see.jsp';");
			out.println("</script>");
		}
	}
	
	if(peoplecnt == peoplenum){
		out.println("<script>");
		out.println("alert('인원수 초과하였습니다.')");
		out.println("location.href='./volunteer_see.jsp';");
		out.println("</script>");
	}
	else{
		sql = "UPDATE volunteer A JOIN login B SET peoplecnt=?, A.list = CONCAT(IFNULL(A.list, ''), SPACE(3), B.name, '[', B.id, ']' ) WHERE B.id=? AND A.no=?";
		pstmt = conn.prepareStatement(sql);
		peoplecnt++;
		pstmt.setInt(1, peoplecnt);
		pstmt.setString(2, loginid);
		pstmt.setInt(3, no);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();	
		out.println("<script>");
		out.println("alert('참가신청 성공!')");
		out.println("location.href='./volunteer_see.jsp';");
		out.println("</script>");
	}
	
%>

</body>
</html>