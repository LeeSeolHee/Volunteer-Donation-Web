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
</style>
</head>
<body> <!-- 봉사안내 기본 페이지, 봉사 소개글 UI -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/volunteer_nav.jsp" flush="false"/>
		<div class="write2">
		<h1 id="h2_1">소개글</h1>
		<hr>
		<h2>자원봉사란?</h2>
		<ul class="ul2">
			<li><b>라틴어 voluntas에서 유래</b></li>
			<li><b>volo(의지)</b></li>
			<ol class="ol2">
				<li>영어의 will</li>
				<li>voluntus라는 말 생성</li>
				<li>의미: 자발적인 것, 자주적·임의적 자유의</li>
			</ol>
			<li><b>자원봉사 활동</b></li>
			개인 또는 단체가 지역사회·국가 및 인류사회를 위하여 대가 없이 자발적으로 시간과 노력을 제공하는 행위
		</ul>
		<h2>자원봉사의 특성</h2>
		<div style="border:1px solid black;">
		<ul class="ul2">
			<li>자발성 : 자신의 의사로써 시간과 재능, 경험을 도움이 필요한 이웃과 지역사회 공동체 형성에 아무런 대가 없이 활동하는 것</li>
			<li>무보수성 : 경제적 보상과 관련되는 것으로 자원봉사활동에 대해 금전적 대가를 받지 않는 것</li>
			<li>공익성 : 이웃과 지역사회 내에 산재하고 있는 문제를 해결하여 삶의 질을 향상시키기 위하여 활동하는 것</li>
			<li>지속성 : 자원봉사활동에 참여하게 되면 일정기간 동안 지속성과 정기적으로 봉사활동에 참여하는 것</li>
		</ul>
		</div>
		<h2>봉사자의 자세</h2>
		<ul class="ul2">
			<li>자원봉사 활동을 하는 목적을 분명히 알고 처음의 순수함을 돌아보는 자세를 갖습니다.</li>
			<li>매사에 긍정적인 생각을 가지고 타인에게 모범을 보일 수 있는 성품을 지닐 수 있도록 노력합니다.</li>
			<li>다른 사람들을 보살피고 맡은 바 직책을 충실히 이행합니다.</li>
			<li>자신의 말이나 행동이 어떠한 영향을 미치는지 항상 생각하고 신중한 자세로 임합니다.</li>
			<li>활동에 대한 책임감을 가지고 봉사활동을 시작합니다.</li>
			<li>활동은 성실히 하며, 활동 시간에 대한 약속을 꼭 지킵니다.</li>
			<li>자신의 개인 적인 문제나 감정이 있더라도 이를 자신의 일과 분리할 수 있는 능력과 자질이 있어야 합니다.</li>
			<li>자원봉사자는 양심적이어야 합니다.</li>
			<li>자원봉사자는 끊임없이 공부하며 배우는 자세를 가져야 합니다.</li>
		</ul>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>