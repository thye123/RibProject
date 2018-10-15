<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp" %>   

<script>
	onload = function(){
		var cancel = document.getElementById("cancel");
		cancel.addEventListener("click", function(){
			location.href="/study/dCon?m1=${m1}&m2=${m2}&stu_code=${stu_code}&stu_idx=${stu_idx}";
		});
	}
</script>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>스터디모집</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	<!-- title -->
	<div class="sub_tit">스터디신청</div>
	
	
	<!-- content 시작 -->

	<div class="auto_box mg_b40">
		<table class="board_read" cellspacing="1" cellpadding="1">
			<tr>
				<th style="text-align:center;">스터디명</th>
				<th style="text-align:center;">진행장소</th>
				<th style="text-align:center;">진행일정</th>
				<th style="text-align:center;">모집인원</th>
			</tr>
			<tr>
				<td style="text-align:center;">${studyDetail.stu_title}</td>
				<td style="text-align:center;">${studyDetail.stu_location}</td>
				<td style="text-align:center;">${studyDetail.stu_date}</td>
				<td style="text-align:center;">${studyDetail.stu_person}</td>
			</tr>
		</table>
	
		<div class="studydangerarea">
			<strong class="studydanger">※ 스터디 신청 유의사항</strong>
		</div>
		
		<div class="studyJoinIntro">
			<ul>
				<li><b>· 스터디 모집은 도서관을 이용하시는 회원분들의 효율적인 도서관 이용을 위한 공간입니다.</b></li>
				<li><b>· 스터디 관련 내용은 도서관이 아닌 스터디 등록 회원에게 문의 바랍니다.</b></li>
				<li><b>· 스터디 진행 시 발생하는 문제는 도서관과 연관 없습니다.</b></li>
				<li><b>· 각종 범죄 발생 시 신속한 신고 및 도서관 측에 문의바랍니다.</b></li>
			</ul>
		</div>
		<form action="/study/join?m1=${m1}&m2=${m2}&stu_code=${stu_code}&stu_idx=${stu_idx}" method="post" enctype="multipart/form-data">
			<table class="board_read" cellspacing="1" cellpadding="1">
				<colgroup><col style="width:20%;"><col style="width:55%;"><col></colgroup>
				<tbody>
					<tr>
						<th class="c">성명</th>
						<td style="text-align:left;">
							<input type="hidden" name="stu_writer" value="${sessionScope.mem_id}"/>
							<input type="hidden" name="stu_rimemnum" value="${sessionScope.rimem_num}"/>
							<input type="text" name="stuap_name" style="width:42%;"/>
						</td>
					</tr>
					<tr>
						<th class="c">연락처</th>
						<td style="text-align:left;">
							<select name="stuap_phone1">
								<option value="">선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> <b class="joinphone">-</b>
							<input type="text" name="stuap_phone2" style="width:15%;"/> <b class="joinphone">-</b>
							<input type="text" name="stuap_phone3" style="width:15%;"/>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="r mg_t20 btns">
				<input type="submit" class="btns_black" value="확인" style="border:0;"/>
				<input type="button" class="btns_black" id="cancel" value="취소" style="border:0;"/>
			</div>
		</form>
	</div>
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>