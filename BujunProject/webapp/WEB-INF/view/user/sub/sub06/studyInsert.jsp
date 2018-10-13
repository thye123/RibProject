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
			location.href="/study?m1=${m1}&m2=${m2}&page_num=1&page_grp=1";
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
	<div class="sub_tit">스터디등록</div>
	
	
	<!-- content 시작 -->

	<div class="auto_box mg_b40">
		<form action="/study/addStudy?m1=${m1}&m2=${m2}" method="post" enctype="multipart/form-data">
			<table class="tb_board" cellspacing="1" cellpadding="1">
				<tr>
					<td>작성자</td>
					<td style="text-align:left;">
						<input type="text" name="mem_name" value="${sessionScope.mem_name}" readonly="readonly"/>
						<input type="hidden" name="stu_writer" value="${sessionScope.mem_id}">
						<input type="hidden" name="stu_rimemnum" value="${sessionScope.rimem_num}">
					</td>
				</tr>
				<tr>
					<td>스터디명</td>
					<td style="text-align:left;">
						<input type="text" name="stu_title" style="width:70%;">
					</td>					
				</tr>
				<tr>
					<td>장소</td>
					<td style="text-align:left;">
						<input type="text" name="stu_location" style="width:70%;">
					</td>					
				</tr>
				<tr>
					<td>모집인원</td>
					<td style="text-align:left;">
						<select name="stu_person">
							<option value="">선택</option>
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
							<option value="10">10명</option>
						</select>
					</td>					
				</tr>
				<tr>
					<td>스터디일정</td>
					<td style="text-align:left;">
						<input type="text" name="stu_date" style="width:70%;">
					</td>					
				</tr>
				<tr>
					<td>상세내용</td>
					<td style="text-align:left;">
						<textarea name="stu_content" rows="20" style="resize: none; warp:virtual; width:100%;" ></textarea>
					</td>					
				</tr>
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