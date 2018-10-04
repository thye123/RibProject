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
		<li>이용시간</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">이용시간</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1 mg_b40">
		<div class="inner">
			<span class="icon icon1"></span>
			<b>부전도서관 이용시간 </b>
			<p>부산광역시립 부전도서관에 오신것을 환영합니다. 부산광역시립 부전도서관의 이용시간을 소개합니다.</p>
		</div>
	</div>
	

	<h2 class="tbul1">휴관일</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">정기휴관일</th>
					<th scope="col" class="bnon">임시휴관일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				  <td>매월 3, 4주 월요일</td>
				  <td rowspan="2" class="bnon">기타 관장이 필요하다고 인정하는 날 </td>
				</tr>
				<tr>
				  <td>국경일, 정부지정공휴일</td>
				</tr>
			</tbody>
		</table>			
	</div>

	<h2 class="tbul1">이용시간</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">구 분</th>
					<th scope="col">월· 토요일 </th>
					<th scope="col">화~금요일 </th>
					<th scope="col" class="bnon">일요일 </th>
				</tr>
			</thead>
		   <tbody>
				<tr>
				  <td>종합자료실</td>
				  <td rowspan="4">09:00 ~ 18:00 </td>
				  <td>09:00 ~ 22:00 </td>
				  <td rowspan="4"  class="bnon">09:00 ~ 17:00 </td>
				</tr>
				<tr>
				  <td>연속간행물실<br />금융정보자료실</td>
				  <td rowspan="2" >09:00 ~ 18:00 </td>
				</tr>
				<tr>
				  <td>디지털자료실</td>
				</tr>
				<tr>
				  <td>어린이실</td>
				  <td>09:00 ~ 18:00</td>
				</tr>
				<tr>
				  <td>일반열람실</td>
				  <td colspan="3" class="bnon">07:00 ~ 23:00</td>
				</tr>
			</tbody>
		</table>			
	</div>
	
	
	
	<h2 class="tbul1">무인반납기 이용시간</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
			   <tr>
			     <th scope="col">요일</th>
			     <th scope="col">시간</th>
			     <th scope="col" class="bnon">장소</th>
			   </tr>
			</thead>
			<tbody>
				<tr>
				  <td>월, 토</td>
				  <td>18:00 ~ 23:00</td>
				  <td rowspan="4" class="bnon">어린이실 앞 복도</td>
				</tr>
				<tr>
					<td>화~금</td>
					<td>22:00 ~ 23:00</td>
				</tr>
				<tr>
					<td>일</td>
					<td>17:00 ~ 23:00</td>
				</tr>
				<tr>
					<td>휴관일</td>
					<td>07:00 ~ 19:00</td>
				</tr>
			</tbody>
		</table>				
	</div>	
	

	<h2 class="tbul1">부산광역시교육청 소속 공공도서관 정기 휴관일</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">지역구분</th>
					<th scope="col">매월 1, 2째 월요일 </th>
					<th scope="col">매월 3, 4째 월요일 </th>
					<th scope="col" class="bnon">매월 마지막주 월요일</th>
				</tr>
			</thead>
			<tbody>
			  <tr>
			    <td>중구, 서구</td>
			    <td>중앙, 사하도서관 </td>
			    <td>구덕도서관</td>
			    <td rowspan="3" class="bnon">시민도서관</td>
			  </tr>
			  <tr>
			    <td>금정구, 북구, 해운대구</td>
			    <td>반송, 구포도서관 </td>
			    <td>서동, 해운대도서관 </td>
			  </tr>
			  <tr>
			   <td>동래구, 부산진구, 연제구</td>
			    <td>명장도서관</td>
			    <td>연산, 부전도서관</td>
			  </tr>
			  <tr>
			    <td>공통</td>
			    <td colspan="3" class="bnon">국경일, 정부 지정 공휴일 </td>
			  </tr>
			</tbody>
		</table>				
	</div>		
	
	

	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>