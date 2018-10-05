<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu06.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>자유게시판</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">자유게시판</div>
	
	
	
	<!-- content 시작 -->
			
	<table class="board_read">
		<colgroup><col style="width:20%;" /><col  /><col style="width:20%;" /><col /></colgroup>		
		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td colspan="3">${boardRead.bd_title}</td>
			</tr>
			<tr>
				<th class="c">작성자</th>
				<td>${boardRead.bd_writer}</td>
				<th class="c">작성일</th>
				<td>${boardRead.bd_regdate}</td>							
			</tr>			
			<tr>
				<td colspan="4" class="contents">
					 ${boardRead.bd_content}
				</td>
			</tr>
			
		</tbody>
	</table>
	
	
	
	<div class="r mg_t20 btns">
		<a class="btns_black" href="/freebrd_write?bd_catcode=CAT0007&m1=06&m2=03&bd_grp=${boardRead.bd_grp}&bd_step=0">관리자답변</a>
		<a class="btns_blue" href="/freebrd_update?bd_catcode=${bd_catcode}&m1=06&m2=03&page=${page}&perPageNum=${perPageNum}&flag=2&bd_pass_chk=${bd_pass_chk}&bd_idx=${bd_idx}">수정</a>
		<a class="btns_black" href="/freebrd_delete?bd_catcode=${bd_catcode}&m1=06&m2=03&page=${page}&perPageNum=${perPageNum}&flag=3&bd_pass_chk=${bd_pass_chk}&bd_idx=${bd_idx}">삭제</a>
		<a class="btns_black" href="/freebrd?bd_catcode=${bd_catcode}&m1=06&m2=03&page=1&perPageNum=${perPageNum}&searchType=${searchType}&keyword=${keyword}">목록</a>
	</div>
	
	
	
	
	<!-- /freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10 -->
	
	
	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>