<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../../include/left_menu03.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>비치희망자료결과</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	
	
	<!-- title -->
	<div class="sub_tit">비치희망자료신청</div>
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
			<li class="active top_btn"><a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">신청내역</a></li>
			<li class="top_btn"><a href="/wishbk02/WriteForm?m1=03&m2=05">신청</a></li>
		</ul>
	</div>
	
	
	<!-- content 시작 -->
	
	
	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">
		<div class="tb_boardss">
			<div class="memname"> 
				<div class="v_left">
					<Strong>신청자</Strong>
				</div>
				<div class="v_right">
					<span>${app.sc_memid}</span>
				</div>
			</div>
			
			<div class="bookname">
				<div class="v_left">
					<Strong>희망도서명</Strong>
				</div>
				<div class="v_right">
					<span>${app.sc_bookname}</span>
				</div>
			</div>
			<div class="rows_1">
				<div class="rowleft">
					<div class="r_left">
						<Strong>진행상태</Strong>
					</div>
					
					<div  class="r_right r_1">
						<c:choose>
									<c:when test="${app.sc_during eq 1}">
										<td>신청중</td>									
									</c:when>
									
									<c:otherwise>
										<c:choose>
											<c:when test="${app.sc_during eq 2}">
												<td>처리중</td>									
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${app.sc_during eq 3}">
														<td>배치완료</td>									
													</c:when>
													<c:otherwise>
														<td>취소</td>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
					</div>
				</div>
				<div class="rowright">
					<div class="r_left">
						<Strong>저작자</Strong>
					</div>
					
					<div class="r_right">
						<span>${app.sc_author}</span>
					</div>
				</div>
			</div>
			<div class="cansle">
				<div class="v_left">
					<Strong>취소사유</Strong>
				</div>
				<div class="v_right">
					<span>${app.sc_cancel}</span>
				</div>
			</div>
			<div class="rows_2">
				<div class="rowleft">
					<div class="r_left">
						<Strong>출판사</Strong>
					</div>
					
					<div  class="r_right2">
						<span>${app.sc_publisher}</span>
					</div>
				</div>
				<div class="rowright">
					<div class="r_left1">
						<Strong>출판년도</Strong>
					</div>
					
					<div class="r_right2">
						<span>${app.sc_publishdate}</span>
					</div>
				</div>
			</div>
			<div class="pickcontent">
				<div class="v_left">
					<Strong>추천의견</Strong>
				</div>
				<div class="v_right">
					<span>${app.sc_content}</span>
				</div>
			</div>	
			
		</div>			
		<div class="btnst">
			<a href="/wishbk02/UpdateForm?sc_idx=${app.sc_idx}">수정</a>
			<div class="btns_2">
				<a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">목록</a>
			</div>
		</div>
		
	</div>
	
	<!-- //table -->
	
<!-- //content 끝 -->
</div>

</div>
	
	</div>
</div>
</div>

<!-- footer -->
<%@ include file="../../../include/footer.jsp" %>