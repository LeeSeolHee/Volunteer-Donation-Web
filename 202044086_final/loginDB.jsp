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
	String id = request.getParameter("id"); 	// 아이디
	String pw = request.getParameter("pass");   // 비밀번호
	
	PreparedStatement  pstmt = null;
	ResultSet  rs = null;
	
	 String sql = "SELECT * FROM login WHERE id=?"; // 아이디 있는지 찾기
	 pstmt = conn.prepareStatement(sql); /*conn으로 연결한뒤 , statement로 값을 넘긴다,쿼리문을 실행한다.  */
	 pstmt.setString(1,id);
	
	// 쿼리 실행
	rs = pstmt.executeQuery();
	
	// 쿼리 실행 결과 출력
	if(rs.next()){ 
		if(pw.equals(rs.getString("password"))){  // 아이디 있고, 비밀번호 일치하면
			 session.setAttribute("id", id);	// 세션에 ID 값 넘기기		
			 out.println("<script>");
			 out.println("alert('로그인 성공 !')");
			 out.println("location.href='home.jsp';");
             out.println("</script>");
		}
		else{  // 아이디는 있는데 비밀번호 불일치 경우
			out.println("<script>");
			out.println("alert('로그인 실패하였습니다.')");
			out.println("location.href='login.jsp';");
			out.println("</script>");
		}		
	}
	
	// 사용한 Statement 종료
	rs.close();
	
	// 커넥션 종료
	conn.close();
%>
<script>  // 아이디가 없을 경우
alert("로그인 실패하였습니다.");
location.href = "login.jsp";
</script>
</body>
</html>