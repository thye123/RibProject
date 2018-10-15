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
		<li>이달의 책</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">공공도서관이 추천하는 이달의 책</div>
	
	
	<script>
		function monthBookUpdate() {
			
			var file = document.getElementById("file");
			
			if(file.value == "") {
				alert("선택된 파일이 없습니다. 파일을 선택해주세요.");
				file.focus();
				return;
			}
			
			//이미지파일만 첨부할 수 있게
			var index = $("#file").val().lastIndexOf(".");
			var extention = $("#file").val().substring(index+1);
			if(extention != "gif" && extention != "jpeg" && extention != "jpg" && extention != "png"
					&& extention != "JPG" && extention != "JPEG") {
				alert("이미지 파일만 업로드 가능합니다");
				return;
			}
			
			document.monthBookUpdateFrm.submit();
		}	
	</script>		
	
	<!-- content 시작 -->
	
	<form name="monthBookUpdateFrm" enctype="multipart/form-data" method="post"  action="/monthbk_updateForm" >
		<table class="board_read">
			<tbody>
				<tr>
					<th class="c">제목</th>
					<td><input type="text" name="rec_title" id="rec_title" value="${boardRead.rec_title}"/> </td>
				</tr>	
				<tr>
					<th class="c">서명</th>
					<td><input type="text" name="rec_bname" id="rec_bname" value="${boardRead.rec_bname}" /> </td>
				</tr>	
				<tr>
					<th class="c">저자</th>
					<td><input type="text" name="rec_author" id="rec_author" value="${boardRead.rec_author}"/> </td>
				</tr>	
				<tr>
					<th class="c">발행자</th>
					<td><input type="text" name="rec_publisher" id="rec_publisher" value="${boardRead.rec_publisher}" /> </td>
				</tr>	
				<tr>
					<th class="c">발행년도</th>
					<td><input type="text" name="rec_date" id="rec_date" value="${boardRead.rec_date}" /> </td>
				</tr>
				<tr>
					<th class="c">첨부파일</th>
					<td><input type="file" name="file" id="file" />
					</td>
				</tr>					
				<tr>
					<th class="c">내용</th>
					<td><textarea name="rec_content" id="rec_content" style="width: 100%; height: 300px;">${boardRead.rec_content}</textarea></td>
				</tr>				

			</tbody>
		</table>
		
		<input type="hidden" name="rec_code" value="${boardRead.rec_code}" />	
		<input type="hidden" name="rec_idx" value="${boardRead.rec_idx}" />	
	
	
	<div class="r mg_t20 btns">
		<a class="btns_blue" onclick="monthBookUpdate()">수정하기</a>
		<a class="btns_black" href="/monthbk?rec_code=${boardRead.rec_code}&m1=05&m2=01&m3=01&page=${page}&perPageNum=12&searchType=${searchType}&keyword=${keyword}">목록</a>
	</div>
	
	</form>
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>