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
			<span class="icon icon21"></span>
			<b>주차</b>
			<p>부전도서관 주차운영시간은 오전 7시부터 오후 11까지입니다. 5부제 참여차량만 주차가능하므로 가급적 대중교통 수단을 이용해주시기 바랍니다.</p>
		</div>
	</div>


	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/facility?m1=02&m2=05">복사,프린터</a></li>
			<li><a href="/facility02?m1=02&m2=05">사물함</a></li>
			<li><a href="/facility03?m1=02&m2=05">무선인터넷이용</a></li>
			<li class="active"><a href="/facility04?m1=02&m2=05">주차, 옥외 휴게실</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">주차</h2>		
	<ul class="bul_type1 mg_b40">
		<li>운영시간 : 07:00~11:00</li>
		<li>주차면수 : 일반 6면, 장애우 1면, 경차 1면</li>
		<li>이용안내 : 5부제 참여차량만 주차가능, 1일 최대 2시간  <br />* 주차면수 부족으로 가급적 대중교통 수단을 이용하시기를 권합니다.</li>
	</ul>	
	
	
	<h2 class="tbul1">옥외 휴게실</h2>		
	<ul class="bul_type1 mg_b40">
		<li>위치 : 건물 앞쪽</li>
		<li>옥외 휴식 공간 </li>
	</ul>		
	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>