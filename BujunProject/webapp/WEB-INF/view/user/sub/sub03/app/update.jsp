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
	function rabtn() {
		var div = document.createElement('div');
		div.setAttribute('class','a_right')
		var txt = document.createElement('input');
		txt.setAttribute('type','text');
		txt.setAttribute('name','sc_cancel');
		div.appendChild(txt);
		
		var divs = document.createElement('div');
		divs.setAttribute('class','a_left')
		var spans = document.createElement('span');
		var text = document.createTextNode('취소사유');
		spans.appendChild(text);
		divs.appendChild(spans);
		
		var row = document.createElement('div');
		row.setAttribute('class','canselreason');
		row.setAttribute('style','height: 41px;')
		row.setAttribute('style','box-sizing: border-box;')
		row.setAttribute('style','border-bottom: 1px solid #ddd;')
		
		row.appendChild(divs);
		row.appendChild(div);
		var board = document.getElementById('board');
		board.appendChild(row);
	}
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
	
	<ul class="mg_b10">
		<li class="sbul"> *표가 있는 항목은 필수 항목이므로 반드시 입력하여 주십시오.</li>
		<li class="sbul">여러명이 사용하는 PC의 경우에는 개인정보 보호를 위하여 <span class="red" style="color:red;">사용 후에는 반드시 로그아웃</span> 하여 주십시오.</li>
	</ul>
	
	<form action="/wishbk02/Update" method="POST" >
		<input type="hidden" name="sc_rimemnum" value="0000000002"/>
		<input type="hidden" name="sc_idx" value="${update.sc_idx}"/>
		<!-- <input type="hidden" name="sc_during" value="1"/> -->
		<div class="applyboard" id="board">
			<div class="a_name">
				<div class="a_left">
					<span><span class="star">＊</span>신청자</span>
				</div>
				
				<div class="a_right">
					<span>${update.sc_memid}</span>
				</div>
			</div>
			
			<div class="apply3">
				<div class="a_tel">
					<div class="a_left title">
						<span><span class="star">＊</span>전화번호</span>
					</div>
					<div class="a_right cont">
						<span>${update.sc_phone}</span>
					</div>
				</div>
				
				<div class="a_email">
					<div class="a_left title">
						<span><span class="star">＊</span>처리상태</span>
					</div>
					<div class="a_right cont">
						<input type="radio"  value="2" name="sc_during"/><span>처리중</span>
						<input type="radio" value="3" name="sc_during"/><span>배치완료</span>
						<input type="radio" value="4" name="sc_during" id="cansel" onclick="rabtn()"/><span>취소</span>
					</div>
				</div>
			</div>
			
			<div class="a_booktitle">
				<div class="a_left">
					<span><span class="star">＊</span>희망도서명</span>
				</div>
				<div class="a_right">
					<span>${update.sc_bookname}</span>
				</div>
			</div>
			
			<div class="a_bookwriter">
				<div class="a_left">
					<span><span class="star">＊</span>저작자</span>
				</div>
				<div class="a_right">
					<span>${update.sc_author}</span>
				</div>
			</div>
			
			<div class="apply7">
				<div class="a_publisher">
					<div class="a_left title">
						<span><span class="star">＊</span>출판사</span>
					</div>
					<div class="a_right cont">
						<span>${update.sc_publisher}</span>
					</div>
				</div>
				
				<div class="a_publication">
					<div class="a_left title">
						<span><span class="star">＊</span>출판연도</span>
					</div>
					<div class="a_right cont">
						<span>${update.sc_publishdate}</span>
					</div>
				</div>
			</div>
			
			<div class="bestcont">
				<div class="a_left titles">
					<span>추천의견<br/>(최대100자)</span>
				</div>
				<div class="a_right conts">
					<span>${update.sc_content}</span>
				</div>
			</div>
			
		</div>
		<div class="btnst">
			<button>저장</button>
			<div class="btns_1">
    			<a href="/wishbk/view?m1=03&m2=05&sc_idx=${update.sc_idx}">취소</a>
    		</div>
		</div>
	</form>
	
	
<!-- //content 끝 -->
</div>

		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>