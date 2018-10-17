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
		<li>비치희망자료신청</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">비치희망자료신청</div>
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon8"></span>
			<span style="font-size:16px;">비치희망제도의 원활한 운영을 위해 아래와 같은 자료는 선정에서 제외합니다.</span>
			<ul class="bul_type1">
				<li>소장 도서이거나 구입예정 및 구입&middot;정리 중인 도서</li>
				<li>구판, 품절 및 절판된 도서나 당해 연도 기준 5년 이전에 발간된 자료</li>
				<li>3권 이상의 다권본(전집,시리즈)</li>
				<li>유사한 주제로 소장본이 많은 도서</li>
				<li>수험서, 문제집, 교과서, 학습참고서 등</li>
				<li>논문집, 스프링 제본, 팸플릿, 미출간도서(POD_Printing On Demand : 주문형 도서출판 등)</li>
				<li>판타지, 로맨스, 무협지(문학적 가치가 인정되거나 인지도가 높은 자료는 제외), 만화류(우수학습 만화는 제외)</li>
				<li>신청자의 상업적인 의도가 의심되는 경우(동일 출판사의 도서를 다량 신청하는경우 등)</li>
				<li>고가의 도서(5만원 이상), 원서, 해외 주문도서</li>
				<li>특정종교인을 위한 설교집, 개인의 신앙체험 및 보편 타당성이 없는 개인의 사상이나 주장을 담은 저작물</li>
				<li>지나치게 선정적이거나 폭력적인 자료로 가족 및 사회윤리를 훼손할 우려가 있는 내용의 자료</li>
				<li>소책자, 엽서형, 스프링 도서 등 판형이 도서관 장서로 부적합한 자료 </li>
			</ul>
		</div>
	</div>
	
	<div class="con_mob_pad">
		<div id="tab_depth01" class="w50">
		<ul>
			<li class="active top_btn"><a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">신청내역</a></li>
			<li class="top_btn"><a href="/wishbk02/WriteForm?m1=03&m2=05">신청</a></li>
		</ul>
	</div>
	
	<div class="tab_depth01" >
		<form action="/wishbk" method="GET">
			<div class="boardSearch">
				<div class="board_sch">
					<input type="hidden" value="03" name="m1">
					<input type="hidden" value="05" name="m2">
					<input type="hidden" value="1" name="nowpage">
					<input type="hidden" value="10" name="pagecount">
					<input type="hidden" value="1" name="grpnum">
					<select autofocus name="searchType">
						<option	value="nodate"<c:out value="${searchType == null? 'selected':''}"/>>검색대상</option>
						<option value="title"<c:out value="${searchType eq 'title'?'selected':'' }"/>>책이름</option>
						<option value="content"<c:out value="${searchType eq 'content'?'selected':'' }"/>>내용</option>
						<option value="write"<c:out value="${searchType eq 'write'?'selected':'' }"/>>작성자</option>
						<option value="title+content"<c:out value="${searchType eq 'title+content'?'selected':'' }"/>>책이름+내용</option>
						
						
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
					<th scope="col" width="100">신청인</th>
					<th scope="col" width="300">신청도서</th>
					<th scope="col" width="100">저자</th>
					<th scope="col" width="50">신청일</th>
					<th scope="col" width="50">진행상태</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${appList == null || appList.size() == 0 or pageVo.total == 0}">
						<td colspan="6" class="bnon">게시물이 없습니다</td>
					</c:when>
					<c:otherwise>
						<c:forEach var="app" items="${appList}">
							<tr>
								<td>${app.sc_idx}</td>
								<td>${app.sc_memid}</td>
								<td><a href="/wishbk/view?m1=03&m2=05&sc_idx=${app.sc_idx}">${app.sc_bookname}</a></td>
								<td>${app.sc_author}</td>
								<td>${app.sc_regdate}</td>
								<c:choose>
									<c:when test="${app.sc_during eq 1}">
										<td>신청중</td>									
									</c:when>
									
									<c:otherwise>
										<c:choose>
											<c:when test="${app.sc_during eq 2}">
												<td>처리중</td>									
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${app.sc_during eq 3}">
														<td>배치완료</td>									
													</c:when>
													<c:otherwise>
														<td>취소</td>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
			<!-- 페이징 영역-->
		<div>
			<div class=paging>
				<%@include file="/WEB-INF/view/user/include/apppaging.jspf" %>
			</div>
			<div class="insertbtn">	
				<div class="btn_1"><a href="/wishbk02/WriteForm?m1=03&m2=05">글쓰기</a></div>
			</div>
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