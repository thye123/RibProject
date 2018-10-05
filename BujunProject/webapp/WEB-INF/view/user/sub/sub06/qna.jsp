<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp"%>



<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>열린마당</li>
		<li>자주하는질문</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">자주하는질문</div>


	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon16"></span>
			<p>
				부전도서관의 이용자들이 자주하는 질문을 모았습니다.<br />이용자들의 편의를 위해 최선을 다하겠습니다.
			</p>
		</div>
	</div>

	<div id="mob_menu">

		<span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 도서관 휴관일은 언제 입니까? </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변" /> 매월
			3,4주 월요일과 국경일, 정부지정 공휴일입니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 도서관 위치와 교통편을 알려주세요.</a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" />
			<ul class="fr">
				<li class="sbul">[일반버스] 20, 169-1, 133, 138-1, 5-1, 10, 29, 43,
					52, 57, 80, 111</li>
				<li class="sbul">[도시철도] 도시철도 1,2호선 서면역하차 2,4,6,8,10번출구(도보10분)</li>
				<li class="sbul">[주 소] 부산광역시 부산진구 동천로 79 (우) 47292 * 자세한 내용은
					홈페이지의 도서관오시는 길을 참고하여 주시기 바랍니다.</li>
			</ul>
			<p class="clr"></p>
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 자료실 이용시간은 어떻게 되나요?</a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" />
			<table class="tbl_basic fr" summary="자료실 이용시간">
				<caption class="abt">자료실 이용시간</caption>
				<thead>
					<tr>
						<th>구 분</th>
						<th>화요일~금요일</th>
						<th>월/토요일</th>
						<th>일요일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">종합자료실</td>
						<td align="center">09:00 ~ 22:00</td>
						<td rowspan="4" align="center">09:00 ~ 18:00</td>
						<td rowspan="4" align="center">09:00 ~ 17:00</td>
					</tr>
					<tr>
						<td align="center">연속간행물실<br /> 금융정보자료실
						</td>
						<td rowspan="2" align="center">09:00 ~ 18:00</td>
					</tr>
					<tr>
						<td align="center">디지털자료실</td>
					</tr>
					<tr>
						<td align="center">어린이실</td>
						<td align="center">09:00~18:00</td>
					</tr>
				</tbody>
			</table>
			<p class="clr"></p>
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 차량주차에 관하여 알고 싶습니다. </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 월(1,6) 화(2,7) 수(3,8) 목(4,9) 금(5,0) 차량 끝번호에 해당하는 요일은
			출입을 금하는 요일제를 시행하고 있으며, 주차시설이 매우 부족하므로 대중교통수단을 이용하시기 바랍니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 도서관 이용 관련 문의 전화번호는 어떻게
				되나요? </a></span> <span class="depth2"> <img src="/img/sub/btn_a.png"
			alt="답변" class="fl" />
			<table class="tbl_basic">
				<caption class="f_left h_20">대표전화번호는 802-5901번며, ARS를 이용하여
					각 실에 연결됩니다.</caption>
				<thead>
					<tr>
						<th>실 명</th>
						<th>업무내용</th>
						<th>내선번호</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>종합자료실</td>
						<td>도서대출 및 반납, 독서회원, 봉사활동 업무</td>
						<td align="center">1번</td>
					</tr>
					<tr>
						<td>어린이실</td>
						<td>어린이 도서, 어린이행사 관련업무</td>
						<td align="center">2번</td>
					</tr>
					<tr>
						<td>디지털자료실 및 연속간행물실</td>
						<td>컴퓨터이용, 신문, 잡지 관련업무</td>
						<td align="center">3번</td>
					</tr>
					<tr>
						<td>자료봉사과</td>
						<td>문화강좌 및 행사, 평생학습마을, 교육실습 관련</td>
						<td align="center">4번</td>
					</tr>
					<tr>
						<td>사서계</td>
						<td>도서구입, 희망도서, 기증도서 업무</td>
						<td align="center">5번</td>
					</tr>
					<tr>
						<td>총무과</td>
						<td>청사 시설 관리, 주차</td>
						<td align="center">6번</td>
					</tr>
				</tbody>
			</table>
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 열람실 좌석은 어떻게 되나요? </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 194석입니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 노트북을 이용할 수 있나요? 프린터 가능합니까?
		</a></span> <span class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 디지털 자료실 내에서 유.무선 노트북, 실외 등나무 휴게실에서 무선으로 이용 가능합니다만,
			프린터는 자료실내 PC를 이용하셔야 합니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 프린터를 이용할 수 있나요? </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 디지털자료실 전 좌석에서 프린터할 수 있습니다. 복사카드(3,000/장)로 프린터 가능하며,
			A4장당 50원, 흑백출력입니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 복사를 할 수 있습니까? </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 복사카드(3,000원/장)를 구입하여 복사합니다. 복사기는 1층 <종합자료실>에
			2대, 2층 <연속간행물실>에 1대 있으며, A4 1매 30원, B4 1매 40원씩 차감됩니다. </span> <span
			class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" /> <a
			href="#menu_st760" id="menu_st760"> 인터넷을 이용할 수 있습니까? </a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 디지털자료실에 좌석 예약 후 인터넷을 이용할 수 있습니다. 처음 이용하시는 경우는 1층
			종합자료실에서 <독서회원>가입 후, 2층 디지털자료실의 좌석예약PC에서 회원인증를 거친 후 사용할 수 있습니다.
			모든 좌석은 예약제로 운영하고 있습니다.<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;단,
			10분 이내로 이용 하실 경우는 자료실 입구의 빠른검색 PC를 이용할 수 있습니다. </span> <span class="depth1"><img
			src="/img/sub/btn_q.gif" alt="질문" /> <a href="#menu_st760"
			id="menu_st760"> 사진, 이력서 등 스캔은 가능한가요? </a></span> <span class="depth2">
			<img src="/img/sub/btn_a.png" alt="답변" class="fl" /> 전용좌석에서 스캔
			가능합니다. 스캔 후 개인저장매체를 이용해 저장하거나 개인 이메일로 발송하시면 됩니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 사물함은 있는지요? 어떻게 이용하나요?</a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 500원 동전 투입 후 개인소지품을 보관하였다가 퇴실시 반환 받을 수 있는 동전식 사물함이
			있습니다.
		</span> <span class="depth1"><img src="/img/sub/btn_q.gif" alt="질문" />
			<a href="#menu_st760" id="menu_st760"> 식당, 매점은 있습니까?</a></span> <span
			class="depth2"> <img src="/img/sub/btn_a.png" alt="답변"
			class="fl" /> 식당, 매점은 없지만, 지하1층에 식사를 할 수 있는 공간은 마련되어 있습니다.
		</span>


	</div>



	<!-- //content 끝 -->
</div>








</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>