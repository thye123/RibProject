<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu02.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료이용안내</li>
		<li>관외대출</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">관외대출</div>
	
	
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon11"></span>
			<b>관외대출</b>
			<p>도서관자료를 관외로 대출하려면 책이음회원에 가입해야 합니다.<br />단, 책이음회원에 가입하더라도 대출되지 않는 자료가 있습니다.<br />관외대출 제한자료:어학사전, 백과사전, 법령, 도감 등의 참고도서 , 연속간행물, 비도서자료, 금융정보자료실 자료</p>
		</div>
	</div>

	<h2 class="tbul1">자료대출은 책이음이용증으로 가능하며, 회원가입은 도서관을 직접방문하셔야 합니다.</h2>		

	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box">			
		<table class="tb_board">
			<thead>
			<tr>
				<th scope="col">구분</th>
				<th scope="col">대상</th>
				<th scope="col" class="bnon">가입장소</th>
			</tr>
			</thead>
			<tbody>
			 <tr>
				<td>대출권수</td>
				<td class="l">5책, 2주간 </td>
				<td class="bnon" rowspan="8">종합자료실,<br />어린이실</td>
			  </tr>
			  <tr>
				<td> 대출/반납</td>
				<td class="l">대출은 회원본인이 회원증을 지참하여 무인도서대출반납기를 이용, <br />
				  직접 처리 합니다. (단, 반납은 회원증이 필요없으며, 대리반납도 가능합니다.)<br />
				  자료실 이용시간에는 대출한 자료실로 반납하고, 이용시간 이후나 휴관일인 경우 무인반납함을 이용합니다.</td>
			  </tr>
			  <tr>
				<td> 재대출</td>
				<td class="l">동일한 도서는 반납 3일 경과 후에 재대출할 수 있습니다.</td>
			  </tr>
			  <tr>
				<td> 재발급</td>
				<td class="l">책이음 회원증 분실 또는   훼손 등의 사유로 재발급 신청하는 경우 신청일로부터 7일 경과 후 발급됩니다.<br />
				  (발급 전 신분증으로 대출 가능) </td>
			  </tr>
			  <tr>
				<td> 부록자료</td>
				<td class="l">CD-ROM, 카세트테이프 등 부록자료는 대출자료와 함께 대출할 수 있습니다. </td>
			  </tr>
			  <tr>
				<td> 연장</td>
				<td class="l">대출기간은 2주간으로   연장할 수 없습니다.</td>
			  </tr>
			  <tr>
				<td> 연체</td>
				<td class="l">1권이라도 늦은 경우   연체일수만큼 책을 빌릴 수 없습니다. </td>
			  </tr>
			  <tr>
				<td> 분실 및 훼손</td>
				<td class="l">동일도서로 현물변상 또는   시가에 상당하는 금액으로 변상해야 합니다.</td>
			  </tr>
			</tbody>
		</table>		
	</div>

	<p>직장문고대출은 종합실 담당자와 별도 협의하여 조정(100권이내, 2개월) </p>




	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>