<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu07.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>정보공개</li>
		<li>정보목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">정보공개</div>
	
	<div class="tab_depth01">
		<ul class="n03">
			<li><a href="/info01?m1=07&m2=01&m3=01" class="on">정보공개제도안내</a></li>
			<li><a href="/info02?m1=07&m2=01&m3=02">사전공표대상 및 비공개대상목록</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=03&page_num=1">정보목록</a></li>
			<li><a href="#">정보공개청구</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=05&page_num=1">사전공표대상공개</a></li>
		</ul>
	</div>
	
	
	<!-- content 시작 -->
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<thead>
				<tr>
					<td width="80px">번호</td>
					<td width="538px">제목</td>
					<td	width="100px">글쓴이</td>
					<td width="170px">작성일자</td>
					<td width="100px">조회수</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cList" items="${contentList}">
					<tr>
						<td>${cList.idx}</td>
						<td style="text-align:left;">${cList.ad_title}</td>
						<td>${cList.ad_memname}</td>
						<td>${cList.ad_regdate}</td>
						<td>${cList.ad_count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			
	</div>
	<!-- //table -->
	
	<!-- //게시판테이블(리스트) -->
	
	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<span class="firstpage1"><span>처음 페이지</span></span>
			
			<span class="prevblock1 hidden"><span>1 페이지</span></span>
			<span class="beforepage1 "><span>이전페이지없음</span></span> <!-- 이전페이지 없을때 -->
			<c:set var="endnum" 	value="${paging.end_page}"></c:set>
			<c:set var="startnum" 	value="${paging.start_page}"></c:set>
				<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
					<a href="/info03?&page_num=${Paging}">${Paging}</a>
				</c:forEach>
	
			<a class="afterpage hidden" href="#"><span>앞페이지</span></a>
			<a class="nextblock" href="#"><span>6 페이지</span></a>
			<a class="lastpage" href="#"><span>21 페이지</span></a>
		</div>
	</div>
	<!-- //페이징 -->	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>