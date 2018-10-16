<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu02.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>특성화(금융정보)자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">서평목록</div>
	
	
	<!-- content 시작 -->
	
	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
			<li ><a href="/finref02?m1=02&m2=02&m3=05">부산시공공도서관특성화</a></li>
			<li><a href="/finref03?m1=02&m2=02&m3=05">금융관련사이트</a></li>
			<li><a href="/finref04?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">특성화행사</a></li>
			<li class="active"><a href="/finref05?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">서평목록</a></li>
			<li><a href="/finref06?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">신문기사색인</a></li>
			<li><a href="/finref07?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">알짜·경제금융상식</a></li>
		</ul>
	</div>
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="tab_depth01" >
		<form action="/finref05" method="GET">
			<div class="boardSearch">
				<div class="board_sch">
					<input type="hidden" value="02" name="m1">
					<input type="hidden" value="02" name="m2">
					<input type="hidden" value="05" name="m3">
					<input type="hidden" value="1" name="nowpage">
					<input type="hidden" value="10" name="pagecount">
					<input type="hidden" value="1" name="grpnum">
					<select autofocus name="searchType">
						<option	value=""<c:out value="${searchType == null? 'selected':''}"/>>검색대상</option>
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
					<th scope="col" width="70">작성일</th>
					<th scope="col" class="bnon"width="50">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${bankBoardList == null || bankBoardList.size() == 0 or pageVo.total == 0}">
						<td colspan="5" class="bnon">게시물이 없습니다</td>
					</c:when>
					<c:otherwise>
						<c:forEach var="bankboard" items="${bankBoardList}">
							<tr>
								<td>${bankboard.ad_idx}</td>
								<td><a href="/finref05/view?m1=02&m2=02&m3=05&ad_idx=${bankboard.ad_idx}&ad_code=${ad_code}">${bankboard.ad_title}</a></td>
								<td>${bankboard.ad_regdate}</td>
								<td class="bnon">${bankboard.ad_count}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
			<!-- 페이징 영역-->
		<div>
			<div class=paging>
				<%@include file="/WEB-INF/view/user/include/bankpaging2.jspf" %>
			</div>
			<div class="insertbtn">	
				<button class="btn_1"><a href="/finref05/WriteForm?m1=02&m2=02&m3=05">글쓰기</a></button>
			</div>
		</div>
	</div>

<!-- //content 끝 -->
</div>


		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>