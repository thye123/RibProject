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
		<li>특성화(금융정보)자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">특성화(금융정보)자료실</div>
	
	
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon8"></span>
			<b>특성화(금융정보)자료실</b>
			<p>공공도서관 운영 활성화 및 정보구축에 유동성을 주어 도서관별로 합리적인 역할분담을 통한 자료수집을 위해 1998년 2월 부	산광역시교육청 주관으로 도서관별 특성화자료실을 운영하게 되었습니다.
			우리도서관은 도심의 지역적 특성(다수의 금융기관 소재)과 문현 금융단지가 인접하고 있어 금융정보 수요 증대에 따른 정보제공을 위해 금융정보자료실을 특성화 자료실로 운영하고 있습니다.</p>
		</div>
	</div>
	
	
	<div id="tab_depth01" class="w25">
		<ul>
			<li class="active"><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
			<li><a href="/finref02?m1=02&m2=02&m3=05">부산시공공도서관특성화</a></li>
			<li><a href="/finref03?m1=02&m2=02&m3=05">금융관련사이트</a></li>
			<li><a href="/finref04?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">특성화행사</a></li>
			<li><a href="/finref05?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">서평목록</a></li>
			<li><a href="/finref06?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">신문기사색인</a></li>
			<li><a href="/finref07?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">알짜·경제금융상식</a></li>
		</ul>
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
					<td>금융정보자료실</td>
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
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col" class="bnon">총 장서수</th>
				</tr>
			</thead>
				<tbody>
				<tr>
					<td>자료수</td>
					<td class="bnon">2,953</td>
				  </tr>
			</tbody>
		</table>
	</div>


	<h2 class="tbul1">이용안내</h2>	
	<ul class="bul_type1 mg_b40">
		<li>자료복사 및 전송서비스</li>
		<li>인터넷을 통한 금융 정보제공</li>
		<li>금융관련자료 홈페이지 탑재</li>
		<li>유관기관과 연계한 프로그램 운영</li>
	</ul>
	

	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>