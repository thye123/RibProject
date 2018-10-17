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
			location.href="/opprogram01/adprof?m1=${m1}&m2=${m2}&m3=${m3}&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}";
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
		<li>운영프로그램</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">운영프로그램</div>

	<div id="tab_depth01" class="w50">
		<ul>
		<c:choose>
			<c:when test="${m3 eq '02'}">
				<li class="active"><a href="/opprogram01?m1=04&m2=01&m3=02&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 일반프로그램</a></li>
				<li><a href="/opprogram01?m1=04&m2=01&m3=03&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 초등(유아)프로그램</a></li>
			</c:when>
			
			<c:when test="${m3 eq '03'}">
				<li><a href="/opprogram01?m1=04&m2=01&m3=02&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 일반프로그램</a></li>
				<li class="active"><a href="/opprogram01?m1=04&m2=01&m3=03&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 초등(유아)프로그램</a></li>			
			</c:when>
		</c:choose>
		</ul>
	</div>
	
	
	
	<!-- content 시작 -->
	<div class="prolistarea">
		
		<p class="mg_b5">총 <span class="red">${cnt}</span> 개의  프로그램이 있습니다</p>

 	<div class="studyArea">
 		<ul class="studyProgram">
			<c:forEach var="proList" items="${pro_list}">
				<li>
					<a class="link" href="/opprogram01/dCon?m1=${m1}&m2=${m2}&m3=${m3}&listu_catcode=${proList.listu_code}&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}">
						<ul>
							<li class="title">${proList.listu_name}</li>
							<li class="n03"><span>교육대상</span> : ${proList.listu_target}</li>
							<li class="n02"><span>모집기간</span> : ${proList.listu_name}</li>
							<li class="n04"><span>교육장소</span> : ${proList.listu_location}</li>
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
	
		<div class="board-list-paging">
		<div class="pagelist">
			<a href="/opprogram01?m1=04&m2=01&m3=02&page=1&pagecount=10&pagegrp=1"><span class="firstpage1"><span>처음 페이지</span></span></a>
					
			<span class="prevblock1 hidden"><span>1 페이지</span></span>
			<span class="beforepage1 "><span>이전페이지없음</span></span> <!-- 이전페이지 없을때 -->
			
		
		 	<c:set var="startpage" value="${ed.statrpage}"></c:set>
		 	<c:set var="endpage" value="${ed.endpage}"></c:set>
		
			<c:forEach var="i"  begin="${startpage}" end="${endpage}">
				<a class="pageBtn" 
				href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${i}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}">
				<span>${i}</span></a>
			</c:forEach>
		
			<a class="afterpage hidden" href="#"><span>앞페이지</span></a>
			<c:choose>
		 
	    <c:when test="${ed.page >= ed.endpage}">
	      <a class="nextblock" href="#"></a>	
	    </c:when>

	    <c:otherwise>
	    	<a class="nextblock" href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}&page=${ed.page+1}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"><span>6 페이지</span></a>
	    </c:otherwise>
	</c:choose>
	
			<a class="lastpage" href="#"><span>21 페이지</span></a>
		</div>
	</div>
	
	<!-- //content 끝 -->
</div>

</div>
</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>