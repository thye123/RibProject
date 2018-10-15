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
		<li>나의도서대출정보</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">나의도서대출정보</div>
	
	<div id="tab_depth01" class="w33">
		<ul>
			<li><a href="/mbinfo?m1=03&m2=04&page=1&perPageNum=10">전체</a></li>
			<li><a href="/mbinfo01?m1=03&m2=04&brt_gubun=1&page=1&perPageNum=10">대출중</a></li>
			<li class="active"><a href="/mbinfo02?m1=03&m2=04&brt_gubun=2&page=1&perPageNum=10">반납완료</a></li>
		</ul>
	</div>
	
	<table class="tb_board">
		<colgroup><col style="width:8%;" /><col /><col style="width:10%;" /><col style="width:10%;" /><col style="width:10%;" /></colgroup>
		<thead>
			<tr>
				<th scope="col">순번</th>
				<th scope="col">제목</th>
				<th scope="col">상태</th>
				<th scope="col">대출일</th>
				<th scope="col" class="bnon">반납예정일</th>
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
							<td>${brd.rn}</td>
							<td class="l">${brd.brt_title}</td>
							<td>
								
								<c:choose>
									<c:when test="${brd.brt_gubun eq 1}">
										대출중
									</c:when>
									<c:otherwise>
										반납완료
									</c:otherwise>
								</c:choose>
		
							</td>
							<td>${brd.brt_rdate}</td>
							<td class="bnon">${brd.brt_redate}</td>
						</tr>
					</c:forEach>				
				</c:otherwise>
			</c:choose>
			
		</tbody>
	</table>
	
	
	<c:choose>
		<c:when test="${boardList == null || BoardList.size() == 0 or pageMaker.totalCount == 0}">


		</c:when>
		<c:otherwise>
			<!-- 페이징 -->
			<div class="board-list-paging">
				<div class="pagelist">
					<a href="/mbinfo01?m1=03&m2=04&page=1&perPageNum=10&brt_gubun=1"><span class="firstpage1"><span>처음 페이지</span></span></a>
					
					
					<c:choose>
						<c:when test="${pageMaker.prev}">
							<a href="/mbinfo02?m1=03&m2=04&page=${pageMaker.startPage-1}&perPageNum=10&brt_gubun=2"><span class="prevblock1 "><span>1 페이지</span></span></a>
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
								<a class="default" href="/mbinfo02?m1=03&m2=04&page=${idx}&perPageNum=10&brt_gubun=2" ><span>${idx}</span></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>	
					
		
					<c:if test = "${pageMaker.next && pageMaker.endPage > 0}" >
						<a class="nextblock" href="/mbinfo02?m1=03&m2=04&page=${pageMaker.endPage + 1}&perPageNum=10&brt_gubun=2"><span>다음</span></a>
					</c:if>
					<a class="lastpage" href="/mbinfo02?m1=03&m2=04&page=${pageMaker.lastBlock}&perPageNum=10&brt_gubun=2"><span>마지막</span></a>
					
					
					
				</div>
			</div>
			<!-- //페이징 -->		
			
		</c:otherwise>
	</c:choose>
		
		

	
	
		
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>