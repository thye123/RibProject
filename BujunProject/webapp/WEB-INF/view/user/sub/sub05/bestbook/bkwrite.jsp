<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu05.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>독서문화</li>
		<li>추천도서</li>
		<li>부전추천도서</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">부전추천도서</div>
	
		
	<!-- content 시작 -->
	
	
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">		
		<form action="/bujunbk/Write" method="POST" enctype="multipart/form-data">
		<input type="hidden" value="CAT0032" name="ad_code">	
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
				<div class="n_file">
					<div class="n_left">파 일</div>
					<div class="n_right"><input type="file" name="filename"></div>
				</div>
				<div class="n_cont">
					<div class="n_left">내 용</div>
					<div class="n_right">
						<textarea style="resize:none;" name="ad_content" ></textarea>
					</div>
				</div>
				<button>글쓰기</button>
				<a href="/bujunbk?m1=05&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1" class="btn_01">취소</a>
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