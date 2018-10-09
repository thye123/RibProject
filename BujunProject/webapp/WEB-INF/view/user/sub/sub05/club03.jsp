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
		var btn_con = document.getElementById('btn_con');
		btn_con.onclick = function() {
			window.open("/club01/joinClub?cluapp_code=CUS0001",
			'a', 'width:100%; height=300px');
		}
 }
</script>


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>독서문화</li>
		<li>독서동아리</li>
		<li>이목</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">이목독서회</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon13"></span>
			<b>부전도서관 독서동아리</b>
			<p>책읽기와 글쓰기에 관심이 있는 어린이, 청소년, 일반인들이 모여 읽은 책에 대해여 함께 이야기하고 서로의 생각과 의견을 나누는 모임으로 친목도모와 더불어 보다 지속적이고 체계적인 독서활동을 통하여 폭넓은 사고와 창의력을 키울 수 있으며, 책과 보다 친해질 수 있는 기회를 제공합니다.</p>
			<div class="l mg_t10">
		<a href="/club01/CluBoard?clb_clucode=CUS0003&page=1&pagecount=10&pagegrp=1" class="btn_con btn_link">독서동아리게시판</a>
		<a href="" title="새창으로 열림" target="_blank" class="btn_con btn_down" id="btn_con">신청서 다운로드</a>

	</div>	
		</div>
	</div>
	
	<h2 class="tbul1">책넝쿨독서회</h2>	
	<h3 class="tbul2">대상 </h3>
	<p class="mg_b30">주부 및 일반</p>	

	<h3 class="tbul2">토론일시</h3>
	<p class="mg_b30">매월 둘째주 월요일 오전 11:00</p>		
	
	<h3 class="tbul2">회원모집</h3>
	<p class="mg_b30">연중 수시 </p>
		
	<h3 class="tbul2">참여문의</h3>
	<p class="mg_b30">802-3096(연결번호 4)  </p>	
	
	
	<h3 class="tbul2">2018년 이목독서토론회 토론도서목록 </h3>
	<div class="auto_box mg_b20">			
		<table class="tb_board">
		 <caption> 2018년 이목회 토론도서목록  </caption>
		  <thead>
		  <tr>
		    <th scope="col">월/일</th>
		    <th scope="col">책이름</th>
		    <th scope="col">지은이</th>
		    <th scope="col">출판사</th>
		    <th scope="col" class="bnon">출판년</th>
		  </tr>
		  </thead>
		  <tbody>
		  <tr>
				<td>1월</td>
				<td>오늘을 잡아라</td>
				<td>솔 벨로</td>
				<td>민음사</td>
				<td class="bnon">2008</td>
			</tr>
			<tr>
				<td>2</td>
				<td>나를 보내지 마</td>
				<td>가즈오 이시구로</td>
				<td>민음사</td>
				<td class="bnon">2009</td>
			</tr>
			<tr>
				<td>3</td>
				<td>브람스를 좋아하세요</td>
				<td>프랑수아르 사강</td>
				<td>범우사</td>
				<td class="bnon">2016</td>
			</tr>
			<tr>
				<td>4</td>
				<td>마티네의 끝에서</td>
				<td>히라노 게이치로</td>
				<td>아르테</td>
				<td class="bnon">2017</td>
			</tr>
			<tr>
				<td>5</td>
				<td>그랜드마더스</td>
				<td>도리스 레싱</td>
				<td>예담</td>
				<td class="bnon">2016</td>
			</tr>
			<tr>
				<td>6</td>
				<td>토마스 만[베니스에서의 죽음]</td>
				<td>토마스 만</td>
				<td>현대문학</td>
				<td class="bnon">2013</td>
			</tr>
			<tr>
				<td>7</td>
				<td>유리알 유희</td>
				<td>헤르만 헤세</td>
				<td>현대문학</td>
				<td class="bnon">2013</td>
			</tr>
			<tr>
				<td>8</td>
				<td>연인</td>
				<td>마르그리트 뒤라스</td>
				<td>민음사</td>
				<td class="bnon">2007</td>
			</tr>
			<tr>
				<td>9</td>
				<td>마치 잔칫날처럼</td>
				<td>고은</td>
				<td>창비</td>
				<td class="bnon">2012</td>
			</tr>
			<tr>
				<td>10</td>
				<td>리스본의 겨울</td>
				<td>안토니오 뮤노스 몰리나</td>
				<td>민음사</td>
				<td class="bnon">2009</td>
			</tr>
			<tr>
				<td>11</td>
				<td>지상의 양식</td>
				<td>앙드레 지드</td>
				<td>민음사</td>
				<td class="bnon">2007</td>
			</tr>
			<tr>
				<td>12</td>
				<td>축복 받은 집</td>
				<td>줌파 라히리</td>
				<td>마음산책</td>
				<td class="bnon">2013</td>
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