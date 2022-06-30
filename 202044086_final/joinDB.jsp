<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 회원가입 처리 [DB 업데이트] -->
<%@ include file="connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");    		// 아이디
	String pw = request.getParameter("pass");		// 비밀번호
	String pw2 = request.getParameter("pass2");		// 비밀번호 확인
	String name = request.getParameter("name");		// 이름
	String email = request.getParameter("email"); 	// 이메일
		
	PreparedStatement  pstmt = null;
	ResultSet  rs = null;

	String sql = "insert into login(id,password,name,email) values(?,?,?,?)"; 
	
    if(pw.equals(pw2)){   // [비밀번호, 비밀번호 확인] 값 일치
    	 pstmt = conn.prepareStatement(sql); 
    	 pstmt.setString(1,id);
    	 pstmt.setString(2,pw);
    	 pstmt.setString(3,name);
    	 pstmt.setString(4,email);
    	 pstmt.executeUpdate();  // 테이블 값 추가 - 업데이트
    	 pstmt.close();
    	 conn.close();
    	 out.println("<script>");
  	 	 out.println("alert('회원가입 성공!')");
  	 	 out.println("location.href='login.jsp'");
  	 	 out.println("</script>");
     }
     else{  // [비밀번호, 비밀번호 확인] 값 불일치
    	 out.println("<script>");
 	 	 out.println("alert('비밀번호가 일치하지 않습니다.')");
 	 	 out.println("location.href='join.jsp'");
 	 	 out.println("</script>");
     }
     

%>
</body>
</html>