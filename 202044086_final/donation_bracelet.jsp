<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style>
#table2 {
		text-align:center;
		margin : auto;
		border : 1px solid #BEBEBE;
		border-collapse: collapse;
	}
td {border : 1px solid #BEBEBE; }
#td1 { padding: 0px 150px;}
</style>
</head>
<body> <!-- 기부 팔찌 UI -->
	<div class="back">
		<br><br>
		<jsp:include page="/menu.jsp" flush="false"/>
		<jsp:include page="/donation_nav.jsp" flush="false"/>
		<div class="write">
		<h2 id="h2_1">기부팔찌</h2>
		<br><hr><br><br>
		
		<table id=table2>
		<tr><td><img src="/202044086_final/img/bracelet1.png" alt=""/></td>
		<td id="td1"><a href="https://anyhuman.co.kr/index.html"><b>위안부 희망나비 팔찌 [15,000원]</b></a><br><br>
			사람으로서, 여성으로서 극심한 고통만이 남아있는 역사<br>
			견디기 힘들었을 지난 세월<br>
			그 슬픔과 시간이 제멋대로 흘러가지 않도록<br>
			할머니의 희망을 꽃필 수 있도록 나설 차례입니다.</td></tr>
		<tr><td><img src="/202044086_final/img/bracelet2.png" alt=""/></td>
		<td id="td1"><a href="https://www.kfhi.or.kr/support/campaign/700?mcode=185&utm_source=naver&utm_medium=search_ad&utm_campaign=2021_bracelet_2nd_2&utm_content=sa&utm_term=%EA%B8%B0%EC%95%84%EB%8C%80%EC%B1%85%ED%9D%AC%EB%A7%9D%ED%8C%94%EC%B0%8C&NaPm=ct%3Dkwuzf4cw%7Cci%3D0Bq0001wi-Tv_bYc60Zw%7Ctr%3Dsa%7Chk%3D443208f5ecca4350471893f975c64f07139c150e">
			<b>기아대책 희망팔찌 [10,000원~]</b></a><br><br>
			하나같이 작고 소박한 아이들의 희망을<br>
			우리는 그 희망을 작은 팔찌에 담았습니다.<br>
			희망 팔찌로 아이들의 희망을 채워주세요.</td></tr>
		<tr><td><img src="/202044086_final/img/bracelet3.jpg" alt=""/></td>
		<td id="td1"><a href="http://meridiani.co.kr/product/%EC%8B%A4%EB%B2%84%EB%B3%BC-%EC%BD%94%EC%9D%B8-%ED%8E%9C%EB%8D%98%ED%8A%B8-%ED%8C%94%EC%B0%8Csilver-925/102/category/42/display/1/">
			<b>메리디아니 유기견&유기묘 후원 팔찌 [49,900원]</b></a><br><br>
			"지금, 당장 도움이 필요합니다."<br>
			한 해 버려지는 유기동물은 약 13만 마리<br>
			유기동물들의 건강하고 행복한 삶을 위해 함께 도와주세요.<br>
			우리는 유기견, 유기묘의 보호자 '메리디아니'입니다.</td></tr>
		<tr><td><img src="/202044086_final/img/bracelet4.png" alt=""/></td>
		<td id="td1"><a href="https://marcoroho.com/product/%EC%B4%98%EC%B4%98%EC%9D%B4/104/category/25/display/1/">
			<b>마르코로호 매듭 팔찌 [25,000원]</b></a><br><br>
			할머니들께 행복한 일자리를 만들어 드리는 마르코로호<br>
			마르코로호는 매듭 액세서리로 할머니들께 일자리를 선물하고<br>
			사회 문제를 겪고 계신 할머니들께 행복한 일상을 만들어 드립니다</td></tr>
		</table>
		
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>