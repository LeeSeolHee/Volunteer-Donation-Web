<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 문의 메일 처리  -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/board_nav.jsp" flush="false"/>
		
		<%
			request.setCharacterEncoding("utf-8");
			 
			String add	= request.getParameter("add");       	 // 메일주소
			String title = request.getParameter("title");  		 // 제목
			String content = request.getParameter("content");	 // 내용
			 
			Properties props = new Properties();   // 네이버 메일로 보내기
			props.put("mail.smtp.host", "smtp.naver.com"); 
			props.put("mail.smtp.port", 587); 
			props.put("mail.smtp.auth", "true");
			
			
			Session se = Session.getInstance(props, new javax.mail.Authenticator() {  // 나의 이메일, 비밀번호
				protected PasswordAuthentication getPasswordAuthentication() { 
					return new PasswordAuthentication("tjfgml1078@naver.com","zlalql456"); 
					} 
				});

			try{
				MimeMessage message = new MimeMessage(se);
				message.setFrom(new InternetAddress("tjfgml1078@naver.com"));  // 나의 이메일에서 나의 이메일로 보내기 -> 나에게 쓰기
				message.addRecipient(Message.RecipientType.TO, new InternetAddress("tjfgml1078@naver.com"));
				
				// 제목
				message.setSubject(title); 
				// 내용 (메일주소 + 내용)
				message.setText(add + "\n" + content); 
				
				// 메일 전송
				Transport.send(message); 
				
			} catch(Exception e){
			    e.printStackTrace();
			    return;
			}
		%>
		<script type="text/javascript">
		 	alert("메일 전송하였습니다.");
		 	location.href="board_Delaration.jsp";
		</script>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>