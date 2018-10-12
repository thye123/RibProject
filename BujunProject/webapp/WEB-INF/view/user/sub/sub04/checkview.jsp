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
.board_readWrap > b {
    display: inline-block;
    margin-top: 19px;
    margin-bottom: 19px;
}
.ingpro{
	color: blue;
}

</style>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>평생교육</li>
		<li>프로그램신청</li>
		<li>신청내역조회</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

	<div class="sub_tit">${clu_name}</div>

	<!-- content 시작 -->

		<!-- 금니 피셜 평생 교육 신청 내용끝  -->

				<div class="board_readWrap">
				<b>${liap_apname}님이 신청한 내역은 다음과같습니다.</b>
				<table class="board_read">
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 30%;"> <!-- 55%->30%로 바꿈  -->
					</colgroup>
					<thead>
						<tr>
							<th class="c">신청과목</th>
							<th class="c">신청장소</th>
							<th class="c">수강시작일</th>
							<th class="c">등록일자</th>
							<th class="c">진행여부</th>
						</tr>
					
					<tbody>
						<c:forEach var="vo" items="${vo}">
							<tr>
								<td class="tds">${vo.listu_name}</td>
								<td class="tds">${vo.listu_location}</td>
								<td class="tds">${vo.listu_studate}</td>
								<td class="tds">${vo.liap_regdate}</td>
								<td>
						
							<c:choose>
							
							    <c:when test="${vo.listu_end eq '1'}">
							       <b class="ingpro">진행중입니다.</b>
							    </c:when>
							
							    <c:when test="${vo.listu_end eq '2'}">
							         <b>종료되었습니다.</b>
							    </c:when>
						
							</c:choose>

								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

	<!-- //content 끝 -->
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>