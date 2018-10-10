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
			location.href="/opprogram01/adprof?m1=${m1}&m2=${m2}&m3=${m3}";
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

	<div id="tab_depth01" class="w50">
		<ul>
			<li class="active"><a href="/opprogram01?m1=04&m2=01&m3=02"> 일반프로그램</a></li>
			<li class=""><a href="/opprogram01?m1=04&m2=01&m3=03"> 초등(유아)프로그램</a></li>
		</ul>
	</div>
	
	<!-- content 시작 -->
	<div class="prolistarea">
		<ul class="ulPro">
			<c:forEach var="proList" items="${pro_list}">
<<<<<<< HEAD
				<li>
					<a class="prolist" href="/opprogram01/dCon?m1=${m1}&m2=${m2}&m3=${m3}&listu_catcode=${proList.listu_code}">
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
=======
				<li class="prolist">
					<a class="proa" href="/opprogram01/dCon?m1=${m1}&m2=${m2}&m3=${m3}&listu_code=${proList.listu_code}">
						<span><strong>${proList.listu_name}</strong></span>
						<span><b>${proList.listu_recruit}</b></span>
>>>>>>> branch 'master' of https://github.com/thye123/RibProject.git
					</a>
				</li>

			</c:forEach>
		</ul>
	<!-- <div> -->
	
	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="newEdu" value="새글쓰기" style="border:0;"/>
	</div>
	<!-- //content 끝 -->
</div>




</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>