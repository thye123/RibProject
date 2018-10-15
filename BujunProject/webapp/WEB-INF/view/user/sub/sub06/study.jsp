<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp" %>   

<script>
	onload = function(){
		var newStudy = document.getElementById("newStudy");
		newStudy.addEventListener("click", function(){
			location.href = "/study/addStudyForm?m1=${m1}&m2=${m2}";
		});
	}
</script>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>스터디모집</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">스터디모집</div>
	
	
	<!-- content 시작 -->
	<c:set var="endnum" value="${paging.end_page}"></c:set>
	<c:set var="startnum" value="${paging.start_page}"></c:set>
	<c:set var="page_grp" value="${paging.page_group}"></c:set>
	<c:set var="tot_btcnt" value="${paging.tot_btcnt}"></c:set>
	
	
	
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon18"></span>
			<b>스터디모집</b>
			<p>도서관 이용자에게 딱 맞는 스터디를 찾거나 모집하여 효율적인 공부 환경 조성을 위한 공간입니다.</p>
		</div>
	</div>
	
	<div class="tab_depth01" >
		<ul class="n03">
			<li style="width:50%;"><a href="/study?m1=${m1}&m2=${m2}&page_num=1&page_grp=1" class="on">스터디모집</a></li>
			<li style="width:50%;"><a href="/study/appList?m1=${m1}&m2=${m2}&page_num=1&page_grp=1&mem=${sessionScope.rimem_num}">나의 스터디 신청현황</a></li>
		</ul>
	</div>
	
	<!-- 검색 -->
	<div class="boardSearch">
		<div class="board_page">
			<span class="p02">Total</span>
			<span class="p01"> : ${tot_cnt}</span>
			(<span class="p01">${page_num}</span>/${endnum}페이지)
		</div> 
		<form action="/study/search?m1=${m1}&m2=${m2}&page_num=1&page_grp=1" name="search" method="post" id="searchForm">
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
	<!-- 검색 -->
	
	<div class="studyArea">
		<c:choose>
			<c:when test="${keyword != null && keyfield != null}">
				<c:forEach var="slist" items="${sList}">
					<div class="studyProgram">
						<a href="/study/dCon?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&stu_code=${slist.stu_code}&stu_idx=${slist.stu_idx}">
							<span><b>제목:</b>${slist.stu_title}</span><br>
							<span><b>작성자:</b>${slist.mem_name}</span><br>
							<span><b>일정:</b>${slist.stu_date}</span><br>
							<span><b>인원:</b>${slist.stu_person}</span><br>
							<span><b>장소:</b>${slist.stu_location}</span><br>
							<c:choose>
								<c:when test="${slist.stu_end eq 1}">
									<span><b>모집중</b></span>
								</c:when>
								<c:otherwise>
									<span><b>모집종료</b></span>
								</c:otherwise>
							</c:choose>
						</a>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach var="slist" items="${sList}">
					<div class="studyProgram">
						<a href="/study/dCon?m1=${m1}&m2=${m2}&stu_code=${slist.stu_code}&stu_idx=${slist.stu_idx}">
							<span><b>제목:</b>${slist.stu_title}</span><br>
							<span><b>작성자:</b>${slist.mem_name}</span><br>
							<span><b>일정:</b>${slist.stu_date}</span><br>
							<span><b>인원:</b>${slist.stu_person}</span><br>
							<span><b>장소:</b>${slist.stu_location}</span><br>
							<c:choose>
								<c:when test="${slist.stu_end eq 1}">
									<span><b>모집중</b></span>
								</c:when>
								<c:otherwise>
									<span><b>모집종료</b></span>
								</c:otherwise>
							</c:choose>
						</a>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="newStudy" value="스터디등록" style="border:0;">
	</div>

	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">			
			<!-- 이전 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/study/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num}&page_grp=${page_grp-1}"><span>이전</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum > 10}">
						<a class="prevblock" href="/study?m1=${m1}&m2=${m2}&page_num=${page_num}&page_grp=${page_grp-1}"><span>이전</span></a>
					</c:if>
				</c:otherwise>
			</c:choose>		
			
			<!-- 페이징 -->	
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/study/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:when>
				<c:otherwise>
					<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
						<a class="default"
							href="/study?m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}"><span>${Paging}</span></a>
					</c:forEach>		
				</c:otherwise>
			</c:choose>
			
			<!-- 다음 10개 -->
			<c:choose>
				<c:when test="${keyword != null && keyfield != null}">
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/study/search?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num}&page_grp=${page_grp+1}"><span>다음</span></a>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
						<a class="nextblock" href="/study?m1=${m1}&m2=${m2}&page_num=${page_num}&page_grp=${page_grp+1}"><span>다음</span></a>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- 페이징 -->
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>