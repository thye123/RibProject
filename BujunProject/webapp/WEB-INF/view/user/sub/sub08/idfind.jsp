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
		<li>아이디/비밀번호 찾기</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">아이디/비밀번호 찾기</div>
	

	<script>
		function find01() {
			
			document.find01_form.submit();
			
		}
		
		
		
		function find02() {
			
			var id = document.getElementById("id");
			var email2 = document.getElementById("email2");
			
			if(id.value == "") {
				alert("아이디를 입력하세요");
				id.focus();
				return;
			}
			
			if(email2.value == "") {
				alert("이메일을 입력하세요");
				email2.focus();
				return;
			}
			
			document.find02_form.submit();
			
		}
	</script>

	<div class="idpw_wrap">
		<form action="/find01" name="find01_form" method="post" >
			<div class="login_box">
				<h4 class="login_con c">아이디 찾기</h4>
				<input type="text" id="name" name="mem_name" placeholder="이름을 입력하세요" class="idpw_txt" />
				<input type="text" id="email1" name="mem_email" placeholder="이메일을 입력하세요" class="idpw_txt"/>
				
				<input type="button" value="아이디 찾기" class="idbtn" onclick="find01()" />
			</div>
		</form>
		
		<form action="/find02" name="find02_form"  method="post">
			<div class="pw_box">
				<h4 class="pw_con c">비밀번호 찾기</h4>
				<input type="text" id="id" name="mem_id" placeholder="아이디를 입력하세요" class="idpw_txt"/>
				<input type="text" id="email2" name="mem_email" placeholder="이메일을 입력하세요" class="idpw_txt"/>
				
				<!-- <button>비밀번호 찾기</button> -->
				<input type="button" value="비밀번호 찾기" class="pwbtn" onclick="find02()"/>		
			</div>
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