<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	window.onload=function(){
		var listBtn = document.getElementsByClassName('listBtn');
		listBtn[0].onclick=function(){
			location.href="/CluBoard/Goboard?clb_clucode=${clb_clucode}&page=1&pagecount=10&pagegrp=1";
		}
	}

</script>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>종합자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">자료실소개</div>

	<div class="tab_depth01">
		<ul class="n03">
			<!-- 나중에 붙이자 -->
			<li><a href="/CluBoard?clb_clucode=CUS0001&page=1&pagecount=10"
				class="on">수학동아리</a></li>
			<li><a href="/CluBoard?clb_clucode=CUS0002&page=1&pagecount=10">영어동아리</a></li>
			<li><a href="/CluBoard?clb_clucode=CUS0003&page=1&pagecount=10">국어동아리</a></li>
			<li><a href="/CluBoard?clb_clucode=CUS0004&page=1&pagecount=10">과학동아리</a></li>
		</ul>
	</div>

	<!-- content 시작 -->

	<h2 class="tbul1 mg_b40">이용대상 : 중학생이상</h2>

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">
		

 	<!-- 게시판테이블(read) -->	
 	<!-- class : mob_none -> 모바일일때 display:none  -->
 	
 	<h2 class="tbul1 mg_b20">게시판테이블(read)</h2>	
 		 	 	 		
	<table class="board_read">
		<colgroup><col style="width:20%;"><col style="width:55%;"></colgroup>		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td colspan="2">${club.clb_title}</td>
			</tr>
			<tr>
				<th class="c">작성자</th>
				<td>${club.clb_writer}</td>
				<td class="mob_none">작성일 : ${club.clb_regdate}  / 조회수 :${club.clb_count}</td> 
			</tr>
			<tr>
				<th class="c">첨부파일</th>
				<td colspan="2">
					<a href="/download?filename=${club.file_filename}">${club.file_filename}</a>
				</td>
			</tr>
			<tr>
				<td colspan="3" class="contents">
					${club.clb_content}
				</td>
			</tr>
			
		</tbody>
	</table>
	</div>
	<!-- //table -->
		<div class="data_btn">
			<button><a href="/CluBoard/Uptboard?clb_idx=${clb_idx}&clb_clucode=${clb_clucode}&page=1&pagecount=10">수정</a></button>
			<button><a href="/CluBoard/Delboard?clb_idx=${clb_idx}&clb_clucode=${clb_clucode}&page=1&pagecount=10">삭제</a></button>
			<button class="listBtn">목록으로</button>
		</div>
</div>
<!-- //content 끝 -->

		</div>
		
		
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>