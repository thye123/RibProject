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

<style>
.prolist{ 
	display: block;
    height: 200px;
    border: 1px solid black;
}

.ulPro > li{
	float: left;  
	width: 48.3%;
	margin: 20px 0 0 1.666666666%;
}
.ulPro{
    margin: -20px 0 0 -1.666666666%;
}
.pointName{
    display: block;
    margin: 0 0 15px;
    height: 50px;
    color: #000;
    font-size: 16px;
    font-weight: 400;
    line-height: 1.5;

}

.bottom{
    display: block;
      
}

.bottom > span{
    display: block;
    margin-bottom: 10px;
    margin-top: 10px;
}

.top{
	display:block;
    margin: 0 0 15px;
    height: 43px;
}

a.prolist:hover {
    background-color: #2f868a;
    border-color: #2f868a;
    color: black;
}

.tab_mev {
   overflow : hidden;
    margin: 30px 0 40px;
    text-align: center;
}

.tab_mev p {
    float: left;
    color: #767676;
    font-size: 16px;
}

#min_depth01{
	width: 100%;
    margin: 0 auto;
    position: relative;
    margin-bottom: 50px;
    overflow: hidden;
}


#min_depth01 ul li.blgo {
    width: 50%;
    display: inline-block;
    float: left;
    background: #ff4f4e;
    border-top: 1px solid #ff4f4e;
    border-left: 1px solid #ff4f4e;
    border-bottom: 1px solid #ff4f4e;
}

#min_depth01.w50 ul li {
    display: inline-block;
    width: 49%;
    height: 48px;
}

.toblgo {
    border: 1px solid #e9e9e9;
}

.blgo > a {
	width: 100%;
	text-align:  center;
	color: #fff;

	display: block;
	line-height: 42px;
}

.toblgo > a{
	width: 100%;
	text-align:  center;
	
	display: block;
	line-height: 42px;
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
		<li>운영프로그램</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">운영프로그램</div>

	<div id="min_depth01" class="w50">
		<ul>
		
			<c:choose>
				<c:when test="${m3 eq '02'}">
				<li class="blgo"><a href="/opprogram01?m1=04&m2=01&m3=02&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 일반프로그램</a></li>
					<li class="toblgo">
						<a href="/opprogram01?m1=04&m2=01&m3=03&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 초등(유아)프로그램</a>
					</li>
				
				</c:when>
				
				<c:when test="${m3 eq '03'}">
					<li class="toblgo"><a href="/opprogram01?m1=04&m2=01&m3=02&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 일반프로그램</a></li>
					<li class="blgo" style="float: right;">
					<a href="/opprogram01?m1=04&m2=01&m3=03&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}"> 초등(유아)프로그램</a></li>
				</c:when>
				
			</c:choose>	
		
		</ul>
	
	</div>
	
	<!-- content 시작 -->
	<div class="prolistarea">
		
		<div class="tab_mev">
			<p>총 ${cnt} 개의  프로그램이 있습니다</p>
		</div>
	
		<div class="ProWrap">
		
		
		<ul class="ulPro">
			<c:forEach var="proList" items="${pro_list}">
				<li>
					<a class="prolist" href="/opprogram01/dCon?m1=${m1}&m2=${m2}&m3=${m3}&listu_catcode=${proList.listu_code}&page=${ed.page}&pagecount=${ed.pagecount}&pagegrp=${ed.pagegrp}">
					
						<span class="top">
							<b>모집중</b>
							<strong class="pointName">${proList.listu_name}</strong>
						</span>
						
						<span class="bottom">
							<span>
								<b>모집기간</b>
								${proList.listu_recruit}<br/>
							</span>
							<span>
								<b>교육대상</b>
								${proList.listu_target}<br/>
							</span>
							<span>
								<b>교육장소</b>
								${proList.listu_location}<br/>
							</span>
						
						</span>
					
					</a>
			</c:forEach>
		</ul>
	
		</div>

	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="newEdu" value="새글쓰기" style="border:0;"/>
	</div>
	
		<div class="board-list-paging">
		<div class="pagelist">
			<span class="firstpage1"><span>처음 페이지</span></span>
			
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