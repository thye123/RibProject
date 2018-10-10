<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>

<script>
	onload = function(){
		var cancel = document.getElementById("cancel");
		cancel.addEventListener("click", function(){
			location.href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}";
		});
	}
</script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>평생교육</li>
		<li>평생학습</li>
		<li>운영프로그램</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

	<!-- title -->
	<div class="sub_tit">운영프로그램</div>
	
	<!-- content 시작 -->
	<form action="/opprogram01/adpro?m1=${m1}&m2=${m2}&m3=${m3}" method="post" enctype="multipart/form-data">
		<table class="tb_board">
			<tbody>
				<tr>
					<td>강좌명</td>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_name"/>
					</td>
				</tr>
				<tr>
					<td>강사명</td>
					<td style="text-align:left;">
						<input type="text" name="listu_teacher"/>
					</td>
					<td>프로그램 구분</td>
					<td style="text-align:left;">
						<input type="text" name="listu_gubun">
					</td>
				</tr>
				<tr>
					<td>강의실</td>
					<td style="text-align:left;">
						<input type="text" name="listu_location"/>
					</td>
					<td>강의대상</td>
					<td style="text-align:left;">
						<input type="text" name="listu_target"/>
					</td>
				</tr>
				<tr>
					<td>모집인원</td>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_person"/>
					</td>
				</tr>
				<tr>
					<td>모집기간</td>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_recruit"/>
					</td>
				</tr>
				<tr>
					<td>강의일시</td>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_studate"/>
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3" style="text-align:left;">
						<textarea name="listu_content" rows="20" style="resize: none; warp:virtual; width:100%;"></textarea>
					</td>
				</tr>
				<tr>
					<td>상태</td>
					<td colspan="3" style="text-align:left;">
						<input type="hidden" name="listu_end" value="1">
						<span>모집중</span>
					</td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td colspan="3" style="text-align:left;">
						<input type="file" name="file"/>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="r mg_t20 btns">
			<input type="submit" class="btns_black" value="등록" style="border:0;"/>
			<input type="button" class="btns_black" id="cancel" value="취소" style="border:0;"/>
		</div>
	</form>
	
	<!-- //content 끝 -->
</div>




</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>