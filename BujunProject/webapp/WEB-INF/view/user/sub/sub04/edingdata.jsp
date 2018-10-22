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

<script>
	onload = function(){
		var newEdu = document.getElementById("newEdu");
		newEdu.addEventListener("click", function(){
			location.href="/opprogram01/adprof?m1=${m1}&m2=${m2}&m3=${m3}&page=1&pagecount=10&pagegrp=1";
		});
	}
</script>


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
<%-- 
	<div id="tab_depth01" class="w50">
		<ul>
		<c:choose>
			<c:when test="${m3 eq '04'}">
				<li class="active"><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1"> 일반프로그램</a></li>
				<li><a href="/pgappl?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1"> 초등(유아)프로그램</a></li>
			</c:when>
			
		 	<c:when test="${m3 eq '05'}">
				<li><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1"> 일반프로그램</a></li>
				<li class="active"><a href="/pgappl?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1"> 초등(유아)프로그램</a></li>			
			</c:when> 
		</c:choose>
		</ul>
	</div>
	 --%>
	
	
	<!-- content 시작 -->
	<div class="prolistarea">
		
		<p class="mg_b5">총 <span class="red">${cnt}</span> 개의  프로그램이 있습니다</p>

 	<div class="studyArea">
 		<ul class="studyProgram">
			<c:forEach var="EdingData" items="${EdingData}">
				<li>
					<a class="link" href="/opprogram01/dCon?m1=${m1}&m2=${m2}&m3=${m3}&listu_code=${EdingData.listu_code}&page=${pageMaker.page}&pagecount=${pageMaker.pagecount}&pagegrp=${pageMaker.pagegrp}">
						<ul>
							<li class="title">${EdingData.listu_name}</li>
							<li class="n03"><span>교육대상</span> : ${EdingData.listu_target}</li>
							<li class="n02"><span>모집기간</span> : ${EdingData.listu_name}</li>
							<li class="n04"><span>교육장소</span> : ${EdingData.listu_location}</li>
						</ul>
					</a>
					
					<div class="studyNotice">
						모집중		
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>		
				

	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="newEdu" value="새글쓰기" style="border:0;"/>
	</div>
	
	<!-- 페이지 -->
		<div class="board-list-paging">
		<div class="pagelist">
		
				<!-- 이전 10개  -->		
				<c:if test="${pageMaker.start > 10}">
					<a class="prevblock" href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${pageMaker.page-1}&pagecount=${pageMaker.pagecount}&pagegrp=${pageMaker.pagegrp-1}"><span>이전</span></a>
				</c:if>

			<!-- 페이징 -->
			
			
			
				<c:forEach var="Paging" begin="${pageMaker.start}"
					end="${pageMaker.end}" step="1">
					<a class="default"
						href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${Paging}&pagecount=${pageMaker.pagecount}&pagegrp=${pageMaker.pagegrp}"><span>${Paging}</span></a>
				</c:forEach>

				

			<!-- 다음 10개 -->
				<c:if
					test="${pageMaker.start <= (pageMaker.tmep-10) && pageMaker.start > 0}">
					<a class="nextblock"
						href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${pageMaker.page+1}&pagecount=${pageMaker.pagecount}&pagegrp=${pageMaker.pagegrp+1}"><span>다음</span></a>
				</c:if>
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
<%@ include file="../../include/footer.jsp"%>