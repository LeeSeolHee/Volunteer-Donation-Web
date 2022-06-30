<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.write2 {
		background-color:#F4F4F4;
		margin:0px 300px;
		padding:100px 100px;
		text-align:left;
		line-height:50px;
	}
	#h2_1 {text-align:center; font-size:25px; padding-top:10px; padding-bottom:30px;}
	.ul2 {
	  list-style-type : circle;
	  margin-left : 50px;
	}
	#img_1 {margin-left : 110px ;}
</style>
</head>
<body> <!-- 기부 참여 UI -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/donation_nav.jsp" flush="false"/>
		<div class="write2">
		<h2 id="h2_1">기부참여</h2>
		<hr><br><br>
		<img id="img_1" src="/202044086_final/img/gibu1.png" alt=""/>
		<h2>기부 챌린지</h2>
		<ul class="ul2">
			<li><b>아이스버킷 챌린지</b> : 참가자가 도전을 받을 세 명을 지목하고 얼음물을 뒤집어쓴다. 지목을 받은 다음 참가자는 24시간 내에 얼음물을 뒤집어쓰거나 ALS에 100달러를 기부해야 한다.
				다른 사람이 얼음물을 뒤집어쓰는 모습, 자신과 친한 3명을 지목하고, 그들이 다시 또 새로운 3명을 지목하는 순환 고리가 꼬리에 꼬리를 물면서, 이 ‘재미’있는 캠페인은 엄청난 성공을 거두었다.</li>
			<li><b>매운 칠리 페퍼 챌린지(The Great Rotary Hot Chili Pepper Challenge)</b>: 아이스 버킷 챌린지를 모델 삼아 론칭된 캠페인이다. 참여 방법은 로터리 클럽에 기부를 한 후, 칠리 페퍼(매운 고추류)를 선택해서 먹으며, 2명의 도전자를 호명한다. 매운 고추를 먹고 매워하는 모습, 그럼에도 즐거워 하는 모습과 기부 내용을 언급하는 모습을 찍은 비디오를 소셜 미디어에 포스팅하고 #hotchilipepperchallenge 해시태그를 포함하면 된다. 
				이렇게 기부된 금액은 the Area 3 World Community Service projects, Washington Township Museum of Local History, Life ElderCare, Tri-City Rotary Clinic, New Haven Schools Foundation, the local Salvation Army, and an Interact charity의 6개 단체에 기부되어 지역 주민의 건강, 교육, 노인 복지, 사회 복지 향상을 위해 쓰이게 된다.</li>
			<li><b>춤추거나 기부하거나(Dance or Donate)</b> : 허리케인 매튜로 어려움 속에 있는 아이티(Haiti)지역에 깨끗한 물을 공급하는 데 필요한 자금 마련을 위한 캠페인이었다. 참여 형식은 100달러를 기부하거나 (춤을 추지 않는 경우) 10달러(춤을 추는 경우)를 기부하면 된다. 공유하고자 하는 비디오에서 친구들을 초대하면 된다. 기부금은 저비용 물 필터 관을 설치하는데 사용되었다.</li>
			<li><b>타코 또는 맥주 도전(Taco or Beer Challenge)</b> : 이 캠페인은 낙태 기금 네트워크(The National Network of Abortion Funds)는 낙태 권리를 옹호하는 단체가 주도한다. 참여 방법은 즐겁게 타코를 먹거나 맥주를 마시거나 둘 중의 하나를 한 후, 사진을 공유하고, 미국 가족계획 협회(Planned Parenthood) 등 낙태 권리(Abortion Rights)와 관련된 조직에 기부하는 것이다.</li>
		</ul>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>