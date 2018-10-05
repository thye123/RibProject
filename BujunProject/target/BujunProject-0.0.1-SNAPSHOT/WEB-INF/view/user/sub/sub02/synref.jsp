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
		<li>종합자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">종합자료실</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon4"></span>
			<b>종합자료실</b>
			<p>총류, 철학, 종교, 사회과학, 순수과학, 기술과학,예술, 언어, 문학, 역사 등 주제분야의 일반도서 및 참고도서 등을 개가제로 운영하고 있으며, 자료의 대출 반납 및 다양한 정보를 제공합니다.</p>
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
					<th scope="col">월, 토</th>
					<th scope="col">화~금</th>
					<th scope="col">일요일</th>
					<th scope="col" class="bnon">휴관일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>종합자료실</td>
					<td>09:00~18:00</td>
					<td>09:00~22:00</td>
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
					<td>책수</td>
					<td>11,739</td>
					<td>14,678</td>
					<td>9,081</td>
					<td>49,322</td>
					<td>7,097</td>
					<td>21,608</td>
					<td>13,186</td>
					<td>10,206</td>
					<td>70,176</td>
					<td>21,188</td>
					<td class="bnon">228,281</td>
				</tr>
			</tbody>
		</table>		
	</div>

	<h2 class="tbul1">이용안내</h2>	
	<ul class="bul_type1 mg_b40">
		<li>검색용 컴퓨터를 이용하여 원하는 자료의 소장여부와 위치를 확인하실 수 있으며, 관내열람 및 관외대출, 필요한 자료를 복사할 수 있습니다. ( 단, 저작권법에 의해 부분 복사만 가능 )</li>
		<li>서고 도서는 업무마감 10분 전까지 담당자에게 요청하시면 이용하실 수 있습니다. </li>
	</ul>
	
	
	<h2 class="tbul1">이용코너</h2>	
	<h3 class="tbul2">안내데스크</h3>	
	<p class="mg_b20">독서회원가입 및 도서대출은 물론 독서상담, 독서회운영 등 독서권장을 위한 다양한 서비스를 제공합니다.</p>
	
	<h3 class="tbul2">자동대출반납기(3대) / 무인반납기(1대) </h3>	
	<p class="mg_b20">이용증을 지참하여 무인 대출/반납기를 이용, 직접 도서를 대출처리하고, 반납할 수 있습니다.</p>	
	
	<h3 class="tbul2">자료검색 PC(4대)</h3>	
	<p class="mg_b20">자료검색PC를 이용하여 직접 필요한 자료의 도서관 소장여부 및 위치, 대출여부를 확인할 수 있습니다.</p>	
	
	<h3 class="tbul2">복사기(2대)</h3>	
	<p class="mg_b5">복사카드를 구입하여 직접 필요한 자료를 복사할 수 있습니다. 단, 저작권법에 위배되지 않도록 부분복사해야 합니다.</p>
	<ul class="bul_type1">
		<li>복사카드 구입처 : 안내실(1층), 3,000원/개</li>
		<li>복사요금 : A4/장 30원, B4/장 40원</li>
	</ul>	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>