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
<style>
/*부전도서관 글쓰기 긁어옴 (게시판 하단 글쓰기 버튼)*/
.btn_set {
    padding: 10px 0;
    overflow: hidden;
}
a.btn_board {
    background: #696969;
    color: #fff;
    padding: 8px 25px;
}

</style>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서 동아리</li>
		<li>독서 게시판</li>
		<li>${memberName}</li> <!-- 디비 조회해서 각 동아리 이름 들고옴 -->
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">${memberName}</div>

	<!-- content 시작 -->

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">
		

 	<!-- 게시판테이블(read) -->	
 	<!-- class : mob_none -> 모바일일때 display:none  -->
 	
 <!-- 	<h2 class="tbul1 mg_b20">게시판테이블(read)</h2>	 -->
 		 	 	 		
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
				<td colspan="2"><!-- file_filename filename -->
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
	
	<div class="btn_set r">
		<a class="btn btn_board" href="/club01/CluBoard/Uptboard?clb_idx=${clb_idx}&clb_clucode=${clb_clucode}&page=1&pagecount=10">수정</a>
		<a class="btn btn_board" href="/club01/CluBoard/Delboard?clb_idx=${clb_idx}&clb_clucode=${clb_clucode}&page=1&pagecount=10">삭제</a>
		<a class="btn btn_board" href="/club01/CluBoard/Goboard?clb_clucode=${clb_clucode}&page=1&pagecount=10&pagegrp=1">목록으로</a>
	</div>

</div>
<!-- //content 끝 -->

		</div>
		
		
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>