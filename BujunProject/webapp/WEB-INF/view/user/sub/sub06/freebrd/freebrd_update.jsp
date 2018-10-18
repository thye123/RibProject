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
	
	
	<script>
		function update() {
			
			document.frupdateFrm.submit();
		}	
	</script>
	
	
	 <form action="/freebrd_updateForm" name="frupdateFrm">	 	 		
		<table class="board_read">
			<tbody>
				<tr>
					<th class="c">제목</th>
					<td><input class="frd_tt" type="text" name="bd_title" value="${boardRead.bd_title}" /></td>
				</tr>		
				<tr>
					<th class="c">내용</th>
					<td><textarea name="bd_content" id="content" style="width: 100%; height: 300px;">${boardRead.bd_content}</textarea></td>
				</tr>										
			</tbody>
		</table>	
	
	
		<input type="hidden" name="bd_catcode" value="${bd_catcode}" />
		<input type="hidden" name="bd_idx" value="${bd_idx}" />
	
		<div class="r mg_t20 btns">
			<a class="btns_blue" onclick="update()">수정하기</a>
			<a class="btns_black" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10">목록</a>
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