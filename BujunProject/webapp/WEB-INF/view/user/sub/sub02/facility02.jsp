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
			<span class="icon icon19"></span>
			<b>사물함</b>
			<p>사물함은 1층로비 및 2층 복도에 160개 정보 구비되어 있으며 자료실 및 열람실 이용자께서 사용할 수 있습니다.</p>
		</div>
	</div>


	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/facility?m1=02&m2=05">복사,프린터</a></li>
			<li class="active"><a href="/facility02?m1=02&m2=05">사물함</a></li>
			<li><a href="/facility03?m1=02&m2=05">무선인터넷이용</a></li>
			<li><a href="/facility04?m1=02&m2=05">주차, 옥외 휴게실</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">동전투입용 무료사물함</h2>		
	<ul class="bul_type1 mg_b40">
		<li>개수 : 160개</li>
		<li>위치 : 1층 로비 및 2층 복도(열람실 입구)</li>
		<li>이용대상 : 자료실 및 열람실 이용자</li>
		<li>이용방법 : 500원을 투입하여 개인소지품 보관, 퇴실 시 반환 </li>
	</ul>	
	
	
	
	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>