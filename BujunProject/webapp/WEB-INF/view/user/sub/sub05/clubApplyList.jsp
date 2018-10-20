<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp"%>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서문화</li>
		<li>독서동아리</li>
		<li class="subTitle">찬우물 가입 신청 현황</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	<c:set var="endnum" 	value="${paging.end_page}"></c:set>
	<c:set var="startnum" 	value="${paging.start_page}"></c:set>
	<c:set var="page_grp" 	value="${paging.page_group}"></c:set>
	<c:set var="tot_btcnt" 	value="${paging.tot_btcnt}"></c:set>

	<!-- title -->
	<div class="sub_tit">찬우물 가입 신청 현황</div>

	<!-- content 시작 -->
	<div class="boardSearch">
		<div class="board_page">
			<c:choose>
				<c:when test="${tot_btcnt == 0}">
					<span class="p02">Total</span>
					<span class="p01"> : ${tot_cnt}</span>
					(<span class="p01">0</span>/${tot_btcnt}페이지)
				</c:when>
				<c:otherwise>
					<span class="p02">Total</span>
					<span class="p01"> : ${tot_cnt}</span>
					(<span class="p01">${page_num}</span>/${tot_btcnt}페이지)				
				</c:otherwise>
			</c:choose>
		</div> 
		<form action="/study/myapplysearch?m1=${m1}&m2=${m2}&m3=${m3}&page_num=1&page_grp=1&mem=${sessionScope.rimem_num}" name="search" method="post" id="searchForm">
			<div class="board_sch">
				<select name="keyfield" id="keyfield" title="검색어">
					<option value="">승인여부</option>
					<option value="2">승인</option>
					<option value="1">미승인</option>
				</select> 
				<input type="text" name="keyword" id="keyword" title="검색어 입력" value="" placeholder="검색어를 입력하세요" /> 
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
			</div>
		</form>
	</div>

	<!-- table -->


	<table class="tb_board">
		<thead>
			<tr>
				<th width="150">번호</th>
				<th width="300px">신청자명</th>
				<th width="229px">연락처</th>
				<th width="199px" class="bnon">신청일자</th>
				<th width="150">승인</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${keyfield != null}">
					<c:forEach var="aList" items="${cluAppList}">
						<tr>
							<td style="text-align: center;">${aList.cluapp_idx}</td>
							<td>${aList.cluapp_appname}</td>
							<td>${aList.cluapp_appphone}</td>
							<td class="bnon">${aList.cluapp_appdate}</td>
							<c:choose>
								<c:when test="${aList.cluapp_appduring eq 2}">
									<td>승인완료</td>
								</c:when>
								<c:otherwise>
									<td><a href="/club/accept?m1=${m1}&m2=${m2}&m3=${m3}&cluap_code=${clu_code}&cluap_idx=${aList.cluapp_idx}">승인</a></td>										
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>		
				</c:when>
				<c:otherwise>
					<c:forEach var="aList" items="${cluAppList}">
						<tr>
							<td style="text-align: center;">${aList.cluapp_idx}</td>
							<td>${aList.cluapp_appname}</td>
							<td>${aList.cluapp_appphone}</td>
							<td class="bnon">${aList.cluapp_appdate}</td>
							<c:choose>
								<c:when test="${aList.cluapp_appduring eq 2}">
									<td>승인완료</td>
								</c:when>
								<c:otherwise>
									<td><a href="/club/accept?m1=${m1}&m2=${m2}&m3=${m3}&cluap_code=${clu_code}&cluap_idx=${aList.cluapp_idx}">승인</a></td>										
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>		
				</c:otherwise>
			</c:choose>
		</tbody>	
	</table>
	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="detail" value="뒤로가기" style="border:0;">
	</div>
	<!-- //table -->

	<!-- //게시판테이블(리스트) -->


	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<!-- 이전 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num-10}&page_grp=${page_grp-1}&mem=${sessionScope.rimem_num}"><span>이전</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/study/appList?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num-10}&page_grp=${page_grp-1}&mem=${sessionScope.rimem_num}"><span>이전</span></a>
					</c:if>
				</c:otherwise>
			</c:choose>		
			
			<!-- 페이징 -->	
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&m3=${m3}&page_num=${Paging}&page_grp=${page_grp}&mem=${sessionScope.rimem_num}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:when>
				<c:otherwise>
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/study/appList?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${Paging}&page_grp=${page_grp}&mem=${sessionScope.rimem_num}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:otherwise>
			</c:choose>
			
			<!-- 다음 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num+10}&page_grp=${page_grp+1}&mem=${sessionScope.rimem_num}"><span>다음</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/study/appList?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num+10}&page_grp=${page_grp+1}&mem=${sessionScope.rimem_num}"><span>다음</span></a>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- //페이징 -->

	<!-- //content 끝 -->
</div>








</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>