<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


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
	
	
	
	<!-- content 시작 -->
	
	<table class="board_read">
		<colgroup><col style="width:20%;"><col /><col style="width:15%;" /><col style="width:15%;" /><col style="width:10%;" /><col style="width:10%;" /></colgroup>		
		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td colspan="5">${boardRead.rec_title}</td>
			</tr>
			<tr>
				<th class="c">작성일</th>
				<td>${boardRead.rec_regdate}</td>
				<th class="c">작성자</th>
				<td>${boardRead.rec_writer}</td>			
				<th class="c">조회수</th>
				<td>${boardRead.rec_count}</td>							
			</tr>
			<tr>
				<th class="c">첨부파일</th>
				<td colspan="5">
					<a href="<c:out value='/download/external/${boardRead.file_filename}' />">
						${boardRead.file_filerealname}
					</a>
				</td>
			</tr>
			<tr>
				<td colspan="6" class="contents" class="c">
					<p class="c mg_b10"><img src = "/img/${boardRead.file_filename}" style="width:300px" /></p>
					${boardRead.rec_content}
				</td>
			</tr>
			
		</tbody>
	</table>
	
	
	<div class="r mg_t20 btns">
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a class="btns_blue" href="/monthbk_update?rec_code=${rec_code}&m1=05&m2=01&m3=01&page=${page}&perPageNum=12&searchType=${searchType}&keyword=${keyword}&rec_idx=${boardRead.rec_idx}">수정</a>
			<a class="btns_black" href="/monthbk_delete?rec_code=${boardRead.rec_code}&rec_idx=${boardRead.rec_idx}">삭제</a>
		</sec:authorize>
		
		<a class="btns_black" href="/monthbk?rec_code=${rec_code}&m1=05&m2=01&m3=01&page=${page}&perPageNum=12&searchType=${searchType}&keyword=${keyword}">목록</a>
	</div>
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>