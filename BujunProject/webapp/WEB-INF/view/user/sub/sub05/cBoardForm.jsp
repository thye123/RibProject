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
	window.onload = function() {
		var listBtn = document.getElementsByClassName('listBtn');
		listBtn[0].onclick = function() {
			location.href = "/CluBoard/Goboard?clb_clucode=${clb_clucode}";
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
	<div class="sub_tit">글쓰기</div>

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

		<form action="/CluBoard/processing" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="clb_clucode" value="${clb_clucode}">

			<table class="board_read">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 55%;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th class="c">글쓴이</th>
						<td colspan="2"><input type="text" name="clb_writer" /></td>
					</tr>

					<tr>
						<th class="c">도서번호</th>
						<td colspan="2"><input type="text" name="clb_rimemnum" /></td>
					</tr>

					<tr>
						<th class="c">공개여부</th>
						<td colspan="2"><label>공개</<label> <input
									type="checkbox" name="clb_open" value="1"> <label>비공개</<label>
											<input type="checkbox" name="clb_open" value="2"></td>
					</tr>

					<tr>
						<th class="c">비밀번호</th>
						<td colspan="2"><input type="text" name="clb_pass" /></td>
					</tr>

					<tr>
						<th class="c">제목</th>
						<td><input type="text" name="clb_title" /></td>
					</tr>

					<tr>
						<th class="c">파일</th>
						<td><input class="mg_b5" type="file" name="file" id="orgFile" /></td>
					</tr>

					<tr>
						<th class="c">내용</th>
						<td colspan="2"><textarea cols="10" name="clb_content"></textarea>
						</td>
					</tr>

					<tr>
						<th class="c">이메일</th>
						<td colspan="3" class="contents"><input type="text"
							name="clb_email" /></td>
					</tr>


					<tr>
						<th class="c"></th>
						<td colspan="2"><input type="submit" value="제출" /> <input
							type="reset" value="초기화" /></td>
					</tr>

				</tbody>
			</table>
		</form>
	</div>
	<!-- //table -->
</div>
<!-- //content 끝 -->

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>