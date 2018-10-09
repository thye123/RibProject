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
			location.href="/opprogram01/adprof?m1=${m1}&m2=${m2}&m3&=${m3}";
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
	
	<!-- content 시작 -->
	<table class="tb_board">
		<tbody>
			<tr>
				<td>강좌명</td>
				<td colspan="3"><input type="text" name="listu_name"/></td>
			</tr>
		</tbody>
	</table>
	
	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="insert" value="등록" style="border:0;"/>
		<input type="button" class="btns_black" id="cancel" value="취소" style="border:0;"/>
	</div>
	<!-- //content 끝 -->
</div>




</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>