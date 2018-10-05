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
		<li>범시민 독후감</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">범시민 독후감</div>
	

	<script>
		function repo1Write() {
			
			var bd_writer = document.getElementById("bd_writer");
			var bd_email = document.getElementById("bd_email");
			var bd_gubun = document.getElementById("bd_gubun");
			var bd_phone = document.getElementById("bd_phone");
			var bd_pass = document.getElementById("bd_pass");
			var bd_title = document.getElementById("bd_title");
			var content = document.getElementById("content");
			var chk = document.getElementById("chk");
			
			
			if(!chk.checked ) {
				alert("동의해주세요");
				return;
			}

			if(bd_writer.value == "") {
				alert("이름을 입력하세요");
				bd_writer.focus();
				return;
			}
			
			if(bd_email.value == "") {
				alert("이메일을 입력하세요");
				bd_email.focus();
				return;
			}		
			
			if(bd_gubun.value == "") {
				alert("지원부문을 선택하세요");
				bd_gubun.focus();
				return;
			}				
			
			if(bd_phone.value == "") {
				alert("연락처를 입력하세요");
				bd_phone.focus();
				return;
			}	
			
			if(bd_pass.value == "") {
				alert("비밀번호를 입력하세요");
				bd_pass.focus();
				return;
			}				
			
			if(bd_title.value == "") {
				alert("제목을 입력하세요");
				bd_title.focus();
				return;
			}	
			
			if(content.value == "") {
				alert("내용을 입력하세요");
				content.focus();
				return;
			}			
			
			
			
			var open = document.getElementById("open");
			if(open.checked == true) {
				open.value = 2;
			}			
			
			document.bkwrite1.submit();
		}	
	</script>	
	
	<!-- content 시작 -->
	
 	
 	<h2 class="tbul1">개인정보 수집 및 이용 동의 </h2>	
 	<div class="agree_box mg_b5">
 		<ul class="bul_type1">
 			<li>개인정보의 수집 및 이용 목적
 				<ul>
 					<li>부산광역시립부전도서관 민원사무 처리를 위한 이용자의 신원 확인 업무에만 이용.</li>
 				</ul>
 			</li>
 			<li>수집하려는 개인정보 항목 
 				<ul>
 					<li>성명</li>
 				</ul>
 			</li> 	
  			<li>개인정보의 보유 및 이용 기간 : 게시 종료일까지
 				<ul>
 					<li>귀하는 개인정보 수집·이용에 동의하지 않으실 수 있습니다.(단, 글쓰기를 위한 최소한의 정보인 필수정보 미입력시 글쓰기 불가)</li>
 				</ul>
 			</li> 						
 		</ul>
 	</div>
 	
 		
 	<form name="bkwrite1" enctype="multipart/form-data" action="/bkreport01_writeForm" method="post">	 
 	
 		<p class="r mg_b40"><label><input type="checkbox" id="chk" /> 개인정보 수집 및 이용에 대해서 동의합니다.</label> </p>	
 		 		
		<table class="board_read">
			<tbody>
				<tr>
					<th class="c">글쓴이</th>
					<td><input type="text" name="bd_writer" id="bd_writer" /></td>
				</tr>
				<tr>
					<th class="c">이메일</th>
					<td><input type="text" name="bd_email" style="width:50%;" id="bd_email" /></td>
				</tr>
				<tr>
					<th class="c">지원부문</th>
					<td>
						<select name="bd_gubun" id="bd_gubun">
							<option value="">선택</option>
							<option value="gubun1">초등 저학년</option>
							<option value="gubun2">초등 고학년</option>
							<option value="gubun3">중등</option>
							<option value="gubun4">고등</option>
							<option value="gubun5">일반</option>
						</select>
						
						<label><input type="checkbox" name="bd_open" id="open" /> 비공개</label>
					</td>
				</tr>
				
				<tr>
					<th class="c">연락처</th>
					<td><input type="text" name="bd_phone" id="bd_phone" /> </td>
				</tr>	
				<tr>
					<th class="c">비밀번호</th>
					<td><input type="password" name="bd_pass" id="bd_pass" /> </td>
				</tr>			
				<tr>
					<th class="c">첨부파일</th>
					<td><input type="file" name="file" /> </td>
				</tr>	
				<tr>
					<th class="c">제목</th>
					<td><input type="text" style="width:80%;" name="bd_title" id="bd_title" /> </td>
				</tr>
				<tr>
					<th class="c">내용</th>
					<td><textarea name="bd_content" id="content" style="width: 100%; height: 300px;" id="content" ></textarea></td>
				</tr>										
			</tbody>
		</table>	
 

		<div class="r mg_t20 btns">
			<a class="btns_blue" href="#" onclick="repo1Write()">확인하기</a>
			<a class="btns_black" href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">목록</a>
		</div>
		
		<input type="hidden" name="bd_catcode" value="${bd_catcode}" />
	</form>		
	
	
	
	
	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>