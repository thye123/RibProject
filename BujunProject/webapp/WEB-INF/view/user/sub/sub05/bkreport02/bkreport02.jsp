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
		<li>부산시민독후감공모</li>
		<li>원북원부산 독후감</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">원북원부산 독후감</div>
	
	
	
	<!-- content 시작 -->
	
	
	<h2 class="tbul1">공모기간</h2>
	<p class="mg_b40">2018.7.1.(일)~9.30.(일)</p>
	
	<h2 class="tbul1">결과발표</h2>
	<p class="mg_b40">2018.11.15.(목) 예정 (시민도서관 홈페이지 공지)</p>
	
	<h2 class="tbul1">참여대상 및 공모부분</h2>
	<ul class="bul_type1 mg_b40">
		<li>중.고등부 : 부산시내 중.고등학생</li>
		<li>일반부 : 부산시내 거주 일반 성인 누구나(대학생 포함)</li>
	</ul>
	
	<h2 class="tbul1">독후감제출기준</h2>
	<ul class="bul_type1 mg_b40">
		<li>중.고등부 : 200자 원고지 기준 8매(A4 2매, 글자크기 12포인트,줄간격 160%) 이상</li>
		<li>일반부 : 200자 원고지 12매(A4 3~5매, 글자크기 12포인트,줄간격 160%) 이내</li>
	</ul>	
	
		
	<h2 class="tbul1">필수기재</h2>
	<ul class="bul_type1">
		<li>학생 : 학교명,학년,반,성명,본인 휴대폰 반드시 기재</li>
		<li>일반 : 자택주소, 휴대폰 반드시 기재</li>
	</ul>	
	<div class="mg_b40"><a href="${pageContext.request.contextPath}/resources/user/file/smin.hwp" target="_blank" class="btn_con btn_down" title="새창으로열림">응모서식 다운로드</a></div>
	
	
	<h2 class="tbul1">독후감공모 대상자료</h2>
	<ul class="bul_type1 mg_b10">
		<li>[아몬드] 손원평 지음<br /> 2018 원북 선정도서</li>
	</ul>		
	
	

	<h2 class="tbul1">제출처&문의</h2>
	<ul class="bul_type1 mg_b40">
		<li>제출처 : 부산광역시립부전도서관</li>
		<li>문    의 :부전도서관 종합자료실(802-6304,내선1번)</li>
	</ul>		
	
	
	<h2 class="tbul1">독후감 제출 유의사항</h2>
	<p class="mg_b70">※개인정보 노출 방지를 위해 글을 올릴 때 반드시 ‘비공개’ 체크해주시기 바랍니다. (작성하신 글은 관리자만 확인 가능합니다.)</p>
	
	
	
	
	
	<form action="/bkreport02" method="get" name="search">
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
					
		
				<input type="hidden" value="CAT0006" name="bd_catcode"/>
				<input type="hidden" value="05" name="m1"/>
				<input type="hidden" value="08" name="m2"/>
				<input type="hidden" value="02" name="m3"/>
				<input type="hidden" value="1" name="page"/>
				<input type="hidden" value="10" name="perPageNum"/>
				
		 
				<input name="keyword" id="keyword" title="검색어 입력"  value="${keyVal}" placeholder="검색어를 입력하세요" type="text">
				<!-- <input name="srchhidden" title="검색어 입력체크" style="display:none;" type="text"> -->
				
				<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
			</div>
		</div>
	</form>


		<table class="tb_board">
			<colgroup><col style="width:10%;" /><col/><col style="width:20%;"/><col style="width:15%;" /><col style="width:8%;" /></colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col" class="n01">글쓴이</th>
					<th scope="col" class="mob_none">작성일자</th>
					<th scope="col" class="bnon mob_none">조회수</th>
				</tr>
			</thead>
			<tbody>
			
				<c:choose>
					<c:when test="${boardList == null || BoardList.size() == 0 or pageMaker.totalCount == 0}">
						<td colspan="5" class="bnon">게시물이 없습니다</td>
					</c:when>
					
					<c:otherwise>
						<c:forEach var="brd"  items="${ boardList }">	
							<tr>
								<td>${brd.bd_idx}</td>
								<td class="l"><a href="/bkreport02_read?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=${pageMaker.endPage}&perPageNum=10&searchType=${search}&keyword=${key}&bd_idx=${brd.bd_idx}&flag=1">${brd.bd_title}</a></td>
								<td class="n01">${brd.bd_writer}</td>
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
			<a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10"><span class="firstpage1"><span>처음 페이지</span></span></a>
			
			
			<c:choose>
				<c:when test="${pageMaker.prev}">
					<a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=${pageMaker.startPage-1}&perPageNum=10&searchType=${search}&keyword=${key}"><span class="prevblock1 "><span>1 페이지</span></span></a>
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
						<a class="default" href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=${idx}&perPageNum=10&searchType=${search}&keyword=${key}" ><span>${idx}</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			

			<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
				<a class="nextblock" href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=${pageMaker.endPage + 1}&perPageNum=10&searchType=${search}&keyword=${key}"><span>다음</span></a>
			</c:if>
			<a class="lastpage" href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=${pageMaker.lastBlock}&perPageNum=10&searchType=${search}&keyword=${key}"><span>마지막</span></a>
			
			
			
		</div>
	</div>
	<!-- //페이징 -->	

	
	<div class="r mg_t20 btns">
		<a class="btns_black" href="/bkreport02_write?bd_catcode=CAT0006&m1=05&m2=08&m3=02">글쓰기</a>
	</div>
	
	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>