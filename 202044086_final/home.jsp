<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.img1 {  width:90%; height:650px; }  

	.in {
		background-color : #F3E4D4;
		margin : 40px;
	}
	#icon {width:110px; height:100px; margin-bottom:100px;}	
	#td1 {width:500px;}
	td {padding:10px;}
	h1 {color : white; font-size : 50px;}
</style>
</head>
<body> <!-- 메인 HOME 페이지 -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<img class="img1" src="/202044086_final/img/img1.png" alt=""/><br><br><br><br>
		<h1>" What kind of volunteer work is there? "</h1><br>
		<div class="in">
			<table style="text-align:left; margin:0% 10%;">
			<tr>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td id="td1"><b>목도리를 이어서 마음을 잇다, ‘목도리 뜨개질’</b><br><br>
				추운 겨울을 이겨낼 수 있도록!<br>
				목도리를 떠서 도움이 필요한 사람들에게 따뜻한 마음을 전달해주세요.<br>
				목도리를 떠서 북한 주민에게 전달해요.<br>
				1회 6시간까지 단체로 참여해야 자원봉사 시간 인정 가능해요.<br><br>
				<b>- 관련기관 :</b> <a href="http://www.hananuri.org/">하나누리</a> <br></td>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td id="td1"><b>신생아의 24시간을 지켜주세요. ‘신생아 살리는 모자 뜨기’</b><br><br>
				출생 후 24시간을 지지 못해 많은 아이들이 내일을 살아가지 못하고 있어요.<br>
				아이들을 향한 여러분의 따스한 손길을 건네주세요.<br>
				아프리카 지역의 위급 상황인 아기들에게 전달돼요.<br>
				체온을 2도다 높여 한 생명을 살릴 수 있어요. 봉사 시간은 개수 상관없이 5시간 인정돼요.<br><br>
				<b>- 관련기관 : </b><a href="https://www.sc.or.kr/">세이브 더 칠드런</a> <br></td>
			</tr>
			<tr>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td><b>시각장애인에게 글을 들려주세요. ‘점자도서 제작을 위한 워드입력봉사’</b><br><br>
				시각장애인들이 사용할 수 있도록 책을 워드프로세서 파일로 작성하는 봉사활동이에요.<br>	
				봉사점수를 받으려면 가입시 1365 아이디를 반드시 기입해야 해요.<br>
				온라인 강의를 보며 정확한 봉사활동 방법을 숙지해주세요!<br><br>
				<b>- 관련기관 : </b><a href="http://www.itlo.org/">IT로 점자도서관</a> <br></td>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td><b>지구촌 환경을 살려요. ‘그린라이트 제작 봉사’</b><br><br>
				재활용할 수 있는 플라스틱 컵이나 빨대를 통해 태양광 랜턴을 만들어요!! 전기 없이 생활하는 빈곤 국가에게 밝은 빛을 전해요.<br>
				낮 동안 햇빛을 저장하는 충전기와 태양광 패널을 이용해 휴대용 LED 조명을 만들어요.<br>
				그린라이트 1개 완성 시 봉사시간 2시간이 부여돼요.<br><br>
				<b>- 관련기관 :</b> <a href="http://www.hopetofuture.org/">미래희망기구</a> <br></td>
			</tr>
			<tr>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td><b>재능 기부까지 한 번에! ‘어린이도서 영어 번역 봉사’</b><br><br>
				전래동화와 어린이 도서를 번역해 교육 환경이 열악한 빈곤 국가에 전달해요.<br>
				만 오천 여 명의 봉사자가 참여해 2,000여 권의 도서를 발송했어요.<br>
				도서 1권 번역 시 봉사시간 3시간이 부여돼요.<br><br>
				<b>- 관련기관 : </b><a href="http://www.hopetofuture.org/">미래희망기구</a> <br></td>
				<td><img id="icon" src="/202044086_final/img/icon.png" alt=""/></td>
				<td><b>일회용품을 줄여요. ‘일회용품 탈출러’</b><br><br>
				한 달 동안 일회용품 절약방법 또는 기후위기 대응방법을 시민들에게 알리는 미션을 조별로 수행하게 되며,
				 영상, 이미지 제작, 챌린지, 녹음 등 탈출러들의 다양한 아이디어로 진행되는 흥미진진한 봉사활동입니다.<br>
				혜택은 2주 이상 참가자에 한해 제공됩니다.<br><br>
				<b>- 관련기관 : </b><a href="https://www.gy1365.or.kr/">고양시자원봉사센터</a> <br></td>
			</tr>
			</table>	
		</div>		
	<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>