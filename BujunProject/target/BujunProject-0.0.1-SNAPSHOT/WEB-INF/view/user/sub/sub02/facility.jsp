<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu02.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>편의시설</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">편의시설</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon14"></span>
			<b>복사, 프린터</b>
			<p>복사를 원하시는 분은 종합자료실, 연속간행물실에서 이용하실 수 있으며 모든 좌석에서 프린터를 이용할 수 있습니다. 복사 및 프린터 이용시에는 안내실에서 판매하는 복사카드를 사용하시기 바랍니다.</p>
		</div>
	</div>


	<div id="tab_depth01" class="w25">
		<ul>
			<li class="active"><a href="/facility?m1=02&m2=05">복사,프린터</a></li>
			<li><a href="/facility02?m1=02&m2=05">사물함</a></li>
			<li><a href="/facility03?m1=02&m2=05">무선인터넷이용</a></li>
			<li><a href="/facility04?m1=02&m2=05">주차, 옥외 휴게실</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">복사</h2>		
	<ul class="bul_type1 mg_b40">
		<li>이용장소 : 종합자료실 2대, 연속간행물실 1대</li>
		<li>이용방법 : 복사카드를 카드리더기에 넣어 이용합니다.</li>
		<li>복사카드 구입처 : 안내실(1층), 3,000원/개</li>
		<li>복사요금 : A4/장 30원, B4/장 40원 <br />* 저작권법에 따라 부분복사만 가능 합니다. <br />
			<a href="http://www.law.go.kr/lsSc.do?menuId=0&amp;p1=&amp;subMenu=1&amp;nwYn=1&amp;section=&amp;tabNo=&amp;query=%EC%A0%80%EC%9E%91%EA%B6%8C%EB%B2%95#undefined" class="con_bblue" target="_blank">저작권법 보기</a>
		</li>
	</ul>	

	
	<h2 class="tbul1">프린터</h2>		
	<ul class="bul_type1 mg_b40">
		<li>대상 : 원문DB, 문서, WEB DB, 인터넷정보 등 PC출력 자료</li>
		<li>출력 방법 : 복사카드 사용(카드구매 : 안내실, 1매당 3,000원)</li>
		<li>출력 요금 
			<ul>
				<li>원문DB : 1면당 50원＋저작권료 (판매용 1면당 5원, 전송 1파일당 20원/비매품 1면당 3원)</li>
				<li>문서출력, 인터넷정보, WEB DB 등 : 1면당 50원</li>
			</ul>
		</li>
		<li>모든 좌석에서 프린터를 이용할 수 있습니다. </li>
	</ul>		
	
	
	<h2 class="tbul1">도서관 보상금제도 안내</h2>		
	<ul class="bul_type1 mg_b40">
		<li>2004년 7월 1일부터 도서관에서 원문DB를 이용하는 경우 복사 비용과 별도로 소정의 저작권 보상금을 부과하도록 하는 제도(저작권법 제31조 ) </li>
		<li>도서관 보상금이란 이용자가 지적재산권자의 허락없이 저작물을 이용하기위하여 문화관광부장관이 정한 저작재산권자단체(한국복사전송권관리센터 )에 공탁하는 보상금임. </li>
		<li>보상금 부과 기준
			<ul>
				<li>판매용 단행본/연속간행물:출력(1면당 5원)/전송(1파일당 20원)</li>
				<li>비매용 단행본/연속간행물 : 출력(1면당 3원) </li>
			</ul>
		</li>
	</ul>		
	
	
	
	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>