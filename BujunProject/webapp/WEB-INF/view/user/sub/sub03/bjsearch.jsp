<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu03.jsp" %>   

			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>자료찾기</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">자료찾기</div>



<div class="booksch">
	<form name="formSearchSt" id="formSearchSt" method="get">
	
	<input type="hidden" name="chk" value="1" />

	<div class="top_sch">
		<input type="text" name="kwd" id="search_text" title="검색어 입력" value="${kwd}" placeholder="검색어를 입력하세요">		
		<input type="submit" class="searchBtn" value="검색">
		
		<input type="hidden" name="page" value="1" />
		<input type="hidden" name="m1" value="03" />
		<input type="hidden" name="m2" value="01" />
				
	</div> 

		
	<div id="SearchDetail" class="boxlist">
			<ul>
				<li>
					<div class="title1"><label for="sort">정렬조건</label></div>
						<select id="sort" name="sort_select5">
							<option value="" <c:out value="${sort_select5 == null?'selected':''}" />>전체</option>
							<option value="it_desc" <c:out value="${sort_select5 == 'it_desc'?'selected':''}" />>제목 내림차순</option>
							<option value="it_asc" <c:out value="${sort_select5 == 'it_asc'?'selected':''}" />>제목 오름차순</option>
							<option value="ia_desc" <c:out value="${sort_select5 == 'ia_desc'?'selected':''}" />>저자 내림차순</option>
							<option value="ia_asc" <c:out value="${sort_select5 == 'ia_asc'?'selected':''}" />>저자 오름차순</option>
							<option value="ip_desc" <c:out value="${sort_select5 == 'ip_desc'?'selected':''}" />>출판사 내림차순</option>
							<option value="ip_asc" <c:out value="${sort_select5 == 'ip_asc'?'selected':''}" />>출판사 오름차순</option>
							<option value="yr_desc" <c:out value="${sort_select5 == 'yr_desc'?'selected':''}" />>발행년 내림차순</option>
							<option value="yr_asc" <c:out value="${sort_select5 == 'yr_asc'?'selected':''}" />>발행년 오름차순</option>
						</select>
					</li>
					<li>
					<div class="title1"><label for="formclass">자료형태</label></div>
						<select id="formclass" name="sort_select3">	
							<option value="" <c:out value="${sort_select3 == null?'selected':''}" />>전체</option>
							<option value="GM" <c:out value="${sort_select3 == '일반자료'?'selected':''}" />>일반자료</option>
							<option value="HA" <c:out value="${sort_select3 == '교과서'?'selected':''}" />>교과서</option>
							<option value="HR" <c:out value="${sort_select3 == '학습서'?'selected':''}" />>학습서</option>
 							<option value="MA" <c:out value="${sort_select3 == '잡지'?'selected':''}" />>잡지</option>
							<option value="NP" <c:out value="${sort_select3 == '신문'?'selected':''}" />>신문</option>
							<option value="CA" <c:out value="${sort_select3 == '만화'?'selected':''}" />>만화</option>
							<option value="OBJ" <c:out value="${sort_select3 == '아동,청소년 도서'?'selected':''}" />>아동,청소년 도서</option>
 							<option value="MED" <c:out value="${sort_select3 == '점자자료'?'selected':''}" />>점자자료</option> 
						</select>
					</li>
					
				
				<li>
					<div class="title1"><label for="startyear">발행년도</label></div> 
					<div class="cons">
						<div class="w5s">
						<input id="startyear" name="startDate" title="발행년도 시작일" type="text" maxlength="4" size="5" value="${startDate}">	</div>
						<span class="aaaa"><label for="startyear">년 부터</label></span>
						<div class="w5s"><input id="endyear" name="endDate" title="발행년도 종료일" maxlength="4" size="5" type="text" value="${endDate}">	</div>
						<span class="aaaa1"><label for="endyear">년 까지</label></span>
					</div>
				</li>


				<li>
					<div class="title1"><label for="local">자료실</label></div>
					<select name="sort_select1" id="local">
						<option value="" <c:out value="${sort_select1 == null?'selected':''}" />>적용안함</option>
						<option value="001" <c:out value="${sort_select1 == '종합자료실'?'selected':''}" />>종합자료실</option>
						<option value="002" <c:out value="${sort_select1 == '어린이실'?'selected':''}" />>어린이실</option>
						<option value="003" <c:out value="${sort_select1 == '아동실'?'selected':''}" />>아동실</option>
						<option value="004" <c:out value="${sort_select1 == '분관아동'?'selected':''}" />>분관아동</option>
						<option value="005" <c:out value="${sort_select1 == '분관종합실'?'selected':''}" />>분관종합실</option>
						<option value="006" <c:out value="${sort_select1 == '종합실'?'selected':''}" />>종합실</option>
						<option value="007" <c:out value="${sort_select1 == '서고'?'selected':''}" />>서고</option>
						<option value="008" <c:out value="${sort_select1 == '보존서고'?'selected':''}" />>보존서고</option>
						<option value="009" <c:out value="${sort_select1 == '유아서고'?'selected':''}" />>유아서고</option>
						<option value="010" <c:out value="${sort_select1 == '분관서고(일반)'?'selected':''}" />>분관서고(일반)</option>
						<option value="011" <c:out value="${sort_select1 == '분관서고(유아,그림책)'?'selected':''}" />>분관서고(유아,그림책)</option>
						<option value="012" <c:out value="${sort_select1 == '분관서고(관광)'?'selected':''}" />>분관서고(관광)</option>
						<option value="013" <c:out value="${sort_select1 == '스마트 도서관'?'selected':''}" />>스마트 도서관</option>
						<option value="014" <c:out value="${sort_select1 == '문적원2실'?'selected':''}" />>문적원2실</option>
						<option value="015" <c:out value="${sort_select1 == '디지털자료실'?'selected':''}" />>디지털자료실</option>
						<option value="016" <c:out value="${sort_select1 == '분관디지털(DVD)'?'selected':''}" />>분관디지털(DVD)</option>
						<option value="017" <c:out value="${sort_select1 == '멀티미디어실'?'selected':''}" />>멀티미디어실</option>
						<option value="018" <c:out value="${sort_select1 == '유아자료실(1층)'?'selected':''}" />>유아자료실(1층)</option>
						<option value="019" <c:out value="${sort_select1 == '아동자료실(2층)'?'selected':''}" />>아동자료실(2층)</option>			
					</select>					
				</li>
				
			</ul>

			
	</div> 
	</form>
</div>	

			
	<c:if test="${list ne null}">
		<div class="mg_b10"><span class="red">${kwd}</span> 검색 결과 (${total} 종)</div>
	
		<ul class="bj_search_wrap">
			<c:forEach var="lis"  items="${ list }">
				<li>
					<div class="bj_search">
						<ul>
							<li>책 이름 : ${lis.title}</li>
							<li>저자 : ${lis.author}</li>
							<li>출판사 : ${lis.pubInfo}</li>
							<li>자료구분 : ${lis.gubun}</li>
							<li>청구기호 : ${lis.giho}</li>
							<li>KDC : ${lis.kdc}</li>
						</ul>
					</div>
				</li>			
			</c:forEach>	
		</ul>
		
		
		<div style="clear:both;"></div>
			
			
		<!-- 페이징 -->
		<div class="board-list-paging">
			<div class="pagelist">
				<a href="/bjsearch?kwd=${kwd}&sort_select1=${sort_select1}&sort_select3=${sort_select3}&startDate=${startDate}&endDate=${endDate}&page=1&perPageNum=12&chk=1&m1=03&m2=01&sort_select5=${sort_select5}"><span class="firstpage1"><span>처음 페이지</span></span></a>
				
				
				<c:choose>
					<c:when test="${pageMaker.prev}">
						<a href="/bjsearch?kwd=${kwd}&sort_select1=${sort_select1}&sort_select3=${sort_select3}&startDate=${startDate}&endDate=${endDate}&page=${pageMaker.startPage-1}&perPageNum=12&chk=1&m1=03&m2=01&sort_select5=${sort_select5}"><span class="prevblock1 "><span>1 페이지</span></span></a>
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
							<a class="default" href="/bjsearch?kwd=${kwd}&sort_select1=${sort_select1}&sort_select3=${sort_select3}&startDate=${startDate}&endDate=${endDate}&page=${idx}&perPageNum=12&chk=1&m1=03&m2=01&sort_select5=${sort_select5}" ><span>${idx}</span></a>
						</c:otherwise>
					</c:choose>
				</c:forEach>	
				
	
				<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
					<a class="nextblock" href="/bjsearch?kwd=${kwd}&sort_select1=${sort_select1}&sort_select3=${sort_select3}&startDate=${startDate}&endDate=${endDate}&page=${pageMaker.endPage + 1}&perPageNum=12&chk=1&m1=03&m2=01&sort_select5=${sort_select5}"><span>다음</span></a>
				</c:if>
				<%-- <a class="lastpage" href="/bjsearch?kwd=${kwd}&sort_select1=${sort_select1}&sort_select3=${sort_select3}&startDate=${startDate}&endDate=${endDate}&page=${pageMaker.lastBlock2}&perPageNum=12&chk=1&m1=03&m2=01&sort_select5=${sort_select5}"><span>마지막</span></a> --%>
				
				
				
			</div>
		</div>
		<!-- //페이징 -->	
	
	</c:if>









		
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>