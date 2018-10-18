<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu08.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>개인정보</li>
		<li>개인정보처리위탁</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">개인정보처리위탁</div>
	
		
	<!-- content 시작 -->
	
	
	<!-- table -->
		<form action="/personalinfo02/Write" method="POST" enctype="multipart/form-data">
		<input type="hidden" value="CAT0018" name="ad_code">	
			<div class="tb_boardss">
				<div class="top">
					<div class="n_writer">
						<div class="n_left">작성자</div>
						<div class="n_right"><input type="text" value="${sessionScope.mem_name}">
						<input type="hidden" value="${sessionScope.mem_id}" name="ad_writer">
						</div>
					</div>
					<div class="n_title">
						<div class="n_left">제 목</div>
						<div class="n_right"><input type="text" name="ad_title"></div>
					</div>
				</div>
				<div class="n_cont">
					<div class="n_left">내 용</div>
					<div class="n_right">
						<textarea style="resize:none; warp:virtual" name="ad_content"></textarea>
					</div>
				</div>
				<button>글쓰기</button>
				<a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1" class="btn_01">취소</a>
			</div>
		</form>	
	<!-- //table -->
	
<!-- //content 끝 -->
</div>

		
</div>
	
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>