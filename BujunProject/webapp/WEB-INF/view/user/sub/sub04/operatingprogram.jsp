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
			<li class="active"><a href="/opprogram01?m1=04&m2=01&m3=02"> 일반프로그램</a></li>
			<li class=""><a href="/opprogram01?m1=04&m2=01&m3=03"> 초등(유아)프로그램</a></li>
		</ul>
	</div>
	
	<!-- content 시작 -->
	
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