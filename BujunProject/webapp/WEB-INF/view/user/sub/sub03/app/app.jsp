<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu03.jsp" %>   
<script>
	function inputCheck() {
		var phone = document.getElementById('memtel');
		var email1 = document.getElementById('email1');
		var email2 = document.getElementById('email2');
		var bookname = document.getElementById('bookname');
		var wirter = document.getElementById('bookwirter');
		var group = document.getElementById('bookgroup');
		var year = document.getElementById('bookyear');
		
		
		if(phone.value =='') {
			alert("전화번호 입력하시라요");
			return false;
		}
		if(email1.value =='') {
			alert("이메일 입력하더라고");
			return false;
		}
		if(email2.value =='') {
			alert("도메인 넣으세요");
			return false;
		}
		if(bookname.value =='') {
			alert("책이름 입력하쇼~");
			return false;
		}
		if(wirter.value =='') {
			alert("저작자 입력하세요");
			return false;
		}
		if(group.value =='') {
			alert("출판사 입력하세요");
			return false;
		}
		if(year.value =='') {
			alert("출판년도 입력하셍~");
			return false;
		}
		return true;
	}
	/* window.onload = function() {
		var app = document.getElementById('memRegForm');
		app.addEventListener("submit", function(){
			inputCheck();
		});
	}*/
</script>

			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>비치희망자료신청</li>
	</ul>
</div>
<!-- //location -->




	<!-- title -->
<div class="con_mob_pad">
	<div class="sub_tit">비치희망자료신청</div>
	
	
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon8"></span>
			<span style="font-size:16px;">비치희망제도의 원활한 운영을 위해 아래와 같은 자료는 선정에서 제외합니다.</span>
			<ul class="bul_type1">
				<li>소장 도서이거나 구입예정 및 구입&middot;정리 중인 도서</li>
				<li>구판, 품절 및 절판된 도서나 당해 연도 기준 5년 이전에 발간된 자료</li>
				<li>3권 이상의 다권본(전집,시리즈)</li>
				<li>유사한 주제로 소장본이 많은 도서</li>
				<li>수험서, 문제집, 교과서, 학습참고서 등</li>
				<li>논문집, 스프링 제본, 팸플릿, 미출간도서(POD_Printing On Demand : 주문형 도서출판 등)</li>
				<li>판타지, 로맨스, 무협지(문학적 가치가 인정되거나 인지도가 높은 자료는 제외), 만화류(우수학습 만화는 제외)</li>
				<li>신청자의 상업적인 의도가 의심되는 경우(동일 출판사의 도서를 다량 신청하는경우 등)</li>
				<li>고가의 도서(5만원 이상), 원서, 해외 주문도서</li>
				<li>특정종교인을 위한 설교집, 개인의 신앙체험 및 보편 타당성이 없는 개인의 사상이나 주장을 담은 저작물</li>
				<li>지나치게 선정적이거나 폭력적인 자료로 가족 및 사회윤리를 훼손할 우려가 있는 내용의 자료</li>
				<li>소책자, 엽서형, 스프링 도서 등 판형이 도서관 장서로 부적합한 자료 </li>
			</ul>
		</div>
	</div>
	
	<div class="con_mob_pad">
		<div id="tab_depth01" class="w50">
		<ul>
			<li class="top_btn"><a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">신청내역</a></li>
			<li class="active top_btn"><a href="/wishbk02?m1=03&m2=05">신청</a></li>
		</ul>
	</div>
	
	<ul class="mg_b10">
		<li class="sbul"> *표가 있는 항목은 필수 항목이므로 반드시 입력하여 주십시오.</li>
		<li class="sbul">여러명이 사용하는 PC의 경우에는 개인정보 보호를 위하여 <span class="red" style="color:red;">사용 후에는 반드시 로그아웃</span> 하여 주십시오.</li>
	</ul>
	
	<form action="/wishbk02/Write" method="POST" id="memGrgForm" onsubmit="return inputCheck()">
		<input type="hidden" name="sc_rimemnum" value="${sessionScope.rimem_num}"/>
		<input type="hidden" name="sc_during" value="1"/>
		<div class="applyboards">
			<div class="as_name">
				<div class="as_left">
					<span><span class="star">＊</span>신청자</span>
				</div>
				
				<div class="as_right">
					<input type="text"  name="sc_memname" id="memid" value="${sessionScope.mem_name}" readonly>
					<input type="hidden" name="sc_memid" value="${sessionScope.mem_id }"/>
				</div>
			</div>
			
			<div class="as_tel">
				<div class="as_left">
					<span><span class="star">＊</span>전화번호</span>
				</div>
				<div class="as_right">
					<input type="text" name="sc_phone" id="memtel"/>
				</div>
			</div>
				
			<div class="as_email">
				<div class="as_left">
					<span><span class="star">＊</span>E-Mail</span>
				</div>
				<div class="asc_right">
					<input type="text" name="sc_email1" size="10" id="email1"/>
					<span>@</span>
					<input type="text" name="sc_email2" size="10" id="email2"/>
				</div>
			</div>
			
			<div class="as_booktitle">
				<div class="as_left">
					<span><span class="star">＊</span>희망도서명</span>
				</div>
				<div class="as_right">
					<input type="text" name="sc_bookname" id="bookname"/>
				</div>
			</div>
			
			<div class="as_bookwriter">
				<div class="as_left">
					<span><span class="star">＊</span>저작자</span>
				</div>
				<div class="as_right">
					<input type="text" name="sc_author" id="bookwirter"/>
				</div>
			</div>
			
			<div class="as_publisher">
				<div class="as_left">
					<span><span class="star">＊</span>출판사</span>
				</div>
				<div class="as_right">
					<input type="text" name="sc_publisher" id="bookgroup"/>
				</div>
			</div>
			
			<div class="as_publication">
				<div class="as_left title">
					<span><span class="star">＊</span>출판연도</span>
				</div>
				<div class="as_right cont">
					<input type="text" name="sc_publishdate" id="bookyear"/>
				</div>
			</div>
			<div class="bestcont">
				<div class="as_left titles">
					<span>추천의견</span>
				</div>
				<div class="as_right conts">
					<textarea placeholder="최대 100자" cols="65" rows="4" name="sc_content" class="wps_90" style="border:1px solid #ccc;"></textarea>
				</div>
			</div>
		</div>
		<div class="btnst">
			<button>등록</button>
			<div class="btns_1">
				<a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">취소</a>
			</div>
    		
		</div>
	</form>
	
</div>	
<!-- //content 끝 -->
</div>

		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>