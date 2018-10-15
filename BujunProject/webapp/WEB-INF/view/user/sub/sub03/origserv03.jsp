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
		<li>국가전자도서관 원문검색</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">국가전자도서관 원문검색</div>
	

	<ul class="basic_box mg_b30 bul_type1"> 
		<li>국가전자도서관에서는 현재 8개 참여기관 70종의 다양한 데이터베이스를 통합검색 하실 수 있습니다.</li>
		<li>일반 이용자들은 저작권에 저촉되지 않는 원문을 유료 또는 무료로 열람/출력할 수 있습니다.</li>
		<li>국립중앙도서관을 제외한 7개 참여기관의 저작권이 있는 원문자료는 각 기관별 홈페이지에서 규정하는 방식에 따라 열람/출력하여야 하며, 국립중앙도서관의 저작권 있는 원문자료는 가까운 협약체결도서관 지정된 PC에서 열람할 수 있습니다.</li>
		<li class="btn_set r">
			<a href="http://www.dlibrary.go.kr/JavaClient/jsp/ndli/index.jsp?LOGSTATUS=notok&NLSSOTOKEN=" class="con_bblue" target="_blank">사이트바로가기</a>
		</li>
	</ul>
	
	<h2 class="tbul1">원문보기 관련</h2>
	<p class="mg_b40">전자도서관 시스템에 구축된 목록정보, 원문정보 등을 보시려면 반드시 다음을 먼저 수행해야 합니다.</p>
	
	<h2 class="tbul1">제공내용</h2>
	<h3 class="tbul2">원문정보</h3>
	<p class="mg_b30">단행본, 학위논문, 정기간행물기사색인 원문중 저작물 허락동의가 되지 않은 자료는 저작권법에 의하여 인터넷으로 서비스가 제공되지 않습니다. 이 자료의 원문서비스를 받으시려면 국회도서관 및 국회도서관과 협약체결된 도서관에 방문하셔야 합니다.</p>
	
	<h3 class="tbul2">이용자 시스템 사양</h3>
	<ul class="bul_type1 mg_b40">
		<li>OS : Windows 95, Windows 98, Windows Me, Windows 2000, Windows XP</li>
		<li>이미지뷰어 설치시 필요한 하드 디스크 용량 : 20MB 이상 (40M 이상의 Free Disk 필요)</li>
		<li>64MB 이상의 RAM (권장 사항 128MB이상)</li>
		<li>웹 브라우저 : 국가전자도서관 웹사이트는 최신 웹기술을 적용하여 Internet Explorer 5.5 이상 에서 정상적으로 작동됩니다. (service pack 2 권장)</li>
	</ul>
	
	<h2 class="tbul1">통합검색서비스</h2>
	<p class="mg_b30">국가전자도서관 통합검색 서비스는 국가전자도서관 참여 연계기관에 대상을 한정하여 서비스하는 검색 메뉴로서 대상 기관을 동시에 검색하며 해당기관의 간략 결과 포맷을 그대로 적용하여 결과를 제공합니다.</p>
	
	<h3 class="tbul2">키워드검색</h3>
	<p class="mg_b30">검색어 입력창에 찾고자하는 키워드를 입력하여 검색하는 방법으로서 기본적으로 연계기관 전체를 대상으로 합니다. 사용자가 입력한 검색어는 각 기관 DB의 서명 or 저자 필드에서 검색하게 되며 기관의 DB에 따라서 검색결과를 제공하지 않을 수도 있습니다.</p>
	
	<h3 class="tbul2">상세검색</h3>
	<p class="mg_b30">사용자가 검색옵션을 지정하고 검색대상 DB를 자유롭게 선택하여 상세히 검색할 수 있는 방법입니다. 사용자는 선택한 DB에 따라서 동적으로 구성되는 공통 검색필드 항목을 이용하여 원하는 필드에서 검색할 수 있습니다. 검색옵션으로는 검색제한 시간, 화면출력개수가 제공됩니다.</p>	
	
		
		
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>