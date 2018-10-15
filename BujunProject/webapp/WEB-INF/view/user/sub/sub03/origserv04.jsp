<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu03.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>원문서비스</li>
		<li>학회지 원문검색</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">학회지 원문검색</div>
	

	<ul class="basic_box mg_b30"> 
		<li>한국학술정보 원문서비스는 연간이용 계약한 기관, 단체 소속 구성원에 한해 인증절차를 거쳐 열람할 수 있으며 우리도서관은 연간이용 계약도서관이 아닙니다.</li>
		<li class="btn_set r">
			<a href="http://kiss.kstudy.com/ksikiss.asp" class="con_bblue" target="_blank">사이트바로가기</a>
		</li>
	</ul>
	
	<h2 class="tbul1">원문보기 관련</h2>
	<p class="mg_b30">국내 학회 및 대학부설연구소 발행 학술지 수록 논문 93만건의 원문 접근 및 해외 학술지 수록 논문 2,350만건 검색과 원문 구독기관 정보를 확인할 수 있습니다. 국내 140여개 대학 수여 석박사 학위논문 38만건, 내국인의 해외 취득 박사학위논문 2만건 원문제공을 제공합니다. 국내 500여 개 대학/전문도서관이 소장한 단행본 및 비도서 자료(CD-ROM,비디오 등) 734만건과 국내 3만7천여종과 해외 10만여종의 학술지 검색 및 권호별 소장정보 확인할 수 있습니다. 일본 823개 도서관의 소장자료 검색 및 88개 국립대학 도서관 소장자료 문헌복사서비스 신청을 할 수 있습니다.</p>
	
	
	
	<h3 class="tbul2">KISS 한국학술정보</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 국내학회지, 석·박사 학위논문 및 대학간행물원문제</p>
	<p class="mg_b30"><a href="http://kiss.kstudy.com" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">DBPIA누리미디어</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 각종 학회, 출판사, 협회 발행의 간행물에서 서비스되는 국내학술지 논문 서비스부분무료</p>	
	<p class="mg_b30"><a href="http://www.dbpia.co.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>

	<h3 class="tbul2">KRPIA 누리미디어</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB :한국학(역사, 철학, 문학, 문화), 사전류, 한의학, 예술, 자연 동식물 도감류 등의 원문을 제공하는 한국학 데이터베이스 / 부분무료</p>	
	<p class="mg_b30"><a href="http://www.KRPIA.co.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
		
	<h3 class="tbul2">카인즈</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 국언론진흥재단 구축 주요일간지 기사 통합검색</p>
	<p class="mg_b30"><a href="http://www.kinds.or.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">한국잡지협회</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 홈페이지로 잡지관련 각종정보, 등록된 국내 잡지회원사 연결</p>	
	<p class="mg_b30"><a href="http://www.kmpa.or.kr" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">매거진월드</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 한국잡지의 포털사이트, 잡지명 혹은 주제(기사)검색가능</p>
	<p class="mg_b30"><a href="http://www.magazineworld.co.kr" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">가판대</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 잡지 주제별로 분류, 가판대 형식으로 배열</p>
	<p class="mg_b30"><a href="http://www.newsstand.co.kr" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
		
	<h3 class="tbul2">신문가게</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 신문사별로 분류, 각 신문사 홈페이지 연결</p>	
	<p class="mg_b30"><a href="http://www.newspaper.co.kr" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">잡지가게</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 잡지 주제별로 분류, 각 잡지의 홈페이지 연결</p>	
	<p class="mg_b30"><a href="http://www.newspaper.co.kr/magazine/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">국립중앙도서관</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 일반도서, 정기간행물, 기사색인, 논문자료의 검색 가능 사용자 등록 없이 guest 접속으로 이용가능,우편복사 서비스</p>	
	<p class="mg_b30"><a href="http://www.nl.go.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">국회도서관</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 석박사 논문 자료</p>	
	<p class="mg_b30"><a href="http://www.nanet.go.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">학술연구정보서비스</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 교육과학기술부 출연기관,	한국교육학술정보원이 제공하는 학술연구 정보 서비스, 해외 DB검색가능</p>	
	<p class="mg_b30"><a href="http://www.riss.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
	
	<h3 class="tbul2">Academic Search Complete</h3>
	<p class="mg_b5">국내&nbsp;&nbsp;DB : 외예술, 문학, 철학, 역사, 교육학, 행정학, 법학, 사회학,심리학 등 인문사회과학 비롯하여 생물, 환경, 수학,물리, 화학, 지리, 컴퓨터, 전기, 전자, 토목공학, 재료공학,의학 등 과학기술분야에 이르는 다 학문분야 Full-Text 데이터베이스</p>	
	<p><a href="http://www.riss.kr/" class="new_btn" target="_blank" title="새창열림">홈페이지</a></p>
			
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>