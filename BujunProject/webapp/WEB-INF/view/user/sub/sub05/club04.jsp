<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp" %>   

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
		<li>책마중</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">책마중</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon13"></span>
			<b>부전도서관 독서동아리</b>
			<p>책읽기와 글쓰기에 관심이 있는 어린이, 청소년, 일반인들이 모여 읽은 책에 대해여 함께 이야기하고 서로의 생각과 의견을 나누는 모임으로 친목도모와 더불어 보다 지속적이고 체계적인 독서활동을 통하여 폭넓은 사고와 창의력을 키울 수 있으며, 책과 보다 친해질 수 있는 기회를 제공합니다.</p>
			<div class="l mg_t10">
			<a href="/club01/CluBoard?clb_clucode=CUS0004&page=1&pagecount=10&pagegrp=1&m1=05&m2=03&m3=04" class="btn_con btn_link">독서동아리게시판</a>
			<c:choose>
				<c:when test="${sessionScope.mem_id == 'ADMIN'}">
					<script>
						onload = function(){
							var stateCondition = document.getElementById("stateCondition");
							stateCondition.addEventListener("click", function(){
								location.href = "/club01/joinList?m1=05&m2=03&m3=04&page_num=1&page_grp=1";
							});
						}
					</script>
					<a target="_blank" class="btn_con btn_down" id="stateCondition">신청 현황 보기</a>
				</c:when>
				<c:otherwise>
					<script>
						 window.onload=function(){
								var btn_con = document.getElementById('minClub');
								btn_con.onclick = function() {
									window.open("/club01/joinClub?m1=05&m2=03&m3=04",
									'a', 'height=450, width=400');
								}
						 }
					</script>
					<a target="_blank" class="btn_con btn_down" id="minClub">신청 하기</a>
				</c:otherwise>
			</c:choose>

	</div>	
		</div>
	</div>
	
	<h2 class="tbul1">책마중독서회</h2>	
	<h3 class="tbul2">대상 </h3>
	<p class="mg_b30">직장인 및 일반인</p>	

	<h3 class="tbul2">토론일시</h3>
	<p class="mg_b30">매월 넷째주 금요일 오후7시</p>		
	
	<h3 class="tbul2">회원모집</h3>
	<p class="mg_b30">연중(결원시 수시 모집) </p>
		
	<h3 class="tbul2">참여문의</h3>
	<p class="mg_b30">802-3096(내선 4번) <br />*2018년 1월부터 부산직장독서회는 책마중독서회로 새롭게 거듭나겠습니다. </p>	
	
	
	<h3 class="tbul2">2018년 책마중독서회 토론도서목록</h3>
	<div class="auto_box mg_b20">			
		<table class="tb_board">
		 <caption>2017년 책마중독서회 토론도서목록</caption>
		  <thead>
		  <tr>
		    <th scope="col">월<span class="nanum">(月)</span></th>
		    <th scope="col">책이름</th>
		    <th scope="col">저자</th>
		    <th scope="col">출판사</th>
			<th scope="col" class="bnon">출판년</th>
		  </tr>
		  </thead>
		  <tbody>
		  <tr>
		    <td>1월</td>
		    <td>행복한 사람들은 책을 읽으며 커피를 마신다</td>
		    <td>아녜스 마르탱 뤼강</td>
		    <td>문학세계사</td>
		    <td class="bnon">2014</td>
		  </tr>
		  <tr>
		    <td>2월</td>
		    <td>도시는 무엇으로 사는가</td>
		    <td>유현준</td>
		    <td>을유문화사</td>
			 <td class="bnon">2015</td>
		  </tr>
		  <tr>
		    <td>3월</td>
		    <td>공자가 죽어야 나라가 산다</td>
		    <td>김경일</td>
		    <td>바다출판사</td>
			<td class="bnon">2013</td>
		  </tr>
		  <tr>
		    <td>4월</td>
		    <td>사랑의 기술</td>
		    <td>에리히 프롬</td>
		    <td>문예출판사</td>
			<td class="bnon">2006</td>
		  </tr>
		  <tr>
		    <td>5월</td>
		    <td>도덕의 두 얼굴</td>
		    <td>프란츠 M.부케티츠</td>
		    <td>사람의무늬</td>
		    <td class="bnon">2013</td>
		  </tr>
		  <tr>
		    <td>6월</td>
		    <td>자존감 수업</td>
		    <td>윤홍균</td>
		    <td>심플라이프</td>
			<td class="bnon">2016</td>
		  </tr>
		  <tr>
		    <td>7월</td>
		    <td>예감은 틀리지 않는다</td>
		    <td>줄리언 반스</td>
		    <td>다산책방</td>
			<td class="bnon">2012</td>
		  </tr>
		  <tr>
		    <td>8월</td>
		    <td>2018년 원북원부산 선정도서</td>
		    <td> </td>
		    <td> </td>
			<td class="bnon"> </td>
		  </tr>
		  <tr>
		    <td>9월</td>
		    <td>안티고네</td>
		    <td>소포클레스</td>
		    <td>새문사</td>
			<td class="bnon">2014</td>
		  </tr>
		  <tr>
		    <td>10월</td>
		    <td>장자</td>
		    <td>오강남 역</td>
		    <td>현암사</td>
			<td class="bnon">2003</td>
		  </tr>
		  <tr>
		    <td>11월</td>
		    <td>한국의 시 토론</td>
		    <td> </td>
		    <td> </td>
			<td class="bnon"> </td>
		  </tr>
		  <tr>
		    <td>12월</td>
		    <td>나를 보내지마</td>
		    <td>가즈오 이시구로</td>
		    <td>민음사</td>
			<td class="bnon">2009</td>
		  </tr>
		    </tbody>
		  </table>
	</div>	
	
	<p class="red">*위 내용은 사정에 따라 변동될 수 있습니다</p>



		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>