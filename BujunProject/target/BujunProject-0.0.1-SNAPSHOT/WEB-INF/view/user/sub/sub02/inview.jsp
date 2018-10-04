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
		<li>관내열람</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">관내열람</div>
	
	
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon12"></span>
			<b>관내열람</b>
			<p>자료실에 비치된 모든 자료는 자유롭게 열람할 수 있습니다.<br>
			  <!--  도서관자료를 관외로 대출하려면 독서회원에 가입해야 합니다.<br />
			   독서회원에 가입하더라도 대출되지 않는 자료가 있습니다.<br />
			   관외대출 제한자료:어학사전, 백과사전, 법령, 도감 등의 참고도서 , 연속간행물, 비도서자료, 금융정보자료실 자료 -->
			</p>
		</div>
	</div>

	<h2 class="tbul1">서고자료</h2>		
	<ul class="bul_type1 mg_b40">
		<li>발행일이 오래되거나 이용빈도가 떨어지는 도서는 서고에 별도 비치됩니다.</li>
		<li>서고자료의 이용 : 서명과 청구기호를 적어 직원에게 신청후 열람</li>
		<li>이용가능시간 : 업무마감 10분 전까지 담당자에게 요청하시면 이용 가능</li>
	</ul>


	<h2 class="tbul1">비도서자료</h2>		
	<ul class="bul_type1 mg_b40">
		<li>디지털자료실은 중학생 이상 이용할 수 있습니다.</li>
		<li>DVD, CD, CD-ROM 등의 비도서자료는 이용신청서를 기재한 후 담당직원에게 신청하면 지정된 좌석에서 열람할 수 있습니다. </li>
		<li>비도서자료는 관외 대출되지 않습니다.</li>
	</ul>

	<h2 class="tbul1">신문, 잡지 등 연속간행물 열람</h2>		
	<ul class="bul_type1 mg_b40">
		<li>신문, 잡지 등의 연속간행물은 2층 연속간행물실에서 열람할 수 있으며, 관외대출 되지 않습니다.</li>
	</ul>	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>