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
		<li>공지사항</li>
		<!-- <li>종합자료실</li> -->
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">공지사항</div>
	
	<div class="tab_depth01" >
		<form action="/notice" method="GET">
			<div class="boardSearch">
				<div class="board_sch">
					<input type="hidden" value="06" name="m1">
					<input type="hidden" value="01" name="m2">
					<input type="hidden" value="1" name="nowpage">
					<input type="hidden" value="10" name="pagecount">
					<input type="hidden" value="1" name="grpnum">
					<select autofocus name="searchType" id="keyfield">
						<option	value="nodate"<c:out value="${searchType == null? 'selected':''}"/>>검색대상</option>
						<option value="title"<c:out value="${searchType eq 'title'?'selected':'' }"/>>제목</option>
						<option value="content"<c:out value="${searchType eq 'content'?'selected':'' }"/>>내용</option>
						<option value="write"<c:out value="${searchType eq 'write'?'selected':'' }"/>>작성자</option>
						<option value="title+content"<c:out value="${searchType eq 'title+content'?'selected':'' }"/>>제목+내용</option>
						
					</select>
					<input type="text" size="10" name="keyWord" placeholder="검색어를 입력하세요" />
					<button value="검색" class="boardBtn">검색</button>
				</div>
			</div>
		</form>
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
					<th scope="col" width="50">번  호</th>
					<th scope="col" width="400">제  목</th>
					<th scope="col" width="100">작성자</th>
					<th scope="col" width="70">작성일</th>
					<th scope="col" class="bnon"width="50">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${noticeList == null || noticeList.size() == 0 or pageVo.total == 0}">
						<td colspan="5" class="bnon">게시물이 없습니다</td>
					</c:when>
					<c:otherwise>
						<c:forEach var="notice" items="${noticeList}">
							<tr>
								<td>${notice.ad_idx}</td>
								<td><a href="/notice/view?ad_idx=${notice.ad_idx}&ad_code=${ad_code}&m1=06&m2=01">${notice.ad_title}</a></td>
								<td>${notice.ad_writer}</td>
								<td>${notice.ad_regdate}</td>
								<td class="bnon">${notice.ad_count}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
			<!-- 페이징 영역-->
		<div>
			<div class=paging>
				<%@include file="/WEB-INF/view/user/include/noticepaging.jspf" %>
			</div>
			<c:choose>
				<c:when test="${sessionScope.mem_id == 'ADMIN'}">
					<div class="insertbtn">	
						<div class="btn_1"><a href="/notice/WriteForm?m1=06&m2=01" >글쓰기</a></div>
					</div>
				</c:when>
				<c:otherwise>
				
				</c:otherwise>
			</c:choose>
		</div>
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