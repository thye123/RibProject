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
		//alert(pdata[0].getAttribute('class'));

		pdata[0].style.display = 'none';
		for (var i = 0; i < obj.length; i++) {
			obj[i].onclick = function() {
				if (obj[1].checked == true) {
					obj[0].checked = false;
					var str = "<td><input type=text/><td>";
					//alert(str);
					pdata[0].style.display = 'block';
					//putData[0].innerHTML(str);
				}

				if (obj[0].checked == true) {
					obj[1].checked = false;
					pdata[0].style.display = 'none';

				}

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
   	cursor:pointer;
 	
 }
 
 
</style>
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
	<div class="sub_tit">시작</div>

	<!-- content 시작 -->

	<!-- 	<h2 class="tbul1 mg_b40">이용대상 : 중학생이상</h2>
 -->
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">


		<!-- 게시판테이블(read) -->
		<!-- class : mob_none -> 모바일일때 display:none  -->
		<!--<h2 class="tbul1 mg_b20">게시판테이블(Update)</h2> -->
		<form action="/club01/CluBoard/UptProc" method="POST"
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
						<td>
							<c:if test="${vo.clb_open eq '0'}">
   								<label>공개</label>
								<input type="radio" name="clb_open" value="${vo.clb_open}"
								checked="checked"/>
							</c:if> 
								<label>비공개</label>
								<input type="radio" name="clb_open" value="${vo.clb_open}"/>
						</td>
					</tr>

					<tr>
						<th class="c">비밀번호여부</th>
						<td class="putData">
							<input type="text" class="pdata"/>
						</td>
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
					class="btn btn_board" type="reset" value="초기화" />
			</div>
		</form>
	</div>
</div>
<!-- //content 끝 -->

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>