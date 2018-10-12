<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>
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
				<!-- 			
CAT_NAME,  일반 프로그램 / 초딩 유아 -->

				<tr>
					<th class="c">프로그램 구분</th>
					<td>${edu.listu_gubun}</td>
				</tr>

				<tr>
					<th class="c">강좌명</th>
					<td colspan="2">${edu.listu_name}</td>
				</tr>
				<tr>
					<th class="c">강사명</th>
					<td>${edu.listu_teacher}</td>
				</tr>

				<tr>
					<th class="c">강의실</th>
					<td>${edu.listu_location}</td>
				</tr>

				<tr>
					<th class="c">강의대상</th>
					<td>${edu.listu_target}</td>
				</tr>

				<tr>
					<th class="c">강의일시</th>
					<td colspan="2">${edu.listu_studate}</td>
				</tr>
				<!-- 신청했을때 카운트  -->
				<tr>
					<th class="c">모집현황</th>
					<td>0명</td>
				</tr>
				<tr>
					<th class="c">모집정원</th>
					<td>${edu.listu_person}</td>
				</tr>
				<tr>
					<th class="c">모집기간</th>
					<td colspan="2">${edu.listu_regdate}</td>
				</tr>

				<tr>
					<th class="c">내용</th>
					<td colspan="2">${edu.listu_content}</td>
				</tr>
				<tr>
					<th class="c">상태</th>
					<c:choose>
						<c:when test="${edu.listu_end eq '1'}">
							<td colspan="2">진행중</td>
						</c:when>
						<c:otherwise>
							<td colspan="2">종료</td>
						</c:otherwise>
					</c:choose>

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
			<a href="/opprogram01/apply?m1=${m1}&m2=${m2}&m3=${m3}&listu_idx=${edu.listu_idx}&listu_code=${edu.listu_code}
			&listu_catcode=${edu.listu_catcode}&page=${page}&pagecount=${pagecount}&pagegrp=${pagegrp}" class="btn btn_board">수강신청</a> <a 
			href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${page}&pagecount=${pagecount}&pagegrp=${pagegrp}"
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