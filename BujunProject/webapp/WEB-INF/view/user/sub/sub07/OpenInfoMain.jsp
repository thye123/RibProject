<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu01.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>종합자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">자료실소개</div>
	
	<div class="tab_depth01" >
		<ul class="n03">
			<li><a href="#" class="on">aaaaa</a></li>
			<li><a href="#">bb</a></li>
			<li><a href="#">ccc</a></li>
		</ul>
	</div>
	
	
	<!-- content 시작 -->
	
	
	<h2 class="tbul1 mg_b40">이용대상 : 중학생이상</h2>
	
	<h2 class="tbul1 mg_b10">기본테이블 / 게시판테이블(list)</h2>
	
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
					<th scope="col">구분</th>
					<th scope="col">월,토</th>
					<th scope="col">화~금</th>
					<th scope="col">일요일</th>
					<th scope="col" class="bnon">휴관일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>dd</td>
					<td>dd</td>
					<td>dd</td>
					<td>dd</td>
					<td class="bnon">dd</td>
				</tr>
			</tbody>
		</table>	
	</div>
	<!-- //table -->
	
	
	<h2 class="tbul1 mg_b10">이용안내</h2>	
	<ul class="bul_type1 mg_b40">
		<li>이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내</li>
		<li>이용안내</li>
		<li>이용안내</li>
	</ul>
	
	
	<h2 class="tbul1 mg_b20">이용안내</h2>	
	<h3 class="tbul2 mg_b10">복사기(2대)</h3>
	<p class="mg_b10">복사카드를 구입하여 직접 필요한 자료를 복사할 수 있습니다. 단, 저작권법에 위배되지 않도록 부분복사해야 합니다.</p>
	<ul class="bul_type1 mg_b40">
		<li>이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내이용안내</li>
		<li>이용안내</li>
		<li>이용안내</li>
	</ul>




 	<!-- 게시판테이블(read) -->	
 	<!-- class : mob_none -> 모바일일때 display:none  -->
 	
 	<h2 class="tbul1 mg_b20">게시판테이블(read)</h2>	
 		 	 	 		
	<table class="board_read">
		<colgroup><col style="width:20%;"><col style="width:55%;"><col></colgroup>		
		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td colspan="2">가나다라마바사</td>
			</tr>
			<tr>
				<th class="c">작성자</th>
				<td>관리자</td>
				<td class="mob_none">작성일 : 2018.03.28  / 조회수 :85</td> 
			</tr>
			<tr>
				<th class="c">첨부파일</th>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="3" class="contents">
					글영역~~~~~~~~~~~~~~~~~~~~
				</td>
			</tr>
			
		</tbody>
	</table>	
	<!-- //게시판테이블(리스트) -->
	
	
	
	
	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<span class="firstpage1"><span>처음 페이지</span></span>
			
			<span class="prevblock1 hidden"><span>1 페이지</span></span>
			<span class="beforepage1 "><span>이전페이지없음</span></span> <!-- 이전페이지 없을때 -->
			
			<strong><span>1</span></strong>
			<a class="pageBtn" href="#"><span>2</span></a>
			<a class="pageBtn" href="#"><span>3</span></a>
			<a class="pageBtn" href="#"><span>4</span></a>
			<a class="pageBtn" href="#"><span>5</span></a>
			<a class="afterpage hidden" href="#"><span>앞페이지</span></a>
			<a class="nextblock" href="#"><span>6 페이지</span></a>
			<a class="lastpage" href="#"><span>21 페이지</span></a>
		</div>
	</div>
	<!-- //페이징 -->	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>