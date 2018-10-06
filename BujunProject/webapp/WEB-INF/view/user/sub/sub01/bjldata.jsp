<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu01.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관소개</li>
		<li>시설현황/소장자료현황</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">시설현황/소장자료현황</div>
	
	
	<!-- content 시작 -->
	
	<div class="facilities_top bg_img1 mg_b40">
		<div>
			대지 및 건물
			<span>
				<ul>
					<li>대지면적&nbsp;&nbsp;: 4,112.1 (1,243.9) ㎡(평)</li>
					<li>건축연면적 : 2,704 (818) ㎡(평)</li>
					<li>건물내역
						<ul>
							<li>- 지하층 : 271.8 (82.2)</li>
							<li>- 1층 : 1,216.1(367.9)</li>
							<li>- 2층 : 1,216.1 (367.9)</li>
						</ul>
					</li>
				</ul>
			</span>
		</div>
		
	</div>	
	
	<h2 class="tbul1">층별배치도</h2>		
	<div class="img_original mg_b20">
	  <img src="${pageContext.request.contextPath}/resources/user/images/sub/map_01.jpg">
	  <a href="${pageContext.request.contextPath}/resources/user/images/sub/map_01.jpg">원본 이미지 보기</a>
	</div>
	
	
	<div class="img_original mg_b40">
	  <img src="${pageContext.request.contextPath}/resources/user/images/sub/map_02.jpg">
	  <a href="${pageContext.request.contextPath}/resources/user/images/sub/map_02.jpg">원본 이미지 보기</a>
	</div>
	
	
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
		    <th scope="col" colspan="2">구분</th>
		    <th scope="col">실별</th>
		    <th scope="col">면적(㎡)</th>
		    <th scope="col">좌석수</th>
		    <th scope="col" class="bnon">용도</th>
		  </tr>
		  </thead>
		  <tbody>
		  <tr>
		    <td rowspan="8">자료실<br>및<br>기타</td>
		    <td rowspan="3">1층</td>
		    <td>종합자료실</td>
		    <td>463.8</td>
		    <td>45</td>
		    <td class="l bnon">전주제의 일반도서 및 참고자료 </td>
		  </tr>
		  <tr>
		    <td>어린이실</td>
		    <td>151.2</td>
		    <td>32</td>
		    <td class="l bnon">아동도서, 백과사전, 아동잡지, 신문 등 </td>
		  </tr>
		  <tr>
		    <td>보존서고(1)(2)</td>
		    <td>243</td>
		    <td>&nbsp;</td>
		    <td class="l bnon">보존문서 및 자료 </td>
		  </tr>
		  <tr>
		    <td rowspan="5">2층</td>
		    <td>연속간행물실/<br />금융정보자료실</td>
		    <td>194.4</td>
		    <td>72</td>
		    <td class="l bnon">신문, 잡지, 법령집, 금융정보자료 </td>
		  </tr>
		  <tr>
		    <td>디지털자료실</td>
		    <td>229.2</td>
		    <td>35</td>
		    <td class="l bnon">인터넷, 국회원문, cd-rom, dvd 등 각종<br />전자자료</td>
		  </tr>
		  <tr>
		    <td>문화교실</td>
		    <td>49.7</td>
		    <td>42</td>
		    <td class="l bnon">교양강좌, 평생교육 </td>
		  </tr>
		  <tr>
		    <td>회의실</td>
		    <td>30.8</td>
		    <td>25</td>
		    <td class="l bnon">독서회, 간담회 등 회의공간 </td>
		  </tr>
		  <tr>
		    <td>보존서고(3)</td>
		    <td>24.7</td>
		    <td>&nbsp;</td>
		    <td class="l bnon">논문자료 서고 </td>
		  </tr>
		  <tr>
		    <td>열람실</td>
		    <td>2층</td>
		    <td>열람실</td>
		    <td>218.7</td>
		    <td>194</td>
		    <td class="l bnon">자율학습공간</td>
		  </tr>
		  <tr>
		    <td colspan="3">합 계</td>
		    <td>1605.5</td>
		    <td>445</td>
		    <td class="l bnon">&nbsp;</td>
		  </tr>
		  </tbody>
		</table>
			
	</div>
	
	
	<h2 class="tbul1">소장자료현황</h2>
	<h3 class="tbul2">소장자료현황</h3>
	<p>2018년 7월 1일 현재</p>
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">	
			<caption>도서 총장서수(2018년 7월 1일 현재)안내</caption>
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">총류</th>
					<th scope="col">철학</th>
					<th scope="col">종교</th>
					<th scope="col">사회과학</th>
					<th scope="col">자연과학</th>
					<th scope="col">기술과학</th>
					<th scope="col">예술</th>
					<th scope="col">언어</th>
					<th scope="col">문학</th>
					<th scope="col">역사</th>
					<th scope="col" class="bnon">계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>자료수</td>
					<td>13,148</td>
					<td>15,839</td>
					<td>9,715</td>
					<td>56,095</td>
					<td>12,248</td>
					<td>22,939</td>
					<td>14,238</td>
					<td>11,507</td>
					<td>97,867</td>
					<td>25,937</td>
					<td class="bnon">279,533</td>
				</tr>
			</tbody>
		</table>
	</div>	
	
	
	<h3 class="tbul2">비도서</h3>
	<p>2018년 7월 1일 현재</p>	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">		
			<caption>비도서 총장서수(2018년 7월 1일 현재)안내</caption>
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">총류</th>
					<th scope="col">철학</th>
					<th scope="col">종교</th>
					<th scope="col">사회과학</th>
					<th scope="col">자연과학</th>
					<th scope="col">기술과학</th>
					<th scope="col">예술</th>
					<th scope="col">언어</th>
					<th scope="col">문학</th>
					<th scope="col">역사</th>
					<th scope="col" class="bnon">계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>자료수</td>
					<td>397</td>
					<td>140</td>
					<td>113</td>
					<td>1,098</td>
					<td>479</td>
					<td>611</td>
					<td>7,766</td>
					<td>701</td>
					<td>903</td>
					<td>860</td>
					<td class="bnon">13,068</td>
				</tr>
			</tbody>
		</table>
	</div>	
	
	
	<h3 class="tbul2">작은도서관</h3>
	<p>2018년 7월 1일 현재</p>	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box">			
		<table class="tb_board">		
			<caption>작은도서관 총장서수(2018년 7월 1일 현재)안내</caption>
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">총류</th>
					<th scope="col">철학</th>
					<th scope="col">종교</th>
					<th scope="col">사회과학</th>
					<th scope="col">자연과학</th>
					<th scope="col">기술과학</th>
					<th scope="col">예술</th>
					<th scope="col">언어</th>
					<th scope="col">문학</th>
					<th scope="col">역사</th>
					<th scope="col" class="bnon">계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>자료수</td>
					<td>379</td>
					<td>778</td>
					<td>327</td>
					<td>1,629</td>
					<td>1,075</td>
					<td>949</td>
					<td>411</td>
					<td>261</td>
					<td>7,652</td>
					<td>1,356</td>
					<td class="bnon">14,817</td>
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