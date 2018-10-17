<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp"%>

<style>
/*부전도서관 글쓰기 긁어옴 (게시판 하단 글쓰기 버튼)*/
.btn_set {
    padding: 10px 0;
    overflow: hidden;
}
a.btn_board {
    background: #696969;
    color: #fff;
    padding: 8px 25px;
}

</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/resources/user/js/search.js"></script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서 동아리</li>
		<li>독서 게시판</li>
		<li>${clu_name}</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

	<!-- title -->
	<div class="sub_tit">${clu_name}동아리</div>

	<!-- content 시작 -->

	<!-- 붙임 민짐 (검색) -->
	<div class="boardSearch">
	<!-- method="POST" -->
		<div class="board_page">
			<span class="p02">Total</span><span class="p01"> : ${pageMaker.count}</span> (<span class="p01"> ${pageMaker.page}</span>/${pageMaker.end}페이지)
		</div>
		
		<!-- 검색 시작  -->
		<div class="board_sch">
		
			<form id="serForm">
					<input type="hidden" name="clb_clucode" value="CUS0001" /> 
					<input type="hidden" name="page" value="${pageMaker.page}" /> 
					<input type="hidden" name="pagecount" value="${pageMaker.pagecount}" /> 
					<input type="hidden" name="pagegrp" value="${pageMaker.pagegrp}" />  
				
	              <select  id="category" title="분류">
						<option value="">전체선택</option>
				</select> 
					
					<select name="keyfield" id="sel" title="검색어">
							<option value="">검색대상</option>
							<option value="2" >제목</option>
						    <option value="1" >글쓴이</option>
					</select>
	
					
		  <input type="text" name="keyword" id="keyword" 
		  title="검색어 입력" value="${keyword}" placeholder="검색어를 입력하세요" />
		  <input type="text" title="검색어 입력체크" style="display:none;" />
	
		<!--  <a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a> -->
 		    <input type="submit" value="검색" class="searchBtn"> 
 		  </form>
		</div>
	</div> 

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">
		<table class="tb_board">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">글쓴이</th>
					<th scope="col">제목</th>
					<th scope="col">날짜</th>
					<th scope="col" class="bnon">조회수</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="club" items="${clubList}">
					<tr>
						<td>${club.clb_idx}</td>
						<td>${club.clb_writer}</td>
						<c:choose>



							<c:when test="${empty club.clb_pass}">
								<td><a
									href="/club01/CluBoard/OneView?clb_idx=${club.clb_idx}&clb_clucode=${clu_code}&page=1&pagecount=10&pagegrp=1">${club.clb_title}</a></td>
							</c:when>

							<c:when test="${not empty club.clb_pass}">
								<td><a href="/club01/CluBoard/CheckPass?clb_idx=${club.clb_idx}&clb_clucode=${clu_code}&page=1&pagecount=10&pagegrp=1">비밀게시 글입니다.</a></td>
							</c:when>
						</c:choose>

						<td>${club.clb_regdate}</td>
						<td class="bnon">${club.clb_count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- //table -->

	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
		
	<!-- 페이지 이전으로 돌릴떄  -->
	<!-- 이전페이지 활성화 되도록  -->
	
	<c:choose>
	    <c:when test="${pageMaker.prev == true}">
			<a class="firstpage1" href="/club01/CluBoard?clb_clucode=${clu_code}&page=${pageMaker.page-1}&pagecount=10&pagegrp=1"><</a>
	    </c:when>
	
	    <c:otherwise>
	    	<a class="firstpage1" href="#"><</a>
	    </c:otherwise>

	 </c:choose> 
	<!-- 이건뭘까>? :<span class="prevblock1 hidden"><span>1 페이지</span></span>-->
	<!-- 페이지 번호 찍어주는거 <strong><span>1</span></strong> -->

			<c:forEach begin="${pageMaker.start}" end="${pageMaker.end}" var="idx">
				
					<a class="pageBtn"
					href='/club01/CluBoard?clb_clucode=${clu_code}&page=${idx}
					&pagecount=${pageMaker.pagecount}&pagegrp=1' onclick="changeBlock();"><span>${idx}</span></a>
			</c:forEach>
				
			<a class="afterpage hidden" href="#"><span>앞페이지</span></a>
	<!-- 다음 페이지로 넘길때  -->
	<c:choose>
	
	    <c:when test="${pageMaker.page >= pageMaker.end}">
	      <a class="nextblock" href="#"></a>	
	    </c:when>
	
	    <c:otherwise>
	     	<a class="nextblock" href="/club01/CluBoard?clb_clucode=${clu_code}&page=${pageMaker.page+1}&pagecount=10&pagegrp=${pageMaker.pagegrp}"><span>6 페이지</span></a>
	    </c:otherwise>

	</c:choose>
	<c:choose>
		<c:when test="${pageMaker.end >= pageMaker.tempEnd}">
					<a class="lastpage" href="/club01/CluBoard?clb_clucode=CUS0001&page=${pageMaker.end+1}&pagecount=10&pagegrp=${pageMaker.pagegrp+1}"><span>21 페이지</span></a>
		</c:when>
		
		<c:otherwise>
			<a class="lastpage" href="#"></a>
		</c:otherwise>
	</c:choose>
		</div>
	</div>
	<!-- //페이징 -->	
	
	<!-- 글쓰기 버튼 -->
	<div class="btn_set r">
	 <a href="/club01/CluBoard/WriteForm?clb_clucode=CUS0001" class="btn btn_board">글쓰기</a>
	 </div>
	
</div>

<!-- //content 끝 -->


		</div>
		
		
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>