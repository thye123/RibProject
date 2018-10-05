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
			<span class="icon icon20"></span>
			<b>무선인터넷이용</b>
			<p>우리도서관에서 무선랜 노트북을 갖고 계신 분은 누구나 관내에서 인터넷을 이용할 수 있도록 무선접속장치를 설치 제공하오니 이용시 참조하시기 바랍니다.</p>
		</div>
	</div>


	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/facility?m1=02&m2=05">복사,프린터</a></li>
			<li><a href="/facility02?m1=02&m2=05">사물함</a></li>
			<li class="active"><a href="/facility03?m1=02&m2=05">무선인터넷이용</a></li>
			<li><a href="/facility04?m1=02&m2=05">주차, 옥외 휴게실</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">이용방법</h2>		
	<ul class="bul_type1 mg_b40">
		<li>대상 : 무선랜카드를 장착한 노트북 및 PDA(한국통신 넷스팟 ID 필요없음) </li>
		<li>지원규격 : 무선랜 802.11b(11M) / 802.11g(54M) 둘다 지원 가능합니다. </li>
		<li>설치방법 : Window 네트워크환경 → TCP/IP 프로토콜에서 "자동으로IP주소받기", " 자동으로 DNS서버 주소받기"로 선택하면 자동으로 설정값이 적용 되어 사용이 가능합니다.</li>
		<li>우리도서관은 실외 휴게공간까지 무선랜이 가능합니다. </li>
		<li>무선랜카드 종류와 신호에 따라 범위는 달라질 수 있습니다. </li>
	</ul>	
	
	
	
	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>