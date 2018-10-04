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
		<li>자료실소개</li>
		<li>어린이실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">어린이실</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon5"></span>
			<b>어린이실</b>
			<p>유아 및 어린이들이 편안하고 자유롭게 이용할 수 있는 공간으로 유아를 위한 다양한 그림책과 어린이용 도서, 신문, 잡지, 백과사전 등을 비치하고 있습니다.</p>
		</div>
	</div>
	

	<h2 class="tbul1 mg_b40">이용대상 : 중학생이상</h2>		

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
					<th>구분</th>
					<th>월~토</th>
					<th>일요일</th>
					<th class="bnon">휴관일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>어린이실</td>
					<td>09:00~18:00</td>
					<td>09:00~17:00</td>
					<td class="bnon">셋째,넷째 월요일<br />정부지정공휴일</td>
				</tr>
			</tbody>
		</table>		
	</div>



		
		
		
	<h2 class="tbul1">소장자료</h2>		
	
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
					<th>구분</th>
					<th>총류</th>
					<th>철학</th>
					<th>종교</th>
					<th>사회과학</th>
					<th>자연과학 </th>
					<th>기술과학</th>
					<th>예술</th>
					<th>언어</th>
					<th>문학</th>
					<th>역사</th>
					<th class="bnon">계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>자료수</td>
					<td>1,405</td>
					<td>1,146</td>
					<td>631</td>
					<td>3,915</td>
					<td>5,151</td>
					<td>1,285</td>
					<td>1,048</td>
					<td>1,297</td>
					<td>27,675</td>
					<td>4,746</td>
					<td class="bnon">48,299</td>
				</tr>
			</tbody>
		</table>	
	</div>



	<h2 class="tbul1">이용안내</h2>	
	<ul class="bul_type1 mg_b40">
		<li>검색용 컴퓨터를 이용하여 원하는 자료의 소장여부와 위치를 확인하실 수 있으며, 관내열람 및 관외대출, 필요한 자료를 복사할 수 있습니다. ( 단, 저작권법에 의해 부분 복사만 가능 )</li>
		<li>독서회원으로 가입하시면, 유아나 어린이책을 무료로 빌려드립니다. </li>
		<li>초등학생의 경우 보호자와 함께 등본이나 의료보험증을 가지고 도서관을 찾아 독서회원에 가입하시면, 이용증 발급과 함께 즉시 대출해드립니다. </li>
		<li>유아의 경우는 보호자가 신분증을 가지고 도서관을 방문, 독서회원에 가입하시면, 가입 후 즉시 대출해드립니다. </li>
	</ul>
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>