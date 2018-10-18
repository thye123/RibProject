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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var listBtn = document.getElementsByClassName('listBtn');
		listBtn[0].onclick = function() {
			location.href = "/CluBoard/Goboard?clb_clucode=${clb_clucode}";
		}
	}
</script>
<style>
.content{
	width:100%;
	height: 250px;
	resize: none;
}

input[type="text"]{
	width: 50%;
	height: 22px;
}
/*부전도서관 글쓰기 긁어옴 (게시판 하단 글쓰기 버튼)*/
.btn_set {
    padding: 10px 0;
    overflow: hidden;
}
.btn_board {
    background: #696969;
    color: #fff;
    padding: 6px 25px;
   	cursor:pointer;
 	
 }
</style>
<script>
//비공개선택을 하면 

function aaa(check){
 	var clb_open		= document.getElementsByName('clb_open');
 	var clb_pass 		= document.getElementsByName('clb_pass');

 	if((clb_open[1].checked)==true){
		alert('비공개를 선택했습니다.')
		clb_open[0].checked=false;
		if(clb_pass[0].value==''){
			alert('입력해주세요 비밀번호');
			clb_pass[0].focus();
			return false;
		}
	}
}
</script>

<script>
	window.onload= function(){

		var processing  	= document.getElementById('processing');
		var clb_writer		= document.getElementsByName('clb_writer');
	 	var clb_rimemnum 	= document.getElementsByName('clb_rimemnum');
	 	var clb_pass 		= document.getElementsByName('clb_pass');
	 	var clb_email 		= document.getElementsByName('clb_email');
	 	var clb_title 		= document.getElementsByName('clb_title');
	 	var file 			= document.getElementsByName('file');
	 	var clb_content 	= document.getElementsByName('clb_content');
		var clb_open		= document.getElementsByName('clb_open');
		 
	 	processing.onsubmit = function(){
			
			if(clb_writer[0].value==''){
				alert('입력해주세요 글쓴이');
				clb_writer[0].focus();
				return false;
			}
			
			if(clb_rimemnum[0].value==''){
				alert('입력해주세요 도서번호');
				clb_rimemnum[0].focus();
				return false;
			}
			
			if(clb_email[0].value==''){
				alert('입력해주세요 이메일');
				clb_email[0].focus();
				return false;
			}
			
			if(clb_title[0].value==''){
				alert('입력해주세요 내용');
				clb_title[0].focus();
				return false;
			}
			
			if(clb_content[0].value==''){
				alert('입력해주세요 내용');
				clb_content[0].focus();
				return false;
			}
			
			
		}
	}

</script>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서 동아리</li>
		<li>독서 게시판</li>
		<li>찬우물</li>
	
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit"></div>

	<!-- content 시작 -->

	<h2 class="tbul1 mg_b40">찬우물</h2>

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>

	<div class="auto_box mg_b40">


		<!-- 게시판테이블(read) -->
		<!-- class : mob_none -> 모바일일때 display:none  -->

		<form action="/CluBoard/processing" method="post"
			enctype="multipart/form-data" id="processing">
			<input type="hidden" name="clb_clucode" value="${clb_clucode}">

			<table class="board_read">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 55%;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th class="c">글쓴이</th>
						<td colspan="2"><input type="text" name="clb_writer" /></td>
					</tr>

					<tr>
						<th class="c">도서번호</th>
						<td colspan="2"><input type="text" name="clb_rimemnum" /></td>
					</tr>

					<tr>
						<th class="c">공개여부</th>
						<td colspan="2">
						<label>공개</<label> 
						<input type="checkbox" name="clb_open" value="1" checked="checked"
						onclick="aaa(this)"> 
						<label>비공개</<label>
						<input type="checkbox" name="clb_open" value="2" onclick="aaa(this)"></td>
						
					</tr>

					<tr>
						<th class="c">비밀번호</th>
						<td colspan="2"><input type="text" name="clb_pass" /></td>
					</tr>
					
					<tr>
						<th class="c">이메일</th>
						<td colspan="3" class="contents"><input type="text"
							name="clb_email"  class="email"/></td>
					</tr>

					<tr>
						<th class="c">제목</th>
						<td><input type="text" name="clb_title" /></td>
					</tr>

					<tr>
						<th class="c">파일</th>
						<td><input class="mg_b5" type="file" name="file" id="orgFile" /></td>
					</tr>

					<tr>
						<th class="c">내용</th>
						<td colspan="2"><textarea cols="10" name="clb_content" class="content"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			
			<div class="btn_set r">
				<input class="btn btn_board" style="border:0;" type="submit" value="제출" /> 
				<input class="btn btn_board" style="border:0;" type="reset" value="초기화" />
	 		</div>
		</form>
	</div>
	<!-- //table -->
</div>
<!-- //content 끝 -->
		</div>
		
		
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>