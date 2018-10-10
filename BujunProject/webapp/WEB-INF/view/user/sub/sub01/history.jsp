<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu01.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관소개</li>
		<li>연혁/인사말</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">연혁/인사말</div>
	
	
	<!-- content 시작 -->
	

	<h2 class="tbul1">인사말</h2>		
	
	
	<div class="greeting mg_b40">
		<p class="mg_b20"><img src="${pageContext.request.contextPath}/resources/user/images/sub/gr_text.jpg" alt="지혜와 문화의 길, 따스한 삶이 있는 부전도서관"></p>
		
		<div>
			<span style="color:#000; font-size:20px;">부전도서관을 방문해 주셔서 감사합니다.</span><br>
			우리 부전도서관은 부산의 중심가에 위치하여 1963년 개관 이래 많은 부산 시민들이 이용하며, 부산 시민들과 오래도록 함께하고 있습니다.<br><br><br>
	
			사회의 발전과 변화에 맞춰 도서관도 책이라는 구심점 아래에서 항상 변화와 마주하고 있습니다. 우리 도서관도 다양한 독서문화행사와 평생학습강좌를 운영하여
			시민들이 지역에서 문화를 즐기고 직접 참여 할 수 있도록 하고 있으며 보다 나은 서비스를 제공하기 위해 노력하고 있습니다.<br><br><br>
	
			더불어 우리 도서관은 금융정보 특성화 도서관으로서 보다 특화되고 전문적인 서비스를 제공하는 등 평생학습공간으로서의 역할을 다하고자 합니다.<br><br>
	
			일상에서 늘 맞이하는 책 속에는 지식과 지혜가 담겨 있으며, 또한 책은 우리의 과거와 현재, 미래를 비치고 있습니다. 우리 도서관을 찾는 모든 분들이 책 속에 담긴 지식과 지혜를 품고서 아름다운 삶의 길을 걸으시기 바랍니다.<br><br>
	
			감사합니다.<br><br>
	
			부산광역시립부전도서관장<span style="text-align: right;color:#000; font-size:20px;font-weight: bold;"> 한 경 옥  </span>
		</div>
	</div>


	<h2 class="tbul1">연혁</h2>	

	<div class="history_area">	
	
		<h4><span>HISTORY</span></h4>
		<ol class="tmh-perspective">
			<li class="hist_l hist_point">
				<dl>
					<dt>2007~현재</dt>				
					<dd><span>2016.12.14</span> 청소년자원봉사 최우수터전 여성가족부 장관상 수상</dd>
					<dd><span>2014.02.27</span>제46회 한국도서관상(단체상) 수상 </dd>
					<dd><span>2012.11.30</span>도서관 개발사업 실시협약 체결(부산진구청 및 사업시행자간) </dd>
					<dd><span>2012.11.05</span>모바일 홈페이지 개통(http://www.bjl.go.kr/mobile) </dd>
					<dd><span>2011.04.15</span>공공도서관 표준자료관리시스템(KOLASⅢ)로 전환 </dd>
					<dd><span>2011.04.01</span>특성화 주제 변경(진학 ⇒ 금융) </dd>
					<dd><span>2010.07.20</span>어린이실 개관시간 연장 시행 </dd>
					<dd><span>2009.05.06</span>공공도서관 개관시간 연장 시행 </dd>
					<dd><span>2008.10.15</span>홈페이지 개편(http://www.bjl.go.kr) </dd>
					<dd><span>2007.09.12</span>무인도서대출반납시스템 설치</dd>
				</dl>
				<p class="bg_list"></p>
			</li>
			<li class="hist_r hist_point">
				<dl>
					<dt>2000~2006</dt>
					<dd><span>2006.10.27</span>디지털자료실 연속간행물실 통합 및 열람실 재배치 </dd>
					<dd><span>2006.05.04</span>전포역 지하철북카페 개설 </dd>
					<dd><span>2004.05.13</span>신개금LG아파트 평생학습마을 개관 </dd>
					<dd><span>2003.04.01</span>디지털자료실 설치 </dd>
					<dd><span>2003.02.18</span>종합자료실 설치 및 자료실 재배치 </dd>
					<dd><span>2001.10.30</span>공공도서관 표준자료관리시스템(KOLASⅡ)로 전환 </dd>
					<dd><span>2001.02.10</span>홈페이지 개설(http://www.bjl.go.kr) </dd>
					<dd><span>2000.11.25</span>평생학습관 지정 </dd>
				</dl>
				<p class="bg_list"></p>
			</li>
			<li class="hist_l hist_point">
				<dl>
					<dt>1982 ~ 2000</dt>
					<dd><span>2000.11.25</span>평생학습관 지정 </dd>
					<dd><span>1999.12.30</span>도서관 전산업무 UNIX체제로 전환 </dd>
					<dd><span>1998.03.17</span>진학정보 특성화 도서관 지정 </dd>
					<dd><span>1995.01.01</span>부산광역시립부전도서관으로 명칭 변경(지방자치법 개정) </dd>
					<dd><span>1992.04.01</span>도서관업무 전산화 실시 </dd>
					<dd><span>1982.08.08</span>자료실 개가제 실시 </dd>
					<dd><span>1982.08.17</span>부산직할시립부전도서관 개관 </dd>
					<dd><span>1982.04.08</span>부산직할시립부전도서관 설치 조례 제정 (부산직할시 조례 제1716호) </dd>
				</dl>
				<p class="bg_list"></p>
			</li>                                    
			<li class="hist_r hist_point">
				<dl>
					<dt>1962 ~ 1981</dt>
					<dd><span>1981.04.04 </span>'부산시립부산도서관' 이 '부산직할시립부산도서관'으로 명칭 변경 </dd>
					<dd><span>1978.01.06 </span>'부산시립도서관'이 '부산시립부산도서관'으로 명칭 변경</dd>
					<dd><span>1965.05.05</span>‘시민백과의 집’ 시작 </dd>
					<dd><span>1965.05.10 </span>도서관리 규정 제정(부산시교육감 훈령 제3호) </dd>
					<dd><span>1964.01.01 </span>도서관 소속이 부산시에서 부산시교육청 소관으로 변경 </dd>
					<dd><span>1963.08.05 </span>"부산시립도서관"신축 개관 </dd>
					<dd><span>1963.07.22 </span>동광동 구 교육위원회 청사에서 부전동 신축도서관으로 이전 </dd>
					<dd><span>1963.07.20 </span>부산시립도서관열람규칙 제정 </dd>
					<dd><span>1963.06.30 </span>부산시립도서관 완공 </dd>
					<dd><span>1963.05.20 </span>부산시립도서관조례 제정(조례46호) </dd>
					<dd><span>1962.09.01 </span>부산시립도서관 착공 </dd>				
				</dl>
				<p class="bg_list"></p>
			</li>
			
		</ol>
	</div>







<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>