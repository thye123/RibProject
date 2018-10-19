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

		var obj = document.getElementsByName('clb_open');
		var pdata = document.getElementsByClassName('pdata');
		var btns = document.getElementById('btns');
		btns.onclick = function() {
			location.href = "/club01/CluBoard/OneView?clb_idx=${clb_idx}&clb_clucode=${clb_clucode}&page=1&pagecount=10&pagegrp=1&m1=${m1}&m2=${m2}&m3=${m3}";
		}

		var UpdateForm = document.getElementById('UpdateForm')
		pdata[0].style.display = 'none';
		for (var i = 0; i < obj.length; i++) {
			obj[i].onclick = function() {
				if (obj[0].checked == true) {
					obj[1].checked = false;
					pdata[0].style.display = 'none';

				}

				if (obj[1].checked == true) {
					obj[0].checked = false;
					pdata[0].style.display = 'block';
				}

			}
		}

		UpdateForm.onsubmit = function() {
			if (obj[1].checked == true && pdata[0].value == '') {
				alert('비밀번호는 꼭 입력해주세요');
				pdata[0].focus();
				return false;
			}

		}

	}
</script>
<style>
.content {
	width: 100%;
	height: 250px;
	resize: none;
}

.btn_set {
	padding: 10px 0;
	overflow: hidden;
}

.btn_board {
	background: #696969;
	color: #fff;
	padding: 6px 25px;
	cursor: pointer;
}
</style>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서 동아리</li>
		<li>독서 게시판</li>
		<li>${memberName}</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">수정페이지</div>

	<!-- content 시작 -->

	<!-- 게시판테이블(read) -->
	<!-- class : mob_none -> 모바일일때 display:none  -->
	<!--<h2 class="tbul1 mg_b20">게시판테이블(Update)</h2> -->
	<form action="/club01/CluBoard/UptProc" method="POST" id="UpdateForm"
		enctype="multipart/form-data">

		<input type="hidden" name="clb_idx" value="${vo.clb_idx}"> <input
			type="hidden" name="clb_clucode" value="${clb_clucode}"> <input
			type="hidden" name="page" value="1" /> <input type="hidden"
			name="pagecount" value="10" /> <input type="hidden" name="pagegrp"
			value="1" /> <input type="hidden" name=file_boardcode
			value="${clb_clucode}">

		<table class="board_read">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 55%;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th class="c">제목</th>
					<td colspan="2"><input type="text" name="clb_title"
						value="${vo.clb_title}" /></td>
				</tr>

				<tr>
					<th class="c">이메일</th>
					<td colspan="2"><input type="text" name="clb_email"
						value="${vo.clb_email}" /></td>
				</tr>
				<tr>
					<th class="c">공개여부</th>
					<td><c:if test="${vo.clb_open eq '0'}">
							<label>공개</label>
							<input type="radio" name="clb_open" value="${vo.clb_open}"
								checked="checked" />
						</c:if> <label>비공개</label> <input type="radio" name="clb_open"
						value="${vo.clb_open}" /></td>
				</tr>

				<tr>
					<th class="c">비밀번호여부</th>
					<td class="putData"><input type="text" name="clb_pass"
						class="pdata" /></td>
				</tr>


				<tr>
					<th class="c">내용</th>
					<td colspan="2"><textarea cols="10" name="clb_content"
							class="content">${vo.clb_content}</textarea></td>
				</tr>

				<tr>
					<td colspan="3" class="contents">${club.clb_content}</td>
				</tr>

				<tr>
					<th class="c">파일</th>
					<td><input class="mg_b5" type="file" name="file" id="orgFile" /></td>
				</tr>
			</tbody>
		</table>

		<div class="btn_set r">
			<input class="btn btn_board" type="submit" value="수정완료" /> <input
				class="btn btn_board" id="btns" type="button" value="목록" />
		</div>
	</form>
</div>
<!-- //content 끝 -->

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>