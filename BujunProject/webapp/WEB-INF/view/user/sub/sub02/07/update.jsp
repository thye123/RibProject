<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu02.jsp" %>   
<script>
	window.onload=function(){
		var farea = document.getElementById("farea");
		farea.addEventListener("click", function(){
			var conf = confirm("파일을 삭제하시겠습니까?");
			if(conf==true) {
				location.href="/finref07/delFile?ad_idx=${ad_idx}&ad_code=${ad_code}";
			}
		});
	}
</script>
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>특성화(금융정보)자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">알짜·경제금융상식</div>
	
		
	<!-- content 시작 -->
	
	
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">		
		<form action="/finref07/Update" method="POST" enctype="multipart/form-data">
			<input type="hidden" value="CAT0014" name="ad_code">	
			<input type="hidden" name="ad_idx" value="${ad_idx}">
			<div class="tb_boards">
				<div class="top">
					<div class="n_writer">
						<div class="n_left">작성자</div>
						<div class="n_right"><input type="text" size="40" value="관리자">
						<input type="hidden" value="ADMIN" name="ad_writer">
						</div>
					</div>
					<div class="n_title">
						<div class="n_left">제 목</div>
						<div class="n_right"><input type="text" size="40" name="ad_title" value="${board.ad_title}"></div>
					</div>
				</div>
				<div class="n_file">
					<c:choose>
						<c:when test="${board.file_filename == null}">
							<div class="n_left">파 일</div>
							<div class="n_right">
								<input type="file" name="filename" id="files">
							</div>
						</c:when>
						<c:otherwise>
							<div class="n_left">파 일</div>
							<div class="n_right" id="farea" >
								<span id="filetxt">${board.file_filename}</span>
								<img src="/resources/user/images/sub/close.png" style="width:20px; height:20px">
							</div>
						</c:otherwise>	
					</c:choose>
				</div>
				<div class="n_cont">
					<div class="n_left">내 용</div>
					<div class="n_right">
						<textarea rows="5" cols="108" style="resize:none; warp:virtual" name="ad_content" >${board.ad_content}</textarea>
					</div>
				</div>
				<button>수정</button>
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