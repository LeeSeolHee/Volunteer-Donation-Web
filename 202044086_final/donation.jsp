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
<body>
<body>  <!-- 기부안내의 기본 페이지, 소개글 UI -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/donation_nav.jsp" flush="false"/>
		<div class="write2">
		<h1 id="h2_1">소개글</h1>
		<hr>
		<h2>기부란?</h2>
		<ul class="ul2">
			<li><b>영어로 donate</b></li>
			<ol class="ol2">
				<li>물건을 줌.</li>
				<li>의지하거나 부탁함</li>
				<li>자선 사업이나 공공사업을 돕기 위하여 돈이나 물건 따위를 대가 없이 내놓음</li>
			</ol>
			<li><b>기부 활동</b></li>
			기부단체에서 일반인들을 대상으로 모금 활동을 벌이고, 모아진 돈이나 물품은 어려운 사람들을 위해 쓰이는 등 각 기부단체의 목적을 위해 쓰인다. 어려운 사람들을 자의적인 마음으로 돕는다는 점에서 자원봉사와 함께 대표적인 선행으로 뽑힌다. 
			기부와 자원봉사를 병행해서 하는 사람들도 많다. 
			2010년대 이후에는 기부와 자원봉사를 결합한 재능기부라는 형태의 기부도 등장했다.
		</ul>
		<h2>기부 종류</h2>
		<div style="border:1px solid black;">
		<ul class="ul2">
			<li>직접 기부: 다른 단체나 기관의 도움 없이 본인이 기부 대상자를 찾아 기부금을 전달하거나 봉사 등을 직접적으로 행하는 기부 방법 </li>
			<li>단체 기부: 전문적으로 기부 사업을 하는 단체 또는 기관에 기부금을 전달하거나 단체 봉사활동 등에 참여하여 행하는 기부 방법 </li>
			<li>재단 설립: 기부금에 의존하지 않고 독립적인 기부 재단을 설립해서 자립성을 갖추고 재단의 의지에 따라서 적극적인 기부를 할 수 있는 방법</li>
		</ul>
		</div>
		<h2>기부단체</h2>
		<ul class="ul2">
			<li>곧장기부 : 기부금을 100% 전달하는 기부. 10,000원을 기부하면 10,000원이 그대로 전달된다. 온라인쇼핑몰을 매개로 하기때문에 물건의 가격이나 종류를 미리 알 수 있다. SK행복나눔재단에서 그외 비용을 부담하기에 100%기부가 가능하다.</li>
			<li>구세군 : 엄밀히 말하면 기부단체가 아니라 개신교 종파의 하나이다. 그러나 자선냄비로 인해서 기부 단체 이미지가 강하다.</li>
			<li>굿네이버스</li>
			<li>밀알복지재단</li>
			<li>사회복지공동모금회(사랑의 열매) - 사회복지공동모금회법</li>
			<li>세이브더칠드런 : 모자뜨기가 유명하다. 유니세프와 함께 가장 유명한 국제적 아동 구호 단체</li>
			<li>아름다운재단</li>
			<li>아름다운가게 : 2002년 10월 17일에 아름다운재단에서 독립했다</li>
			<li>월드비전 : 세계최대 국제구호개발NGO. 기아체험24시가 유명했다. 기독교 정신 위에 세워졌지만 후원의 조건으로 개종을 강요하지 않고 교회 건축, 선교사 파송 등의 활동은 하지 않는다.</li>
			<li>유니세프 : 국제연합 산하의 아동 구호 단체. 낙태를 조장한다며 비판을 받았으나 공식적으로 부인했다. 요즘은 좀 낫지만 몇 년 전까지만 해도 한국 유니세프는 국내의 다른 자선단체들과 마찬가지로 내외부에 문제가 정말 많았다.</li>
			<li>초록우산 어린이재단</li>
			<li>유엔난민기구 (UNHCR) : 국제연합 산하 기구. 난민의 권 리 보호와 복지 제공을 주요 목표로 하는 UN 기구이다.</li>
		</ul>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>