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
		<li>연속간행물실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">연속간행물실</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon7"></span>
			<b>연속간행물실</b>
			<p>국내 신문 33종을 비롯하여 지역신문, 각 지역 대학학보, 특수신문 등을 열람하실 수 있습니다.<br /> 교양 잡지 126종과 기관 및 단체 발행 기증잡지 552여종이 비치되어 있으며, 각 기업체의 사보도 비치되어 있습니다.</p>
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
						<th scope="col">구분</th>
						<th scope="col">월~토</th>
						<th scope="col">일요일</th>
						<th scope="col" class="bnon">휴관일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>연속간행물실</td>
						<td>09:00~18:00</td>
						<td>09:00~17:00</td>
						<td class="bnon">셋째, 넷째 월요일<br />정부지정공휴일</td>
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
	
	<div class="auto_box mg_b10">			
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">구입</th>
					<th scope="col">기증</th>
					<th scope="col" class="bnon">계</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>신문</td>
				<td>22</td>
				<td>20</td>
				<td class="bnon">42</td>
			</tr>
			<tr>
				<td>잡지</td>
				<td>66</td>
				<td>149</td>
				<td class="bnon">215</td>
			</tr>
			</tbody>
		</table>	
	</div>
	
	<div class="r mg_b40"><a class="con_bblue" href="/datalist?m1=03&m2=07">구입 잡지 / 신문 목록 바로가기</a></div>



	<h2 class="tbul1">이용안내</h2>	
	<ul class="bul_type1 mg_b40">
		<li>신문, 잡지, 논문 등을 자유로이 열람할 수 있으며 필요한 부분은 복사하실 수 있습니다.(단, 저작권법에 의한 부분복사만 가능)</li>
		<li>자료의 특성상 대출은 하지 않습니다.</li>
		<li>개인 소지품은 보관함에 보관 후 입실해 주십시오.</li>
	</ul>
	

	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>