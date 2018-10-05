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
		<li>디지털자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">디지털자료실</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon6"></span>
			<b>디지털자료실</b>
			<p>인터넷 정보검색, 문서편집, CD-ROM, DVD, Video Tape, 국회원문DB, 국립중앙도서관 원문DB, 스캐너 이용 등 다양한 정보를 이용할 수 있으며 좌석예약제로 운영하고 있습니다. 좌석예약은 디지털자료실 내 예약전용PC에서 가능합니다</p>
		</div>
	</div>
	

	<h2 class="tbul1 mg_b40">이용대상 : 중학생 이상</h2>		

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
					<th scope="col">일요일</th>
					<th scope="col" class="bnon">휴관일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td>디지털자료실</td>
				<td>09:00~18:00</td>
				<td>09:00~17:00</td>
				<td class="bnon">매월 3, 4주 월요일<br />정부지정공휴일</td>
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
					<th scope="col">비디오</th>
					<th scope="col"> CD-ROM </th>
					<th scope="col"> CD-음반 </th>
					<th scope="col"> DVD </th>
					<th scope="col"> 카세트테이프 </th>
					<th scope="col"> 오디오북 </th>
					<th scope="col" class="bnon"> 합계</th>
				</tr>
			</thead>
			<tbody>
		          <tr>
					<td>자료수</td>
					<td>1,195</td>
					<td>2,123</td>
					<td>175</td>
					<td>9,379</td>
					<td>48</td>
					<td>148</td>
					<td class="bnon">13,068</td>
				</tr>
			</tbody>
		</table>	
	</div>


	<h2 class="tbul1 mg_b20">코너별 제공기능</h2>	
	<h3 class="tbul2">온라인정보 이용코너</h3>	

	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	<div class="auto_box mg_b30">			
		<table class="tb_board2">
			<tbody>
			<tr>
				<th class="btop">인터넷<br />자료편집</th>
				<td class="btop2">23석</td>
				<td class="btop2">온라인정보 검색,CD-ROM, E-BOOK, 동영상, <br>문서편집 및 출력</td>
				<td class="btop2 bnon">MS office 2010<br />한글 2007</td>
			</tr>
		    <tr>
				<th>장애우전용</th>
				<td>1석</td>
				<td>인터넷,CD-ROM, E-BOOK, 동영상, 문서편집 및 출력</td>
				<td class="bnon">MS office 2010,<br />한글 2007</td>
			 </tr>
			 <tr>
				<th>원문DB<br>스캐너</th>
				<td>1석</td>
				<td>국가전자도서관원문 DB, 국회원문 DBCD-Net 이용 및 출력,스캐너, <br />좌석전용 프린터카드 리더기</td>
				<td class="bnon">MS office 2010,<br>한글 2007</td>
			  </tr>
		
			  <tr>
				  <th>노트북</th>
				  <td>5석</td>
				  <td>개인 노트북 이용<br />(무선 인터넷 가능)</td>
				  <td class="bnon">-</td>
			  </tr>
			</tbody>
		</table>	
	</div>	
	
	
	<h3 class="tbul2">멀티미디어자료 이용코너</h3>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	<div class="auto_box mg_b30">			
		<table class="tb_board2">
			<tbody>
				<tr>
					<th class="btop">DVD / VTR</th>
					<td class="btop2">5석</td>
					<td class="btop2 bnon">도서관 소장 DVD, 비디오테이프 등 영상자료 이용 <br />1인 1점 이용가능(PC와 별도로 이용가능)</td>
				</tr>
			</tbody>
		</table>	
	</div>	


<h3 class="tbul2">이용 안내 코너</h3>	

	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	<div class="auto_box mg_b30">
		<table class="tb_board2">
			<tbody>
			  <tr>
				<th class="btop2">프린터서버</th>
				<td class="btop2">1대</td>
				<td class="btop2 bnon">모든 PC에서 네트워크를 통해 출력,프린터 전용PC<br />(A4 : 장당 50원 / 프린터(복사)카드 : 1매 3,000원 ) 프린터 카드 리더기<br />
					<a href="/facility?m1=02&m2=05" class="con_bblue mg_t5" target="_blank">프린터 이용법 보기</a>
				</td>
			  </tr>
			  <tr>
				<th>빠른검색</th>
				<td>2대</td>
				<td class="bnon">로그인 없이 10분 이내 간편 이용 프린터 가능</td>
			  </tr>
			  <tr>
				<th>좌석예약</th>
				<td>2대</td>
				<td class="bnon">디지털 좌석예약 전용PC</td>
			  </tr>
			  <tr>
				<th>자료검색</th>
				<td>1대</td>
				<td class="bnon">DVD, CD-ROM 등 비도서 자료 검색 전용</td>
			  </tr>
			  <tr>
				<th>무선인터넷</th>
				<td>&nbsp;</td>
		 		<td class="bnon">무선인터넷구역 : 도서관 뜰 등나무 휴게실, 문화교실<br />
					<a href="/facility?m1=02&m2=05" class="con_bblue mg_t5" target="_blank">이용 상세보기</a>
				</td>
			  </tr>
			</tbody>
		</table>
	</div>
	
	
	<h2 class="tbul1 mg_b20">이용방법</h2>	
	<h3 class="tbul2">자료검색</h3>	
		
	<ul class="bul_type1 mg_b20">
		<li>도서관내 자료 검색PC에서 원하는 자료 검색</li>
    	<li>디지털자료실 내 DVD 검색 전용PC로 원하는 자료 검색 </li>
	</ul>
	
	<h3 class="tbul2">이용시간</h3>	
	<ul class="bul_type1 mg_b20">
		<li>온라인정보 이용코너 : 2시간(1인 1회 1시간 기본사용에 최대 2시간 사용)</li>
		<li>멀티미디어자료 이용코너 : 1인 1회 </li>
	</ul>
	
	<h3 class="tbul2">이용 방법</h3>	
	<ul class="bul_type1 mg_b20">
		<li>예약제로 모든 기기는 예약 후에 이용가능 합니다. <br />
			<div class="img_original mg_b40">
			  <img src="${pageContext.request.contextPath}/resources/user/images/sub/2102_img2.gif">
			  <a href="${pageContext.request.contextPath}/resources/user/images/sub/2102_img2.gif">원본 이미지 보기</a>
			</div>
		</li>
		<li>1인 1회 1시간 기본사용에, 1일 최대 2시간 사용할 수 있습니다.</li>
		<li>멀티미디어자료 이용은 안내데스크에서 대출받아 지정된 좌석에서 1일 1회, PC와 별도로 이용가능 합니다.</li>
		<li>예약시간 10분이 경과한 경우 예약이 자동 취소됩니다. </li>
	</ul>	
	
	<h3 class="tbul2">자료출력</h3>	
	<ul class="bul_type1 mg_b20">
		<li>대상 : 원문DB, 문서, WEB DB, 인터넷정보 등 PC출력 자료</li>
		<li>출력 방법 : 복사카드 사용(카드구매 : 1층 안내실, 1매당 3,000원)</li>
		<li>출력 요금 <br /> -원문DB : 1면당 50원＋저작권료 (판매용 1면당 5원, 전송 1파일당 20원/비매품 1면당 3원) 문서출력, 인터넷정보, WEB DB 등 : 1면당 50원</li>
		<li>모든 좌석에서 프린터를 이용할 수 있습니다.</li>
	</ul>	
	
	<h3 class="tbul2">도서관 보상금제도 안내</h3>	
	<ul class="bul_type1 mg_b20">
		<li>2004년 7월 1일부터 도서관에서 원문DB를 이용하는 경우 복사 비용과 별도로 소정의 저작권 보상금을 부과하도록 하는 제도(저작권법 제31조 )</li>
		<li>도서관 보상금이란 이용자가 지적재산권자의 허락없이 저작물을 이용하기위하여 문화관광부장관이 정한 저작재산권자단체(한국복사전송권관리센터 )에 공탁하는 보상금임.</li>
		<li>보상금 부과 기준
			<ul>
				<li>판매용 단행본/연속간행물:출력(1면당 6원)/전송(1파일당 25원)</li>
				<li>비매용 단행본/연속간행물 : 출력(1면당 3원) </li>
			</ul>
		</li>
	</ul>		
	
	<h3 class="tbul2">유의사항</h3>	
	<ul class="bul_type1 mg_b20">
		<li>모든 PC는 하드보안관이 설치되어 있으며, 재부팅 시 자료가 저장되지 않으므로 저장은 개인저장매체를 이용하시기 바랍니다.</li>
	    <li>게임, 불건전한 사이트 접속 등 용도로 이용 시 PC사용을 제한합니다.</li>
	    <li>개인정보유출에 주의하고, 사용종료 시 반드시 <로그아웃> 하시기 바랍니다.</li>
	    <li>커피, 생수, 음료 등 음식물을 반입할 수 없습니다.</li>
	</ul>		
		
		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>