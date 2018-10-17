<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


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
		<li>추천도서</li>
		<li>이달의 책</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">공공도서관이 추천하는 이달의 책</div>
	
	<!--  -->
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon2"></span>
			부산광역시공공도서관은 부산시민을 위한 독서정보 길잡이가 되고자 2011년 7월부터 이달의 책을 선정하고 있습니다.
			<ul>
				<li>- 선정분야 : 문학, 비문학, 어린이도서</li>
				<li>- 추천기관 : 부산시교육청 소속 11개 공공도서관</li>
			</ul>
		</div>
	</div>
	
	
	<div id="book_list">
		<div class="title"><span>이달의 책</span></div>
		<ul class="book_list">
			 <li><span><img src="${pageContext.request.contextPath}/resources/user/images/sub/book_level01.png" alt="문학"></span> <a href="/monthbk_read?rec_idx=15&rec_code=CAT0031&searchType=&keyword=&page=1&perPageNum=12&m1=05&m2=01&m3=01"><img src = "/img/7b24d786-1e5d-49b9-9db9-4f2894714220_20181001094821.jpg" /></a></li>
			 <li><span><img src="${pageContext.request.contextPath}/resources/user/images/sub/book_level02.png" alt="비문학"></span> <a href="/monthbk_read?rec_idx=14&rec_code=CAT0031&searchType=&keyword=&page=1&perPageNum=12&m1=05&m2=01&m3=01"><img src="/img/48664928-e884-46df-8801-d00faad70146_20181001094739.jpg" alt="2018년 10월 이달의 책(문학)"></a></li>
			 <li><span><img src="${pageContext.request.contextPath}/resources/user/images/sub/book_level03.png" alt="어린이"></span> <a href="/monthbk_read?rec_idx=13&rec_code=CAT0031&searchType=&keyword=&page=1&perPageNum=12&m1=05&m2=01&m3=01"><img src="/img/443c947e-fa0b-4578-9297-9f85b2408800_20181001094645.jpg" alt="2018년 10월 이달의 책(어린이)"></a></li>
		</ul>
	</div>

	<form action="/monthbk" method="get" name="search">
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
						<option value="w" <c:out value="${search eq 'w'?'selected':'' }" />>글쓴이</option>
						<option value="c" <c:out value="${search eq 'c'?'selected':'' }" />>내용</option>
					</select>
					
		
				<input type="hidden" value="CAT0031" name="rec_code"/>
				<input type="hidden" value="05" name="m1"/>
				<input type="hidden" value="01" name="m2"/>
				<input type="hidden" value="01" name="m3"/>
				<input type="hidden" value="1" name="page"/>
				<input type="hidden" value="12" name="perPageNum"/>
				
		 
				<input name="keyword" id="keyword" title="검색어 입력"  value="${keyVal}" placeholder="검색어를 입력하세요" type="text">
				<!-- <input name="srchhidden" title="검색어 입력체크" style="display:none;" type="text"> -->
				
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>		
			</div>
		</div>
	</form>



	<ul class="month_book">
	
		<c:forEach var="brd"  items="${ boardList }">
			<li>
				<a href="/monthbk_read?rec_idx=${brd.rec_idx}&rec_code=CAT0031&searchType=${search}&keyword=${key}&page=${pageMaker.cri.page}&perPageNum=12&m1=05&m2=01&m3=01">
					<div class="tit">${brd.rec_title}</div>
					<div class="f_l">
						<img src = "/img/${brd.file_filename}" />
					</div>
					<div class="f_r">
						<ul class="con">
							<li>서명 : ${brd.rec_bname}</li>
							<li>저자 : ${brd.rec_author}</li>
							<li>발행자 : ${brd.rec_publisher}</li>
							<li>발행년도 : ${brd.rec_date}</li>
						</ul>
					</div>
					<div class="more">상세보기</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	
	
	
	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<a href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=1&perPageNum=12"><span class="firstpage1"><span>처음 페이지</span></span></a>
			
			
			<c:choose>
				<c:when test="${pageMaker.prev}">
					<a href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=${pageMaker.startPage-1}&perPageNum=12&searchType=${search}&keyword=${key}"><span class="prevblock1 "><span>1 페이지</span></span></a>
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
						<a class="default" href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=${idx}&perPageNum=12&searchType=${search}&keyword=${key}" ><span>${idx}</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			

			<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
				<a class="nextblock" href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=${pageMaker.endPage + 1}&perPageNum=12&searchType=${search}&keyword=${key}"><span>다음</span></a>
			</c:if>
			<a class="lastpage" href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=${pageMaker.lastBlock}&perPageNum=12&searchType=${search}&keyword=${key}"><span>마지막</span></a>
			
			
			
		</div>
	</div>
	<!-- //페이징 -->	
		
		
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class="r mg_t20 btns">
			<a class="btns_black" href="/monthbk_write?rec_code=CAT0031&m1=05&m2=01&m3=01">글쓰기</a>
		</div>
	</sec:authorize>
	



<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>