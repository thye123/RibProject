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
		<li>국회도서관 원문DB</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">국회도서관 원문DB</div>
	
	<ul class="basic_box mg_b30"> 
		<li>국회도서관과 학술정보상호협력협정을 체결하여 원문(Full-text)DB의 열람 및 출력이 가능합니다.</li>
		<li class="btn_set r">
			<a href="http://www.nanet.go.kr/main.jsp" class="con_bblue" target="_blank">사이트바로가기</a>
		</li>
	</ul>
	
	<h2 class="tbul1">이용장소</h2>
	<p class="mg_b40">디지털자료실 원문검색 전용PC (도서관내에서만 이용가능)</p>
	
	<h2 class="tbul1">원문보기 관련</h2>
	<ul class="bul_type1 mg_b40">
		<li>저작물 이용허락 동의를 받지 않은 자료(석박사학위논문, 학술지, 단행본 및 해외소재 한국관련자료 등) 검색 결과인 간략	목록에서 TIFF, PDF, URL 표시가 되어 있으며 이 원문들은 인터넷상으로 서비스 되지 않습니다. 이들 원문을 보시려면 국회도서관 및 협약체결기관을 직접 방문하셔야 합니다.</li>
		<li>저작물 이용허락 동의를 받은 자료와 국회에서 발간된 자료</li>
		<li>검색 결과인 간략목록에서 TIFF, PDF, URL 표시가 되어 있으며 원문 열람실 국회도서관 통합뷰어가 자동설치 됩니다. 보시는 방법은 간략목록의 원문 이미지 표시를 클릭하거나 검색결과의 상세목록에서 원문보기의 이미지나 PDF를 클릭하시면 해당 원문이 플러그인 되어서 나타납니다.</li>
	</ul>

	<h2 class="tbul1">제공내용</h2>
	<h3 class="tbul2">원문정보</h3>
	<p>단행본, 학위논문, 정기간행물기사색인 원문중 저작물 허락동의가 되지 않은 자료는 저작권법에 의하여 인터넷으로 서비스가 제공되지 않습니다. 이 자료의 원문서비스를 받으시려면 국회도서관 및 국회도서관과 협약체결된 도서관에 방문하셔야 합니다.</p>

		
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>