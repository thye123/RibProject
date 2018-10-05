<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu08.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>찾아오시는길</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">찾아오시는길</div>
	
		<!-- * Daum 지도 - 지도퍼가기 -->
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1538115470830" class="root_daum_roughmap root_daum_roughmap_landing"></div>
		
		<!--
			2. 설치 스크립트
			* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
		-->
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
		
		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1538115470830",
				"key" : "q7if",
				"mapWidth" : "930",
				"mapHeight" : "300"
			}).render();
		</script>
		
		
		<h2 class="tbul1">교통편 안내</h2>
		
		<h3 class="tbul2">버스</h3>
		<p class="mg_b20">20, 169-1, 133, 138-1, 5-1, 10, 29, 43, 52, 57, 80, 111</p>
		
		<h3 class="tbul2">도시철도</h3>
		<p class="mg_b40">도시철도 1,2호선 서면역 하차, 2,4,6,8,10번 출구(도보 10분)</p>

		<h2 class="tbul1">주소 및 연락처</h2>
		
		<h3 class="tbul2">주소</h3>
		<p class="mg_b20">부산광역시 부산진구 동천로 79 (우) 47292</p>

		<h3 class="tbul2">전화번호</h3>
		<p class="mg_b20">051-802-5901(ARS로 각실에 연결) FAX : 051-803-5398</p>
		
		
		<div class="scroll_info">
			<span class="arr_l"></span>
			<span class="scroll_icon"></span>
			<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
			<span class="arr_r"></span>
		</div>
		
		<div class="auto_box mg_b40">			
			<table class="tb_board">
				<caption>실명 전화번호로 구분하여 부전도서관 연락처 정보입니다.</caption>
				<colgroup><col style="width:40%;" /><col /><col /><col /></colgroup>
				
				<thead>
				<tr>
					<th scope="col">실명</th>
					<th scope="col">전화번호</th>
					<th scope="col">실명</th>
					<th scope="col" class="bnon">전화번호</th>
				</tr>
				</thead>
				<tbody>
				  <tr>
					<td>종합자료실</td>
					<td>1번</td>
					<td>자료봉사과</td>
					<td class="bnon">4번</td>
				  </tr>
				  <tr>
					<td>어린이실</td>
					<td>2번</td>
					<td>사서계</td>
					<td class="bnon">5번</td>
				  </tr>
				  <tr>
					<td>연속실/디지털실/금융정보실</td>
					<td>3번</td>
					<td>총무과</td>
					<td class="bnon">6번</td>
				  </tr>
				  <tr>
					<td colspan="4" class="bnon">당직실 (야간) <a href="tel:051-802-0502">802-0502</a></td>
				  </tr>
				</tbody>
			</table>
		</div>			

		<h2 class="tbul1">주차장 이용안내</h2>
		<ul class="bul_type1">
			<li>운영시간 : 07:00~23:00</li>
			<li>주차면수 : 일반 6면, 장애우 1면</li>
			<li>이용안내 : 5부제 참여차량만 주차<br />
			<span class="red">* 주차면수 부족으로 가급적 대중교통 수단을 이용하시기를 권합니다.</span></li>
		</ul>








		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>