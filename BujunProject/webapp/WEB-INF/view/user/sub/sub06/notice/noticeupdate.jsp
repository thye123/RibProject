<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu06.jsp" %>   
<script>
	window.onload=function(){
		var farea = document.getElementById("farea");
		farea.addEventListener("click", function(){
			var conf = confirm("파일을 삭제하시겠습니까?");
			//alert("느아~" + conf);
			if(conf==true) {
				location.href="/notice/delFile?m1=06&m2=01&ad_idx=${ad_idx}&ad_code=${ad_code}";
				//loaction.href="/notice/delFile";
			}
		});
	}
</script>
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>공지사항</li>
		<!-- <li>종합자료실</li> -->
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">공지사항</div>
	
		
	<!-- content 시작 -->
	
	
	<!-- table -->
		<form action="/notice/Update" method="POST" enctype="multipart/form-data">
			<input type="hidden" value="CAT0009" name="ad_code">	
			<input type="hidden" name="ad_idx" value="${ad_idx}">
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
						<div class="n_right"><input type="text" name="ad_title" value="${board.ad_title}"></div>
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
						<%-- <input type="text" name="ad_content" value="${border.ad_content }"> --%>
						<textarea style="resize:none; warp:virtual" name="ad_content" >${board.ad_content}</textarea>
					</div>
				</div>
				<button>수정</button>
				<a href="/notice/view?m1=06&m2=01&ad_idx=${board.ad_idx}&ad_code=${ad_code}" class="btn_01">취소</a>
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