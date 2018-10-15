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
		var btn_con = document.getElementById('aaaa');
		var popupX = ((window.screen.width / 2) - (200 / 2));
		var popupY= ((window.screen.height /2) - (300 / 2));

		btn_con.onclick = function(e) {
		 e.preventDefault();
		 window.open('/club01/joinClub?cluapp_code=CUS0001', 
			'joinClub', 'status=no, height=450, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		}
 }
 
</script>

			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>독서문화</li>
		<li>독서동아리</li>
		<li>찬우물</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">찬우물</div>
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon13"></span>
			<b>부전도서관 독서동아리</b>
			<p>책읽기와 글쓰기에 관심이 있는 어린이, 청소년, 일반인들이 모여 읽은 책에 대해여 함께 이야기하고 서로의 생각과 의견을 나누는 모임으로 친목도모와 더불어 보다 지속적이고 체계적인 독서활동을 통하여 폭넓은 사고와 창의력을 키울 수 있으며, 책과 보다 친해질 수 있는 기회를 제공합니다.</p>
			<div class="l mg_t10">
		<a href="/club01/CluBoard?clb_clucode=CUS0001&page=1&pagecount=10&pagegrp=1" class="btn_con btn_link">독서동아리게시판</a>
		<a target="_blank" class="btn_con btn_down" id="aaaa">신청 하기</a>
	<!-- href="" title="새창으로 열림"  -->
	</div>	
		</div>
	</div>
	
	<h2 class="tbul1">찬우물독서회</h2>	
	<h3 class="tbul2">대상</h3>
	<p class="mg_b30">초등 4~6학년</p>	

	<h3 class="tbul2">토론일시</h3>
	<p class="mg_b30">매월 둘째주 또는 넷째주 일요일 오후 2시</p>		
	
	<h3 class="tbul2">담당사서</h3>
	<p class="mg_b30">어린이실 사서 </p>	

	<h3 class="tbul2">목표</h3>
	<ul class="bul_type1 mg_b30">
		<li>책읽기와 토론을 통해 나 자신을 더 잘 이해하도록 돕는다.</li>
		<li>자신의 감정을 올바로 이해하고, 조절하는 방법을 찾는다.</li>
		<li>자신에 대한 긍정적 인식을 심어준다.</li>
		<li>나 자신의 이해를 바탕으로 가족, 친구, 선생님 등 다른 사람도 더 잘 이해할 수 있도록 한다.</li>
		<li>성장과정에서 겪을 수 있는 여러 가지 상황에 대처할 수 있도록 돕는다.</li>
	</ul>	
	
	<h3 class="tbul2">2018년 찬우물 독서토론회 운영계획서</h3>
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b30">			
		<table class="tb_board">
		<caption>2017년 찬우물 독서토론회 운영계획서</caption>
		<thead>
		<tr>
		    <th scope="col">차시</th>
		    <th scope="col">날짜</th>
		    <th scope="col">도서명</th>
		    <th scope="col">저자</th>
		    <th scope="col">출판사</th>
		    <th scope="col">년도</th>
		    <th scope="col"  class="bnon">주제</th>
		  </tr>
			  </thead>
			  <tbody>
		   <tr>
			    <td>1차시</td>
			    <td>3월</td>
			    <td colspan="5"  class="bnon">오리엔테이션 및 자기소개</td>
		  </tr>
		  <tr>
		    <td>2차시</td>
		    <td>4월</td>
		    <td>웃지 않는 병 (2018년 1월 이달의 책)</td>
		    <td>정연철</td>
		    <td>휴먼어린이</td>
		    <td>2017</td>
		    <td class="bnon">가족</td>
		  </tr>
		  <tr>
		    <td>3차시</td>
		    <td>5월</td>
		    <td>방방곡곡 한국지리여행<br>(2018년 2월 이달의 책)</td>
		    <td>김은하</td>
		    <td>봄나무</td>
		    <td>2017</td>
		    <td class="bnon">지리</td>
		  </tr>
		  <tr>
		    <td>4차시</td>
		    <td>6월</td>
		    <td colspan="5" class="bnon">2018년 3월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>5차시</td>
		    <td>7월</td>
		    <td colspan="5" class="bnon">2018년 4월 이달의 책</td> 
		  </tr>
		  <tr>
		    <td>6차시</td>
		    <td>8월</td>
		    <td colspan="5" class="bnon">2018년 5월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>7차시</td>
		    <td>9월</td>
		   <td colspan="5" class="bnon">2018년 6월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>8차시</td>
		    <td>10월</td>
		    <td colspan="5" class="bnon">2018년 7월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>9차시</td>
		    <td>11월</td>
		    <td colspan="5" class="bnon">2018년 8월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>10차시</td>
		    <td>12월</td>
		    <td colspan="5" class="bnon">2018년 9월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>11차시</td>
		    <td>2019년<br>1월</td>
		    <td colspan="5" class="bnon">2018년 10월 이달의 책</td>
		  </tr>
		  <tr>
		    <td>12차시</td>
		    <td>2019년<br>2월</td>
		    <td colspan="5" class="bnon">2018년 11월 이달의 책</td>
  			</tr>
	 	 </tbody>
		</table>	
	</div>	
	

	<h3 class="tbul2">부모님께 드리는 말씀 </h3>
	<ul class="bul_type1 mg_b20">
		<li>학생이 모임에 오기 전에 꼭 책을 읽을 수 있도록 지도해 주십시오.</li>
		<li>도서관 소장도서로는 부족하오니, 주변을 통해서나 구입해서 읽혀 주십시오.</li>
		<li>모임에 빠지지 않도록 해주십시오.</li>
		<li>상기내용은 사정에 의해 변경될 수 있습니다. (변경 시에는 사전 공지)</li>
	</ul>	

	<p class="red">※ 찬우물은 순수 우리말로서 맑은 샘물이 솟아나는 것처럼 온 세상을 맑게 해준다는 뜻입니다.</p>

	
	
		
		
<!-- //content 끝 -->
</div>
		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>