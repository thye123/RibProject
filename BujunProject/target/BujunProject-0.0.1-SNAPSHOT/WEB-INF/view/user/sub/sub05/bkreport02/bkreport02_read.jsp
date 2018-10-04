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
		<li>부산시민독후감공모</li>
		<li>원북원부산 독후감</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">원북원부산 독후감</div>
	
	
	
	<!-- content 시작 -->
	
	
	<table class="board_read">
		<colgroup><col style="width:20%;"><col style="width:55%;"><col></colgroup>		
		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td>${boardRead.bd_title}</td>
			</tr>
			<tr>
				<th class="c">지원부문</th>
				<td>${boardRead.bd_gubun}</td>
			</tr>
			<tr>
				<th class="c">첨부파일</th>
				<td>
					<a href="<c:out value='/download/external/${boardRead.file_filename}' />">
						${boardRead.file_filerealname}
					</a>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="contents">
					${boardRead.bd_content}
				</td>
			</tr>
			
		</tbody>
	</table>
	
	
	<div class="r mg_t20 btns">
		<a class="btns_blue" href="/bkreport02_update?bd_catcode=${bd_catcode}&m1=05&m2=08&m3=02&page=${page}&perPageNum=${perPageNum}&flag=2&bd_pass_chk=${bd_pass_chk}&bd_idx=${bd_idx}">수정</a>
		<a class="btns_black" href="/bkreport02_delete?bd_catcode=${bd_catcode}&m1=05&m2=08&m3=02&page=${page}&perPageNum=${perPageNum}&flag=3&bd_pass_chk=${bd_pass_chk}&bd_idx=${bd_idx}">삭제</a>
		<a class="btns_black" href="/bkreport02?bd_catcode=${bd_catcode}&m1=05&m2=08&m3=02&page=1&perPageNum=${perPageNum}&searchType=${searchType}&keyword=${keyword}">목록</a>
	</div>
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>