<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu08.jsp" %>   
<script>
	function deletename() {
		//alert('이아아아');
		//var dname = document.getElementById('deletefilename');
		document.getElementById('filetxt').innerHTML='선택된 파일이 없음';
		
	}
</script>

			
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
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">		
		<form action=/personalinfo02/Update method="POST" enctype="multipart/form-data">
			<input type="hidden" value="CAT0018" name="ad_code">	
			<input type="hidden" name="ad_idx" value="${ad_idx}">
			<div class="tb_boardss">
				<div class="top">
					<div class="n_writer">
						<div class="n_left">작성자</div>
						<div class="n_right"><input type="text"  value="관리자">
						<input type="hidden" value="ADMIN" name="ad_writer">
						</div>
					</div>
					<div class="n_title">
						<div class="n_left">제 목</div>
						<div class="n_right"><input type="text"  name="ad_title" value="${board.ad_title}"></div>
					</div>
				</div>
				<div class="n_cont">
					<div class="n_left">내 용</div>
					<div class="n_right">
						<textarea style="resize:none; warp:virtual" name="ad_content" >${board.ad_content}</textarea>
					</div>
				</div>
				
				<button>수정</button>
				<a href="/personalinfo02/view?m1=08&m2=01&m3=02&ad_idx=${board.ad_idx}&ad_code=${ad_code}" class="btn_01">취소</a>
			</div>
		</form>	
	</div>
	<!-- //table -->
	
<!-- //content 끝 -->
</div>

		
</div>
	
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>