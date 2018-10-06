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
<script>
 window.onload= function(){
	var pageBtn = document.getElementsByClassName('pageBtn');
	var nextblock = document.getElementsByClassName('nextblock');
	//nextblock 버튼을 눌릴때 일어날 일 시작 
	var temp_page  = document.getElementsByClassName('temp_page');
	var page = ${pageMaker.page};
	var end = ${pageMaker.end};
	//뒤로 가기 버튼! 
	temp_page[0].onclick = function(e){
		//변환 되는 페이지 값이 바뀌는데 그 페이지가 1일때 뒤로가기가 작동 안되도록
	 	if(page==1){
	 		e.preventDefault();
	 		alert('더이상 게시물이 없습니다.');
	 		
	 	}else{
			var hrefpage="/CluBoard?clb_clucode=${clb_clucode}&page="+(page-1)+"&pagecount=10&pagegrp=1"
			location.href=hrefpage;
	 	}
	 	
	}
	
	
	//다음으로 가기 버튼 
	 nextblock[0].onclick = function(e){

		if(page >= end){
			 e.preventDefault();
		 	alert('더이상 게시물이 없습니다.');
		 }else{
			var hrefpage= "/CluBoard?clb_clucode=${clb_clucode}&page="+(page+1)+"&pagecount=10&pagegrp=1"
			nextblock[0].setAttribute("href",hrefpage);
			location.href = hrefpage;
			 
		 }

	}
	 
 	}
</script>

<script>
//페이징 만드는 함수 
 function pagemaker(keyword,clb_clucode,keyfield,pagecount){
	var keyword= $("#keyword").val();
	var clb_clucode= "${clb_clucode}";
	var keyfield = $("select[name=keyfield]").val();
	var page  = "${pageMaker.page}";
	var pagecount  = "${pageMaker.pagecount}";
	var pagegrp= "${pageMaker.pagegrp}";

	$.ajax({
		url : '/CluBoard/paging/',	
		data : { 
			keyfield : keyfield,
			keyword  : keyword,
			clb_clucode : clb_clucode,
			page  : page,
			pagecount  : pagecount,
			pagegrp  : pagegrp,
		},	
		type : 'GET',
		dataType : 'json',
	
		success : function(data) {

			var pagingTag = "";
			var count = data.count
			if(data.count==0){
				alert('값이 없네요 ')
				var tags = "";
				tags +="<b>조회한 결과가 없습니다.</b>";
				$(".tb_board").html(tags);
				$("board-list-paging").empty();
				
			}else{
				alert('값이 있네요')
		
			    var idx= '';
				var start = data.start;
				var page=  data.page;
				var end   = data.end;
				var clucode = data.clb_clucode;
				
				for (var i = start; i <= end; i++) {
					pagingTag += "<a class=godata href=''>"+i+"</a>";
					
				}
				$(".board-list-paging").html(pagingTag);
				
				
			//a tag 넘어주는 class 
			$(".godata").click(function(event){
	 			//일단 이벤트 막아라 
	 			event.preventDefault();
	 			var godata = $(this).text();
	 
	 			//$(".board-list-paging").empty();
	 			$.ajax({
	 				url  : '/CluBoard/view/',
					data : { 
						keyfield:keyfield, 
						keyword:keyword, 
						clb_clucode:clb_clucode, 
						page:godata,  
						pagecount:"10",
						pagegrp:pagegrp
					},		 			
					type : 'GET',
					dataType : 'json',
					success : function(data) {
			
					$(".tb_board").empty();
					var tag=''; 
					tag+="<table>"
					tag+="<colgroup><col style='width:10%;'><col style='width:15%;'>";
					tag+="<col style='width:30%;'><col style='width:25%;'>";
					tag+="<col style='width:20%;'></colgroup>";
					tag+="<thead>";
						tag+="<tr>";
						
						tag+="<th scope='col'>번호</th>";
						tag+="<th scope='col'>글쓴이</th>";
						tag+="<th scope='col'>제목</th>";
						tag+="<th scope='col'>날짜</th>";
						tag+="<th scope='col' class='bnon'>조회수</th>";
						tag+="</tr>";
					    tag+="</thead>";
					    tag+="<tbody>";
					//alert("링크 클릭시 넘어가s" + count)
					$.each(data,function(key,data){ 
				
						tag+="<tr>";
					 	tag+="<td>"+data.clb_idx+"</td>"; 
						tag+="<td>"+data.clb_writer+"</td>";
						tag+="<td>"+data.clb_title+"</td>";
						tag+="<td>"+data.clb_regdate+"</td>";
						tag+="<td>"+data.clb_count+"</td>";
						tag+="</tr>";
					 
					}); 
					 tag+="</tbody>";
					 tag+="</table>";
					$(".tb_board").html(tag);

					},
					
					error : function(xhr) {
						console.log('에러 발생11 ' +xhr);
			
					}
	 			});
	 			
			});
			
			}
		
			
	
		},
		
		
		error : function(xhr) {
			console.log('에러 발생22 ' +xhr);
	
		}
	});//ajax 끝 	
}

	//검색후 호출하는 ajax 
	$(function() {
		
		$("#serForm").on('submit',function(e) {
			var keyword= $("#keyword").val();
			var clb_clucode= "${clb_clucode}";
			var keyfield = $("select[name=keyfield]").val();
			var page  = "${pageMaker.page}";
			var pagecount  = "${pageMaker.pagecount}";
			var pagegrp= "${pageMaker.pagegrp}";
		
			e.preventDefault();
	
				
			$.ajax({
				url : '/CluBoard/view/',
				data : { 
					keyfield : keyfield,
					keyword  : keyword,
					clb_clucode : clb_clucode,
					page : page,
					pagecount  : pagecount,
					pagegrp : pagegrp
					
				},					
				type : 'GET',
				dataType : 'json',
				success : function(club) {
	
					$(".tb_board").empty();
					$(".board-list-paging").empty();
						var tag=''; 
						tag+="<table>";
						tag+="<colgroup><col style='width:10%;'><col style='width:15%;'>";
						tag+="<col style='width:30%;'><col style='width:25%;'>";
						tag+="<col style='width:20%;'></colgroup>";
						tag+="<thead>";
						tag+="<tr>";
						tag+="<th scope='col'>번호</th>";
						tag+="<th scope='col'>글쓴이</th>";
						tag+="<th scope='col'>제목</th>";
						tag+="<th scope='col'>날짜</th>";
						tag+="<th scope='col' class='bnon'>조회수</th>";
						tag+="</tr>";
					    tag+="</thead>";
					    tag+="<tbody>";
					    
						$.each(club,function(key,search){ 
							console.log("파이지" + search.page);
							tag+="<tr>";
						 	tag+="<td>"+search.clb_idx+"</td>"; 
							tag+="<td>"+search.clb_writer+"</td>";
							tag+="<td>"+search.clb_title+"</td>";
							tag+="<td>"+search.clb_regdate+"</td>";
							tag+="<td>"+search.clb_count+"</td>";
							tag+="</tr>" 
						 
						}); 
						 tag+="</tbody>";
						 tag+="</table>"; 
						 
						 
						$(".tb_board").html(tag);
					
						 pagemaker(keyword,clb_clucode,keyfield,pagecount,pagegrp);
				
					
				},
				error : function(xhr) {
					console.log("1111" + xhr);
					alert('예러여꼐 ' + xhr.status)
				}
			});//ajax 끝 
		})
	});


</script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>도서관이용</li>
		<li>독서동아리</li>
		<li>${clu_name}</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit"><h2 class="tbul1 mg_b40">${clu_name}동아리</h2></div>

	<!-- content 시작 -->

	<!-- 붙임 민짐 (검색) -->
	<div class="boardSearch">
	<!-- method="POST" -->
		<div class="board_page">
			<span class="p02">Total</span><span class="p01"> : 1</span> (<span class="p01">1</span>/1페이지)
		</div>
		<!-- 검색 시작  -->
		<div class="board_sch">
		
			<form id="serForm">
					<input type="hidden" name="clb_clucode" value="${clb_clucode}" /> 
					<input type="hidden" name="page" value="${pageMaker.page}" /> 
					<input type="hidden" name="pagecount" value="${pageMaker.pagecount}" /> 
					<input type="hidden" name="pagegrp" value="${pageMaker.pagegrp}" />  
				
	              <select name="category" id="category" title="분류">
						<option value="">전체선택</option>
				</select> 
					
					<select name="keyfield" id="sel" title="검색어">
							<option value="">검색대상</option>
							<option value="2" >제목</option>
						    <option value="1" >글쓴이</option>
					</select>
	
					
		  <input type="text" name="keyword" id="keyword" 
		  title="검색어 입력" value="${keyword}" placeholder="검색어를 입력하세요" />
		  <input type="text" name="srchhidden" title="검색어 입력체크" style="display:none;" />
	
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
						<td><a
							href="/CluBoard/OneView?clb_idx=${club.clb_idx}&clb_clucode=${club.clb_clucode}">${club.clb_title}</a></td>
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

			<!-- 	<span class="firstpage1"><span>처음 페이지</span></span>  -->
			<button class="temp_page"><</button>
			<span class="prevblock1 hidden"><span>1 페이지</span></span> <span
				class="beforepage1 "><span>이전페이지없음</span></span>

			<!-- 이전페이지 -->
			<c:if test="${pageMaker.prev }">
				<span class="beforepage1 "><span> <a
						href='/Memtest/Mdetail?page=${pageMaker.start -1}'></a></span></span>
			</c:if>

			<!-- 이전페이지 없을때 -->
			<c:forEach begin="${pageMaker.start }" end="${pageMaker.end}"
				var="idx">
				<span class='<c:out value="${idx == pageMaker.page?'current':''}"/>'>
					<a class="pageBtn"
					href='/CluBoard?clb_clucode=${clb_clucode}&page=${idx}&pagecount=${pageMaker.pagecount}&pagegrp=1'>${idx}</a>
				</span>
			</c:forEach>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 


			<a class="afterpage hidden" href="#"><span>앞페이지</span></a>
			<!-- 다음 안나옴 -->
			<c:if test="${pageMaker.next }">
				<!-- 다음 -->
				<%-- 				<a class="nextblock" href='list?page=${pageMaker.end +1}'><span>6
						페이지</span></a>
 --%>
				<a class="nextblock" href="#"><span>21 페이지</span></a>
			</c:if>
			<!-- <a class="lastpage" href="#"><span>21 페이지</span></a> -->
		</div>
	</div>
	<!-- //페이징 -->

<!-- 만개 페이징 다시 들고와서 붙임(구만개) (내꺼랑 합쳐야 함 ) -->

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
<!--  -->
	<!-- 글쓰기 버튼 -->
		
	<div class="btn_set r">
	 <a href="/CluBoard/WriteForm?clb_clucode=${clb_clucode}" class="btn btn_board">글쓰기</a>
	 </div>
	
</div>

<!-- //content 끝 -->


		</div>
		
		
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>