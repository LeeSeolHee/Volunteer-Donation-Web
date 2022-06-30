<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	th { padding: 10px; padding-right:50px;}
  	td { padding: 10px; text-align:center;}
</style>
<body> <!-- 문의 메일 화면 UI  -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/board_nav.jsp" flush="false"/>
		
		<div class="write">
		<h2 id="h2_1">문의 메일 보내기</h2>
		<br><hr><br><br>
		
		<form action="board_DeclarationSend.jsp" method="post">
		<table id="table">
			<tr><th>메일주소 </th><td><input class="input" type="text" name="add"></td></tr>
			<tr><th>제목 </th><td><input type="text" class="input" name="title"></td></tr>
			<tr style="height:400px;"><th>내용</th>
				<td><textarea class="noresize" rows="30" cols="70" name="content"></textarea></td></tr>
			<tr><td colspan="2" style="height:150px;">
				<input type="submit" value="전송" class="button">
				<input type="reset" value="취소" class="button"></td></tr>
		</table>	
		</form>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>