<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu08.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>로그인</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">로그인</div>
	

	<script>
		function login() {
			document.loginForm.submit();
		}
	</script>

	<div class="con_login">
		<div class="log_tit">아이디 로그인</div> 
		 <div class="log_sub">아이디와 비밀번호를 입력하신 후 Login 버튼을 눌러주세요.</div>
	
		<form method="post" action="/login" name="loginForm">
			<ul>
				<li><input type="text" name="username" placeholder="아이디를 입력하세요" /></li>
				<li><input type="password" name="password" placeholder="비밀번호를 입력하세요" /></li>
				<li><label><input type="checkbox" name="remember-me" /><span> 로그인 상태 유지</span></label></li>
			</ul>
			
			<p class="c"><a href="#" onclick="login()" class="log_btn">로그인</a></p>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />	
			
			
		</form>
	</div>




		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>