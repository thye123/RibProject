<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu07.jsp" %>   

<script>
	onload = function(){
		var newContent = document.getElementById("newContent");
		var ad_code = ${ad_code};
		newContent.addEventListener("click", function(){
			switch (ad_code) {
			case "CAT0016":
				location.href="/info03/newContentForm?ad_code=" + ad_code;
				break;
				
			case "CAT0017":
				location.href="/info03/newContentForm?ad_code=" + ad_code;
				break;
			}
		});
	}
</script>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>정보공개</li>
		<li>정보목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">정보공개</div>
	
	<div class="tab_depth01">
		<ul class="n03">
			<li><a href="/info01?m1=07&m2=01&m3=01" class="on">정보공개제도안내</a></li>
			<li><a href="/info02?m1=07&m2=01&m3=02">사전공표대상 및 비공개대상목록</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=03&page_num=1">정보목록</a></li>
			<li><a href="#">정보공개청구</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=05&page_num=1">사전공표대상공개</a></li>
		</ul>
	</div>
	
	
	<!-- content 시작 -->
	<!-- table -->
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
					<td width="80px">번호</td>
					<td width="538px">제목</td>
					<td	width="100px">글쓴이</td>
					<td width="170px">작성일자</td>
					<td width="100px">조회수</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cList" items="${contentList}">
					<tr>
						<td>${cList.idx}</td>
						<td style="text-align:left;"><a href="/">${cList.ad_title}</a></td>
						<td>${cList.ad_memname}</td>
						<td>${cList.ad_regdate}</td>
						<td>${cList.ad_count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<button id="newContent">새글쓰기</button>
		</div>	
	</div>
	<!-- //table -->
	
	<!-- //게시판테이블(리스트) -->
	  
	
	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
		
		
		<!--  -->
<%-- 		<c:choose>
            <c:when test="${pageMaker.prev}">
               <a href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.startPage-1}&perPageNum=10&searchType=${search}&keyword=${key}"><span class="prevblock1 "><span>1 페이지</span></span></a>
            </c:when>
            <c:otherwise>
               <a href="#"><span class="beforepage1 "><span>이전페이지없음</span></span></a>
            </c:otherwise>
         </c:choose>
      
      
         <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
            <c:choose>
               <c:when test="${pageMaker.cri.page == idx}">
                  <strong><span>${idx}</span></strong>
               </c:when>
               <c:otherwise>
                  <a class="default" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${idx}&perPageNum=10&searchType=${search}&keyword=${key}" ><span>${idx}</span></a>
               </c:otherwise>
            </c:choose>
         </c:forEach>   
         

         <c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
            <a class="nextblock" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.endPage + 1}&perPageNum=10&searchType=${search}&keyword=${key}"><span>다음</span></a>
         </c:if>
         <a class="lastpage" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.lastBlock}&perPageNum=10&searchType=${search}&keyword=${key}"><span>마지막</span></a> --%>
		<!--  -->
		
			<!-- <span class="firstpage1"><span>처음 페이지</span></span>
			
			<span class="prevblock1 hidden"><span>1 페이지</span></span>
			<span class="beforepage1 "><span>이전페이지없음</span></span> --> <!-- 이전페이지 없을때 -->
			
			<c:set var="endnum" 	value="${paging.end_page}"></c:set>
			<c:set var="startnum" 	value="${paging.start_page}"></c:set>
			<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
				<a class="default" href="/info03?&ad_code=${ad_code}&page_num=${Paging}"><span>${Paging}</span></a>
			</c:forEach>
	
			<!-- <a class="afterpage hidden" href="#"><span>앞페이지</span></a>
			<a class="nextblock" href="#"><span>6 페이지</span></a>
			<a class="lastpage" href="#"><span>21 페이지</span></a> -->
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
<%@ include file="../../include/footer.jsp" %>