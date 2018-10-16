<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu07.jsp"%>

<script>
	onload = function() {
		var subTitle = document.getElementsByClassName("subTitle");
		var m1 = ${m1};
		var m2 = ${m2};
		var m3 = ${m3};
		
		var code = "${ad_code}";
		if (code == "CAT0016" || (m1 == 07 && m2 == 01 && m3 == 03)) {
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			var coment = document.createTextNode("정보목록");
			subTitle[0].appendChild(coment);
		} else {
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			var coment = document.createTextNode("사전공표대상공개");
			subTitle[0].appendChild(coment);
		}
		
		var searchForm = document.getElementById("searchForm");
		
		switch (ad_code) {
		case "CAT0016":
			searchForm.setAttribute("action", "/info03/search?m1=07&m2=01&m3=03&page_num=1&page_grp=1");
			break;
		case "CAT0017":
			searchForm.setAttribute("action", "/info03/search?m1=07&m2=01&m3=05&page_num=1&page_grp=1");			
			break;
		}
	}
</script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>정보공개</li>
		<li class="subTitle">정보목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	<c:set var="endnum" value="${paging.end_page}"></c:set>
	<c:set var="startnum" value="${paging.start_page}"></c:set>
	<c:set var="page_grp" value="${paging.page_group}"></c:set>
	<c:set var="tot_btcnt" value="${paging.tot_btcnt}"></c:set>

	<!-- title -->
	<div class="sub_tit">정보공개</div>

	<!-- content 시작 -->
	<div class="boardSearch">
		<div class="board_page">
			<span class="p02">Total</span>
			<span class="p01"> : ${tot_cnt}</span>
			(<span class="p01">${page_num}</span>/${endnum}페이지)
		</div> 
		<form name="search" method="post" id="searchForm">
			<div class="board_sch">
				<select name="keyfield" id="keyfield" title="검색어">
					<option value="">검색대상</option>
					<option value="title">제목</option>
					<option value="writer">글쓴이</option>
					<option value="titlecontent">제목+내용</option>
					<option value="content">내용</option>
				</select> 
				<input type="text" name="keyword" id="keyword" title="검색어 입력" value="" placeholder="검색어를 입력하세요" /> 
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
			</div>
		</form>
	</div>

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>


	<table class="tb_board">
		<thead>
			<tr>
				<th width="80px">번호</th>
				<th width="538px">제목</th>
				<th width="100px">글쓴이</th>
				<th width="170px">작성일자</th>
				<th width="100px" class="bnon">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:forEach var="sList" items="${searchList}">
						<tr>
							<td>${sList.idx}</td>
							<td style="text-align: left;"><a href="/info03/dCon?keyword=${keyword}&keyfield=${keyfield}&ad_code=${ad_code}&ad_idx=${sList.idx}">${sList.ad_title}</a></td>
							<td>${sList.ad_memname}</td>
							<td>${sList.ad_regdate}</td>
							<td class="bnon">${sList.ad_count}</td>
						</tr>
					</c:forEach>		
				</c:when>
				<c:otherwise>
					<c:forEach var="cList" items="${contentList}">
						<tr>
							<td>${cList.idx}</td>
							<td style="text-align: left;"><a href="/info03/dCon?ad_code=${ad_code}&ad_idx=${cList.idx}">${cList.ad_title}</a></td>
							<td>${cList.ad_memname}</td>
							<td>${cList.ad_regdate}</td>
							<td class="bnon">${cList.ad_count}</td>
						</tr>
					</c:forEach>		
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<c:choose>
		<c:when test="${sessionScope.mem_id == 'ADMIN'}">
			<script>
				onload = function(){
					var newContent = document.getElementById("newContent");
					var ad_code = "${ad_code}";
					newContent.addEventListener("click", function() {
						switch (ad_code) {
						case "CAT0016":
							location.href = "/info03/CForm?ad_code=" + ad_code;
							break;

						case "CAT0017":
							location.href = "/info03/CForm?ad_code=" + ad_code;
							break;
						}
					});
				}
			</script>
			<div class="r mg_t20 btns">
				<input type="button" class="btns_black" id="newContent" value="새글쓰기" style="border:0;">
			</div>		
		</c:when>
		<c:otherwise>
		
		</c:otherwise>
	</c:choose>

	<!-- //table -->

	<!-- //게시판테이블(리스트) -->


	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">			
			<!-- 이전 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/info03/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num}&page_grp=${page_grp-1}"><span>이전</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/info03?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num}&page_grp=${page_grp-1}"><span>이전</span></a>
					</c:if>
				</c:otherwise>
			</c:choose>		
			
			<!-- 페이징 -->	
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/info03/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&m3=${m3}&page_num=${Paging}&page_grp=${page_grp}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:when>
				<c:otherwise>
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/info03?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${Paging}&page_grp=${page_grp}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:otherwise>
			</c:choose>
			
			<!-- 다음 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/info03/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num}&page_grp=${page_grp+1}"><span>이전</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/info03?m1=${m1}&m2=${m2}&m3=${m3}&page_num=${page_num}&page_grp=${page_grp+1}"><span>이전</span></a>
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