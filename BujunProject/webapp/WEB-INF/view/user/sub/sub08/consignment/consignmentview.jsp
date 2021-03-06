<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu08.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>개인정보</li>
		<li>개인정보처리위탁</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">개인정보처리위탁</div>
	
	
	
	<!-- content 시작 -->
	
	
	<!-- table -->
		<div class="tb_boardss">
			<div class="tb_title">${content.ad_title}</div>
			<div class="tb_infor"><Strong>작성자</Strong><span>${writer}</span><Strong>작성일</Strong> <span>${content.ad_regdate}</span> <Strong>조회수</Strong> <span>${content.ad_count}</span></div>
			<div class="tb_content">${content.ad_content}</div>
		</div>			
		<c:choose>
			<c:when test="${sessionScope.mem_id == 'ADMIN' }">
				<div class="btnst">
					<div class="btns_1">
						<a href="/personalinfo02/UpdateForm?m1=08&m2=01&m3=02&ad_idx=${content.ad_idx}&ad_code=${ad_code}">수정</a>
					</div>
					<div class="btns_2">
						<a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">목록</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="btnst">
					<div class="btns_2">
						<a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">목록</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		
	
	<!-- //table -->
	
<!-- //content 끝 -->
</div> 

</div>
	
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>