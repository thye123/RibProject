<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu01.jsp"%>
<style>
/*부전도서관 글쓰기 긁어옴 (게시판 하단 글쓰기 버튼)*/
.btn_set {
	padding: 10px 0;
	overflow: hidden;
}

a.btn_board {
	background: #696969;
	color: #fff;
	padding: 8px 25px;
}
</style>


<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>평생교육</li>
		<li>평생학습</li>
		<li>프로그램신청</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">프로그램신청</div>

	<!-- content 시작 -->

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">

		<table class="board_read">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 55%;">
				<col>
			</colgroup>

			<tbody>

				<tr>
					<th class="c">프로그램 구분</th>
					<td>문화강좌</td>
				</tr>

				<tr>
					<th class="c">강좌명</th>
					<td colspan="2">금융 경제 A에서 Z까지 Ⅱ</td>
				</tr>
				<tr>
					<th class="c">강사명</th>
					<td>한국예탁결제원 지원 금융전문강사</td>
				</tr>

				<tr>
					<th class="c">강의실</th>
					<td>2층 문화교실</td>
				</tr>

				<tr>
					<th class="c">강의대상</th>
					<td>재테크에 관심있는 성인 30명</td>
				</tr>


				<tr>
					<th class="c">강의일시</th>
					<td colspan="2">10~12월(10/25시작) 2,4주 목요일 총5회 (10/25, 11/8,
						11/22, 12/13, 12/27)</td>
				</tr>

				<tr>
					<th class="c">모집현황</th>
					<td>0명</td>
				</tr>
				<tr>
					<th class="c">모집정원</th>
					<td>30명</td>
				</tr>
				<tr>
					<th class="c">모집기간</th>
					<td colspan="2">2018. 10 . 10 09시 ~ 2018. 10 . 18 18시</td>
				</tr>
				<tr>
					<th class="c">수강료</th>
					<td colspan="2">0원</td>
				</tr>

				<tr>
					<th class="c">내용</th>
					<td colspan="2">부전도서관 특성화 사업의 일환으로 부산국제금융센터에 위치한 한국예탁결제원에서
						지원하는 금융 경제 프로그램입니다.<br /> 많은 신청바랍니다.<br /> 1. 프로그램명 : (부전도서관과
						한국예탁결제원이 함께하는) 금융 경제 A에서 Z까지 Ⅱ<br /> 2. 운영대상 : 재테크에 관심있는 성인 30명<br />
						3. 운영일시 : 2018년 10~12월 2, 4주 목요일 10:00~12:00<br /> 총 5회(10월 25일,
						11월 8일, 11월 22일, 12월 13일, 12월 27일)<br /> 4. 프로그램 개요 : 한국예탁결제원과
						연계하여 금융독서 모임과 금융특강을 결합한 형태로 운영<br /> 5. 강사: 한국예탁결제원 지원 금융교육전문강사
						(강사프로필 참조)<br /> 6. 장소 : 부전도서관 2층 문화교실<br /> 7. 신청기간 : 2018. 10.
						10.(수)~10. 18.(목)<br /> 8. 신청방법 : 부전도서관 홈페이지 접수<br />
					</td>
				</tr>

				<tr>
					<th class="c">상태</th>
					<td colspan="2">준비중</td>
				</tr>
				<tr>
					<th class="c">첨부파일</th>
					<td colspan="2">20181005134529.pdf</td>
				</tr>
			</tbody>
		</table>
		<!-- //게시판테이블(리스트) -->
		<!-- 버튼 들어간다 (수강 신청  / 목록으로 ) -->
		<div class="btn_set r">
			<a href="#" class="btn btn_board">수강신청</a> <a href="#"
				class="btn btn_board">목록으로</a>
		</div>

		<!-- //content 끝 -->
	</div>

</div>

</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>