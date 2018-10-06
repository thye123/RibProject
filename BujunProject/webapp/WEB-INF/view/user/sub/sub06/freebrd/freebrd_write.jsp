<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu06.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>자유게시판</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">자유게시판</div>
	
	
	
	<!-- content 시작 -->
	
	
	<div class="freebrd_box">
		<div class="inner">
			<span class="icon icon12"></span>
			
			<div class="tt">자유게시판</div>
			<p class="mg_b10">상업적인 광고성 글이나 불건전한 내용, 일방적인 비방이나 욕설 등은 예고없이 삭제되며, 건전한 게시판 문화와 홈페이지 운영을 위해 실명제로 운영되고 있음을 알려드립니다. </p>
			<ul class="bul_type1">
				<li>간단한 문의사항은 "자주하는 질문" 을 먼저 확인해주시기 바랍니다. </li>
				<li class="txt_red">본문 또는 첨부파일 내에 개인정보(주민등록번호, 성명, 연락처 등)가 포함 된 게시글은 예고없이 삭제되니 유의하시기 바랍니다.</li>
				<li class="txt_red">개인정보를 포함하여 게시하는 경우에는 불특정 다수에게 개인정보가 노출되어 악용될 수 있으며, 특히 타인의 개인정보가 노출되는 경우에는 개인정보보호법에 따라 처벌받을 수 있음을 알려드립니다.</li>
				<li>비밀번호 입력시 개인정보와 관련된 번호(주민번호, 휴대폰, 전화번호 등) 사용을 자제해주세요. </li>
			</ul>
		</div>
	</div>
	
	
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
 	
 	
 	
 	<script>
		function freeWrite() {
			
			var bd_writer = document.getElementById("bd_writer");
			var bd_email = document.getElementById("bd_email");
			var bd_pass = document.getElementById("bd_pass");
			var bd_title = document.getElementById("bd_title");
			var content = document.getElementById("content");
			var bd_rimemnum = document.getElementById("bd_rimemnum");
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
			
			if(bd_rimemnum.value == "") {
				alert("도서회원번호를 입력하세요");
				bd_rimemnum.focus();
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
			
			document.freebrdWrite.submit();
		}	
	</script>		
 		
  	<form name="freebrdWrite" action="/freebrd_writeForm" method="post">	 	 		
		
		<p class="r mg_b40"><label><input type="checkbox" id="chk" /> 개인정보 수집 및 이용에 대해서 동의합니다.</label> </p>	
		
		<table class="board_read">
			<tbody>
				<tr>
					<th class="c">글쓴이</th>
					<td><input type="text" name="bd_writer" id="bd_writer" /></td>
				</tr>
				
				<c:choose>
					<c:when test="${bd_grp eq 0}">					
						<tr>
							<th class="c">이메일</th>
							<td><input type="text" id="bd_email" name="bd_email" style="width:50%;" /></td>
						</tr>
					</c:when>
					<c:otherwise>
						<input type="hidden" id="bd_email" value="0" />
					</c:otherwise>
				</c:choose>
				
				<tr>
					<th class="c">카테고리</th>
					<td><label><input type="checkbox" name="bd_open" id="open" /> 비공개</label> </td>
				</tr>

				<c:choose>
					<c:when test="${bd_grp eq 0}">	
						<tr>
							<th class="c">도서회원번호</th>
							<td><input type="text" name="bd_rimemnum" id="bd_rimemnum" /> </td>
						</tr>	
					</c:when>
					<c:otherwise>
						<input type="hidden" id="bd_rimemnum" value="0" />
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${bd_grp eq 0}">				
						<tr>
							<th class="c">비밀번호</th>
							<td><input type="password" name="bd_pass" id="bd_pass"/> </td>
						</tr>	
					</c:when>
					<c:otherwise>
						<input type="hidden" id="bd_pass" value="0" />
					</c:otherwise>					
				</c:choose>
						
				<tr>
					<th class="c">제목</th>
					<td><input type="text" style="width:80%;" name="bd_title" id="bd_title" /> </td>
				</tr>
				<tr>
					<th class="c">내용</th>
					<td><textarea name="bd_content" id="content" style="width: 100%; height: 300px;"></textarea></td>
				</tr>										
			</tbody>
		</table>	
 

		<div class="r mg_t20 btns">
			<a class="btns_blue" href="#" onclick="freeWrite()">확인하기</a>
			<a class="btns_black" href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10">목록</a>
		</div>
		
		<input type="hidden" name="bd_catcode" value="${bd_catcode}" />
		<input type="hidden" name="bd_grp" value="${bd_grp}" />
		<input type="hidden" name="bd_step" value="${bd_step}" />
		
		
	</form>	
	
	
	
	
	
	
	

<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>