<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


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

	<form action="/bkreport01" method="get" name="search">
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
					
		
				<input type="hidden" value="CAT0005" name="bd_catcode"/>
				<input type="hidden" value="05" name="m1"/>
				<input type="hidden" value="08" name="m2"/>
				<input type="hidden" value="01" name="m3"/>
				<input type="hidden" value="01" name="m3"/>
				<input type="hidden" value="1" name="page"/>
				<input type="hidden" value="10" name="perPageNum"/>
				
		 
				<input name="keyword" id="keyword" title="검색어 입력"  value="${keyVal}" placeholder="검색어를 입력하세요" type="text">
				<!-- <input name="srchhidden" title="검색어 입력체크" style="display:none;" type="text"> -->
				
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>		
			</div>
		</div>
	</form>



	<ul class="month_book">
		<li>
			<a href="#">
				<div class="tit">2018년 10월 이달의 책(문학)</div>
				<div class="f_l">
					<img src="${pageContext.request.contextPath}/resources/user/images/sub/20181001094821.jpg" alt="" />
				</div>
				<div class="f_r">
					<ul class="con">
						<li>서명 : 박완서의 말</li>
						<li>저자 : 박완서</li>
						<li>발행자 : 마음산책</li>
						<li>발행자 : 마음산책</li>
					</ul>
				</div>
				<div class="more">상세보기</div>
			</a>
		</li>
		
		<li>
			<a href="#">
				<div class="tit">2018년 10월 이달의 책(문학)</div>
				<div class="f_l">
					<img src="${pageContext.request.contextPath}/resources/user/images/sub/20181001094821.jpg" alt="" />
				</div>
				<div class="f_r">
					<ul class="con">
						<li>서명 : 박완서의 말</li>
						<li>저자 : 박완서</li>
						<li>발행자 : 마음산책</li>
						<li>발행자 : 마음산책</li>
					</ul>
				</div>
				<div class="more">상세보기</div>
			</a>
		</li>
		
		<li>
			<a href="#">
				<div class="tit">2018년 10월 이달의 책(문학)</div>
				<div class="f_l">
					<img src="${pageContext.request.contextPath}/resources/user/images/sub/20181001094821.jpg" alt="" />
				</div>
				<div class="f_r">
					<ul class="con">
						<li>서명 : 박완서의 말</li>
						<li>저자 : 박완서</li>
						<li>발행자 : 마음산책</li>
						<li>발행자 : 마음산책</li>
					</ul>
				</div>
				<div class="more">상세보기</div>
			</a>
		</li>			
	</ul>



	<!-- 페이징 -->
<%-- 	<div class="board-list-paging">
		<div class="pagelist">
			<a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10"><span class="firstpage1"><span>처음 페이지</span></span></a>
			
			
			<c:choose>
				<c:when test="${pageMaker.prev}">
					<a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=${pageMaker.startPage-1}&perPageNum=10&searchType=${search}&keyword=${key}"><span class="prevblock1 "><span>1 페이지</span></span></a>
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
						<a class="default" href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=${idx}&perPageNum=10&searchType=${search}&keyword=${key}" ><span>${idx}</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			

			<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
				<a class="nextblock" href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=${pageMaker.endPage + 1}&perPageNum=10&searchType=${search}&keyword=${key}"><span>다음</span></a>
			</c:if>
			<a class="lastpage" href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=${pageMaker.lastBlock}&perPageNum=10&searchType=${search}&keyword=${key}"><span>마지막</span></a>
			
			
			
		</div>
	</div> --%>
	<!-- //페이징 -->	

	
<!-- 	<div class="r mg_t20 btns">
		<a class="btns_black" href="/bkreport01_write?bd_catcode=CAT0005&m1=05&m2=08&m3=01">글쓰기</a>
	</div> -->
	
	
	



	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>