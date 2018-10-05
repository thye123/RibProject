<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu06.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>자유게시판</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">자유게시판</div>
	

	
	<!-- content 시작 -->
	
	<script>
		function passChk() {
			var bd_pass = document.getElementById("bd_pass");
			if(bd_pass.value == "") {
				alert("비밀번호를 입력하세요");
				return;
			}
			
			document.freeBrdForm.submit();
		}
	</script>
	
	
	
	<form class="con_pass" name="freeBrdForm" action="/free_pass_chk" method="post">
		<div class="c">
			<div class="tit">비밀번호를 입력하세요</div>
			<input type="password" name="bd_pass" id="bd_pass" />
			<a href="#" onclick="passChk()">확인</a>
		</div>
		
		<input type="hidden" name="bd_catcode" value="${bd_catcode}"  />	
		<input type="hidden" name="page" value="${page}"  />
		<input type="hidden" name="perPageNum" value="${perPageNum}"  />
		<input type="hidden" name="searchType" value="${searchType}"  />
		<input type="hidden" name="keyword" value="${keyword}"  />
		<input type="hidden" name="bd_idx" value="${bd_idx}"  />
		<input type="hidden" name="flag" value="${flag}"  />
	</form>
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>