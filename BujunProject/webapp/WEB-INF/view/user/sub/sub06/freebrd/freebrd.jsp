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
	
	

	<div class="freebrd_box">
		<div class="inner">
			<span class="icon icon12"></span>
			
			<div class="tt">자유게시판</div>
			<p class="mg_b10">상업적인 광고성 글이나 불건전한 내용, 일방적인 비방이나 욕설 등은 예고없이 삭제되며, 건전한 게시판 문화와 홈페이지 운영을 위해 실명제로 운영되고 있음을 알려드립니다. </p>
			<ul class="bul_type1">
				<li>간단한 문의사항은 "자주하는 질문" 을 먼저 확인해주시기 바랍니다. </li>
				<li class="txt_red">본문 또는 첨부파일 내에 개인정보(주민등록번호, 성명, 연락처 등)가 포함 된 게시글은 예고없이 삭제되니 유의하시기 바랍니다.</li>
				<li class="txt_red">개인정보를 포함하여 게시하는 경우에는 불특정 다수에게 개인정보가 노출되어 악용될 수 있으며, 특히 타인의 개인정보가 노출되는 경우에는 개인정보보호법에 따라 처벌받을 수 있음을 알려드립니다.</li>
				<li>비밀번호 입력시 개인정보와 관련된 번호(주민번호, 휴대폰, 전화번호 등) 사용을 자제해주세요. </li>
			</ul>
		</div>
	</div>
	
	
	<form action="/freebrd" method="get" name="search">
			<div class="boardSearch">
				<div class="board_page">
					<span class="p02">Total</span><span class="p01"> : ${pageMaker.totalCount}</span> (<span class="p01">${pageMaker.cri.page}</span>/${pageMaker.lastBlock}페이지)
				</div>
				<div class="board_sch">
					<select name="category" id="category" title="분류">
						<option value="">전체선택</option>
					</select> 
						
					<select name="searchType" id="keyfield" title="검색어">
						<option value="n" <c:out value="${search == null?'selected':''}" />>검색대상</option>
						<option value="t" <c:out value="${search eq 't'?'selected':'' }" />>제목</option>
						<option value="c" <c:out value="${search eq 'c'?'selected':'' }" />>내용</option>
						<option value="tc" <c:out value="${search eq 'tc'?'selected':'' }" />>제목+내용</option>
					</select>
					
		
				<input type="hidden" value="CAT0007" name="bd_catcode"/>
				<input type="hidden" value="06" name="m1"/>
				<input type="hidden" value="03" name="m2"/>
				<input type="hidden" value="1" name="page"/>
				<input type="hidden" value="10" name="perPageNum"/>
				
		 
				<input name="keyword" id="keyword" title="검색어 입력"  value="${keyVal}" placeholder="검색어를 입력하세요" type="text">
				<!-- <input name="srchhidden" title="검색어 입력체크" style="display:none;" type="text"> -->
				
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
			</div>
		</div>
	</form>


		<table class="tb_board">
			<colgroup><col style="width:10%;" /><col/><col style="width:15%;"/><col style="width:10%;" /><col style="width:15%;" /><col style="width:8%;" /></colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">글쓴이</th>
					<th scope="col"  class="n01">공개</th>
					<th scope="col" class="mob_none">작성일자</th>
					<th scope="col" class="bnon mob_none">조회수</th>
				</tr>
			</thead>
			<tbody>
			
			
				<c:choose>
					<c:when test="${boardList == null || BoardList.size() == 0 or pageMaker.totalCount == 0}">
						<td colspan="6" class="bnon">게시물이 없습니다</td>
					</c:when>
					
					<c:otherwise>
						<c:forEach var="brd"  items="${ boardList }">	
							<tr>
								<td>${brd.bd_idx}</td>
								
								<td class="l" >
									<c:choose>
										<c:when test="${brd.bd_step eq 0}">
											<a href="/freebrd_read?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.endPage}&perPageNum=10&searchType=${search}&keyword=${key}&bd_idx=${brd.bd_idx}&flag=1">${brd.bd_title}</a>	
										</c:when>
										<c:otherwise>
											<span style="padding-left:${brd.bd_step * 20}px">[답변] <a href="/freebrd_read?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.endPage}&perPageNum=10&searchType=${search}&keyword=${key}&bd_idx=${brd.bd_idx}&flag=1">${brd.bd_title}</a></span>
										</c:otherwise>
									</c:choose>
								</td>
								
								
								<td>${brd.bd_writer}</td>
								
								<td class="n01">
									<c:choose>
										<c:when test="${brd.bd_open eq 1}">
											공개
										</c:when>
										<c:otherwise>
											비공개
										</c:otherwise>
									</c:choose> 
								</td>
								
								<td class="mob_none">${brd.bd_regdate}</td>
								<td class="bnon mob_none">${brd.bd_count}</td>
							</tr>
						</c:forEach>					
					</c:otherwise>
				</c:choose>
					
			</tbody>
		</table>


	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<a href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10"><span class="firstpage1"><span>처음 페이지</span></span></a>
			
			
			<c:choose>
				<c:when test="${pageMaker.prev}">
					<a href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.startPage-1}&perPageNum=10&searchType=${search}&keyword=${key}"><span class="prevblock1 "><span>1 페이지</span></span></a>
				</c:when>
				<c:otherwise>
					<a href="#"><span class="beforepage1 "><span>이전페이지없음</span></span></a>
				</c:otherwise>
			</c:choose>
		
		
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<c:choose>
					<c:when test="${pageMaker.cri.page == idx}">
						<strong><span>${idx}</span></strong>
					</c:when>
					<c:otherwise>
						<a class="default" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${idx}&perPageNum=10&searchType=${search}&keyword=${key}" ><span>${idx}</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			

			<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
				<a class="nextblock" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.endPage + 1}&perPageNum=10&searchType=${search}&keyword=${key}"><span>다음</span></a>
			</c:if>
			<a class="lastpage" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=${pageMaker.lastBlock}&perPageNum=10&searchType=${search}&keyword=${key}"><span>마지막</span></a>
			
			
			
		</div>
	</div>
	<!-- //페이징 -->	
	
	
	<div class="r mg_t20 btns">
		<a class="btns_black" href="/freebrd_write?bd_catcode=CAT0007&m1=06&m2=03&bd_grp=0&bd_step=0">글쓰기</a>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>