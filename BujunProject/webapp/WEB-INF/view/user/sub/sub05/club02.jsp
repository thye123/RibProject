<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp" %>   
<script>
 window.onload=function(){
		
		var btn_con = document.getElementById('minClub');
		btn_con.onclick = function(e) {
		 e.preventDefault();
		 window.open('/club01/joinClub?m1=05&m2=03&m3=02', 
			'joinClub', 'status=no, height=450, width=400');
		}

 }
</script>
<style>
 #minClub{
 	cursor: pointer;
 }
</style>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>독서문화</li>
		<li>독서동아리</li>
		<li>책넝쿨</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">책넝쿨</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon13"></span>
			<b>부전도서관 독서동아리</b>
			<p>책읽기와 글쓰기에 관심이 있는 어린이, 청소년, 일반인들이 모여 읽은 책에 대해여 함께 이야기하고 서로의 생각과 의견을 나누는 모임으로 친목도모와 더불어 보다 지속적이고 체계적인 독서활동을 통하여 폭넓은 사고와 창의력을 키울 수 있으며, 책과 보다 친해질 수 있는 기회를 제공합니다.</p>
			<div class="l mg_t10">
		<a href="/club01/CluBoard?clb_clucode=CUS0002&page=1&pagecount=10&pagegrp=1&m1=05&m2=03&m3=02" class="btn_con btn_link">독서동아리게시판</a>
		<a target="_blank" class="btn_con btn_down" id="minClub">신청 하기</a>
	</div>	
		</div>
	</div>
	
	<h2 class="tbul1">책넝쿨독서회</h2>	
	<h3 class="tbul2">대상 </h3>
	<p class="mg_b30">중학생 1~3학년</p>	

	<h3 class="tbul2">토론일시</h3>
	<p class="mg_b30">매월 첫째주 또는 셋째주 일요일 오후 2시</p>		
	
	<h3 class="tbul2">담당사서</h3>
	<p class="mg_b30">어린이실 사서</p>	

	<h3 class="tbul2">목표</h3>
	<ul class="bul_type1 mg_b30">
		<li>책읽기와 토론을 통해 나 자신을 더 잘 이해하도록 돕는다.</li>
		<li>자신의 감정을 올바로 이해하고, 조절하는 방법을 찾는다.</li>
		<li>자신에 대한 긍정적 인식을 심어준다.</li>
		<li>나 자신의 이해를 바탕으로 가족, 친구, 선생님 등 다른 사람도 더 잘 이해할 수 있도록 한다.</li>
		<li>성장과정에서 겪을 수 있는 여러 가지 상황에 대처할 수 있도록 돕는다.</li>
	</ul>	
	
	<h3 class="tbul2">2018년 책넝쿨 독서토론회 운영계획서</h3>
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b30">			
		<table class="tb_board">
		<caption>2017년 책넝쿨 독서토론회 운영일정</caption>
		  <thead>
		  <tr>
		    <th scope="col">차시</th>
		    <th scope="col">날짜</th>
		    <th scope="col">도서명</th>
		    <th scope="col">저자</th>
		    <th scope="col">출판사</th>
		    <th scope="col" class="bnon">주제</th>
		  </tr>
		  </thead>
		  <tbody>
		 <tr>
		    <td>1차시</td>
		    <td>3/11</td>
		    <td colspan="4" class="bnon">오리엔테이션</td>
		  </tr>
		  <tr>
		    <td>2차시</td>
		    <td>4월</td>
		    <td>아몬드</td>
		    <td>손원평</td>
		    <td>창비</td>
		    <td class="bnon">관계 맺기와 소통</td>
		  </tr>
		  <tr>
		    <td>3차시</td>
		    <td>5월</td>
		    <td>이덕일의 당당 한국사</td>
		    <td>이덕일</td>
		    <td>아라미</td>
		    <td class="bnon">우리 역사의 자긍심</td>
		  </tr>
		  <tr>
		    <td>4차시</td>
		    <td>6월</td>
		    <td>동물농장</td>
		    <td>조지 오웰</td>
		    <td>민음사</td>
		    <td class="bnon">풍자와 현실</td>
		  </tr>
		  <tr>
		    <td>5차시</td>
		    <td>7월</td>
		    <td colspan="4" class="bnon">2018년 원북원부산 도서 함께 읽기</td>
		  </tr>
		  <tr>
		    <td>6차시</td>
		    <td>8월</td>
		    <td>지금 독립하는 중입니다</td>
		    <td>하지현</td>
		    <td>창비</td>
		    <td class="bnon">스트레스와 불안</td>
		  </tr>
		  <tr>
		    <td>7차시</td>
		    <td>9월</td>
		    <td>사람은 왜 아플까</td>
		    <td>신근영</td>
		    <td>낮은산</td>
		    <td class="bnon">아픔과 고통의 이해</td>
		  </tr>
		  <tr>
		    <td>8차시</td>
		    <td>10월</td>
		    <td>공정무역 이야기</td>
		    <td>전국사회교사모임</td>
		    <td>살림출판사</td>
		    <td class="bnon">세계경제와 자본주의</td>
		  </tr>
		  <tr>
		    <td>9차시</td>
		    <td>11월</td>
		    <td>플라톤 영화관에 가다</td>
		    <td>조광제</td>
		    <td>탐</td>
		    <td class="bnon">철학과 삶</td>
		  </tr>
		  <tr>
		    <td>10차시</td>
		    <td>12월</td>
		    <td>그림으로 배우는 물리학</td>
		    <td>리처드 뮬러</td>
		    <td>살림출판사</td>
		    <td class="bnon">생활 속 과학상식</td>
		  </tr>
		  <tr>
		    <td>11차시</td>
		    <td>(2019)1월
		</td>
		    <td>리버보이</td>
		    <td>팀 보울러</td>
		    <td>놀</td>
		    <td class="bnon">상실을 통한 성장</td>
		  </tr>
		  <tr>
		    <td>12차시</td>
		    <td>(2019)2월</td>
		    <td colspan="4" class="bnon">독서토론 마무리</td>
		  </tr>
		  </tbody>
		</table>	
	</div>	
	

	<h3 class="tbul2">부모님께 드리는 말씀 </h3>
	<ul class="bul_type1">
		<li>학생이 모임에 오기 전에 꼭 책을 읽을 수 있도록 지도해 주십시오.</li>
		<li>도서관 소장도서로는 부족하오니, 주변을 통해서나 구입해서 읽혀 주십시오.</li>
		<li>모임에 빠지지 않도록 해주십시오.</li>
		<li>상기내용은 사정에 의해 변경될 수 있습니다. (변경 시에는 사전 공지)</li>
	</ul>	


		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>