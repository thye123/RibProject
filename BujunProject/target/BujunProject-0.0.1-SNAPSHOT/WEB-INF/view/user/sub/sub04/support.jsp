<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>평생교육</li>
		<li>지식정보취약계층 지원</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">지식정보취약계층 지원</div>
	
	
	<!-- content 시작 -->

	
	<h2 class="tbul1">2018년 하반기 찾아가는 평생학습프로그램 운영 내용</h2>		

	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box">			
		<table class="tb_board">
		<thead>
		  <tr>
			<th scope="col">연번</th>
			<th scope="col">프로그램명</th>
			<th scope="col">일시</th>
			<th scope="col">운영기간</th>
			<th scope="col">횟수</th>
			<th scope="col">대상</th>
			<th scope="col">내용</th>
			<th scope="col" class="bnon">장소</th>
		  </tr>
		</thead>
		<tbody>
		<tr>
			<td>1</td>
			<td>스토리텔링 미술</td>
			<td>매주 월 13:00~15:00</td>
			<td>7월 16일<br />~8월 27일</td>
			<td>7</td>
			<td>초등 15명</td>
			<td>다양한 접근법을 통한 통합미술</td>
			<td class="bnon">행복한공부방센터</td>
		 </tr>
		 <tr>
			<td>2</td>
			<td>어르신 종이접기</td>
			<td>매주 월 14:20~15:20</td>
			<td>9월 3일<br />~11월 12일</td>
			<td>10</td>
			<td>어르신 30명</td>
			<td>성취감을 기르는 종이접기</td>
			<td class="bnon">동부산주간 보호센터</td>
		 </tr> 
		  <tr>
			<td>3</td>
			<td>동화구연 놀이터</td>
			<td>매주 목 10:00~11:00</td>
			<td>9월 6일<br />~10월 25일</td>
			<td>8</td>
			<td>유아 4~7세 20명</td>
			<td>다양한 주제로 만나는 동화세상</td>
			<td rowspan="2" class="bnon">꿈터어린이집
			</td>
		 </tr> 
		 <tr>
			<td>4</td>
			<td>동화구연 생각터</td>
			<td>매주 목 11:00~12:00</td>
			<td>9월 6일<br />~10월 25일</td>
			<td>8</td>
			<td>유아 4~7세<br />(다문화포함) 20명</td>
			<td>탐구심을 기르는 동화세상</td>
		 </tr> 
		  <tr>
			<td>5</td>
			<td>책 속에서 나의 힘을 찾다</td>
			<td>매주 목 14:00~16:00</td>
			<td>9월 6일<br />~11월 15일</td>
			<td>11</td>
			<td>센터 회원 20명</td>
			<td>삶과 미래를 설계하는 독서치료</td>
			<td class="bnon">한미래사회<br />복귀센터</td>
		 </tr>
		  </tbody>
		</table>			
	</div>
	<p>* 도서관 사정에 따라 프로그램이 변경될 수 있습니다. </p>

	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>