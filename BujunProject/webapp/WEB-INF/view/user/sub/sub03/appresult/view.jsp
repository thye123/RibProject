<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu03.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>비치희망자료결과</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">비치희망자료결과</div>
	
	
	
	<!-- content 시작 -->
	
	
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">
		<div class="tb_boardss">
			<div class="tb_title">${content.ad_title}</div>
			<div class="tb_infor"><Strong>작성자</Strong><span>${writer}</span><Strong>작성일</Strong> <span>${content.ad_regdate}</span> <Strong>조회수</Strong> <span>${content.ad_count}</span></div>
			<div class="tb_files">
				<c:choose>
					<c:when test="${content.file_filename==null}">
						<span> 첨부된 파일이 없습니다</span>
					</c:when>
					<c:otherwise>
						<a href="<c:out value='/download/external/${content.file_filename}' />">
						${content.file_filename}</a> <span>[${content.file_size}<b>Kbyte</b>]</span>
					</c:otherwise>
				</c:choose>
				<%-- <c:out value='/download/external/${file.file_filename}' /> --%>
				         
			</div>
			<div class="tb_content">${content.ad_content}</div>
		</div>			
		<c:choose>
			<c:when test="${sessionScope.mem_id == 'ADMIN' }">
				<div class="btnst">
					<div class="btns_1">
						<a href="/wishres/UpdateForm?m1=03&m2=06&ad_idx=${content.ad_idx}&ad_code=${ad_code}">수정</a>
					</div>
					<div class="btns_2">
						<a href="/wishres?m1=03&m2=06&nowpage=1&pagecount=10&grpnum=1">목록</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="btnst">
					<div class="btns_2">
						<a href="/wishres?m1=03&m2=06&nowpage=1&pagecount=10&grpnum=1">목록</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		
	</div>
	
	<!-- //table -->
	
<!-- //content 끝 -->
</div>

</div>
	
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>