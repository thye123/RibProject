<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu08.jsp" %>   

<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>마이페이지</li>
	</ul>
</div>
<!-- //location -->

	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">마이페이지</div>
	
	<table class="board_read">
		<colgroup><col style="width:20%;" /><col /></colgroup>
		<tbody>
			<tr>
				<th scope="row" class="c">아이디</th>
				<td></td>
			</tr>
			<tr>
				<th scope="row" class="c">도서관 회원 번호</th>
				<td></td>
			</tr>	
			<tr>
				<th scope="row" class="c">이름</th>
				<td></td>
			</tr>	
			<tr>
				<th scope="row" class="c">생년월일(19890623)</th>
				<td></td>
			</tr>
			<tr>
				<th scope="row" class="c">이메일</th>
				<td></td>
			</tr>
			<tr>
				<th scope="row" class="c">연락처</th>
				<td></td>
			</tr>					
			<tr>
				<th class="c">우편번호 </th>
				<td class="l non_line"></td>
			</tr>																															
		</tbody>
	</table>
	
	<div class="btns c mg_t30">
		<a href="#" onclick="join()" class="btns_blue">내정보수정하기</a>
		<a href="#" onclick="join()" class="btns_black">비밀번호수정</a>
	</div>
	
	
	



		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>