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
		<li>자료실소개</li>
		<li>특성화(금융정보)자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">부산시공공도서관특성화</div>
	
	
	<!-- content 시작 -->
	
	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
			<li class="active"><a href="/finref02?m1=02&m2=02&m3=05">부산시공공도서관특성화</a></li>
			<li><a href="/finref03?m1=02&m2=02&m3=05">금융관련사이트</a></li>
			<li><a href="/finref04?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">특성화행사</a></li>
			<li><a href="/finref05?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">서평목록</a></li>
			<li><a href="/finref06?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">신문기사색인</a></li>
			<li><a href="/finref07?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">알짜·경제금융상식</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">부산시공공도서관</h2>			
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<thead>
		  <tr>
		    <th scope="col">도서관명</th>
		    <th scope="col">주제</th>
		    <th scope="col">주소</th>
		    <th scope="col" class="bnon">전화번호</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>시민도서관</td>
		    <td>고문헌실/논문자료실</td>
		    <td>부산시 부산진구 월드컵길 27 </td>
		    <td class="bnon">810-8200</td>
		  </tr>
		  <tr>
		    <td>중앙도서관</td>
		    <td>향토자료실</td>
		    <td>부산시 중구 중앙공원 1길 1 </td>
		    <td class="bnon">250-0300</td>
		  </tr>
		  <tr>
		    <td>구포도서관</td>
		    <td>유아 및 어린이 </td>
		    <td>부산시 북구 구포2동   1139-1</td>
		    <td class="bnon">330-6300</td>
		  </tr>
		  <tr>
		    <td>반송도서관</td>
		    <td>사학자료실</td>
		    <td>부산시 해운대구 아랫반송로 108 </td>
		    <td class="bnon">545-0103</td>
		  </tr>
		  <tr>
		    <td>해운대도서관</td>
		    <td>관광여행정보관</td>
		    <td>부산시 해운대구 못안 6길 </td>
		    <td class="bnon">742-2168</td>
		  </tr>
		  <tr>
		    <td>구덕도서관</td>
		    <td>건강자료실</td>
		    <td>부산시 서구 동아대 1길 48 </td>
		    <td class="bnon">254-0922</td>
		  </tr>
		  <tr>
		    <td>서동도서관</td>
		    <td>환경자료실</td>
		    <td>부산시 금정구 서곡로 190 </td>
		    <td class="bnon">522-0456</td>
		  </tr>
		  <tr>
		    <td>사하도서관</td>
		    <td>취업정보자료실</td>
		    <td>부산시 사하구 승학로 619 </td>
		    <td class="bnon">203-0237</td>
		  </tr>
		  <tr>
		    <td>연산도서관</td>
		    <td>해양자료실</td>
		    <td>부산시연제구 거울바위 1로 43 </td>
		    <td class="bnon">759-3357</td>
		  </tr>
		  <tr>
		    <td>명장도서관</td>
		    <td>비도서/영상자료실</td>
		    <td>부산시 동래구 명장도서관길 26 </td>
		    <td class="bnon">527-0583</td>
		  </tr>
		  </tbody>
		  </table>	
	</div>


	<h2 class="tbul1">특성화자료실 확대 운영</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<thead>
		  <tr>
		    <th scope="col">도서관명</th>
		    <th scope="col">주제</th>
		    <th scope="col">주소</th>
		    <th scope="col" class="bnon">전화번호</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>강서도서관</td>
		    <td>농업</td>
		    <td>부산광역시 강서구 도서관길 90</td>
		    <td class="bnon">970-4067</td>
		  </tr>
		  <tr>
		    <td>금정도서관</td>
		    <td>전통문화</td>
		    <td>부산광역시 금정구 금정도서관로 33</td>
		    <td class="bnon">519-5601</td>
		  </tr>
		  <tr>
		    <td>기장도서관</td>
		    <td>농업, 원예</td>
		    <td>부산광역시 기장군 기장읍 동부7길</td>
		    <td class="bnon">724-3071</td>
		  </tr>
		  <tr>
		    <td>남구도서관</td>
		    <td>청소년</td>
		    <td>부산광역시 남구 수영로 267번길 61</td>
		    <td class="bnon">607-4781</td>
		  </tr>
		   <tr>
		    <td>동구도서관</td>
		    <td>레저 스포츠</td>
		    <td>부산광역시 동구 성북로 36번길 54</td>
		    <td class="bnon">440-6411</td>
		  </tr>
		
		  <tr>
		    <td>반여도서관</td>
		    <td>어린이 그림책</td>
		    <td>부산광역시 해운대구 재반로 282번길 38</td>
		    <td class="bnon">783-4010</td>
		   </tr>
		   <tr>
		    <td>북구디지털도서관</td>
		    <td>정보화</td>
		    <td>부산광역시 북구 도서관길 42</td>
		    <td class="bnon">341-1932</td>
		  </tr>
		  <tr>
		    <td>사상도서관</td>
		    <td>영어도서</td>
		    <td>부산광역시 사상구 덕상로 72번길</td>
		    <td class="bnon">310-7971</td>
		  </tr>
		  <tr>
		    <td>수영구도서관</td>
		    <td>인문·고전</td>
		    <td>부산광역시 수영구 남천동 남천서로 33</td>
		    <td class="bnon">610-4511</td>
		  </tr>
		  <tr>
		    <td>영도도서관</td>
		    <td>해양 수산</td>
		    <td>부산광역시 영도구 동삼동 함지로 79번길 6</td>
		    <td class="bnon">419-4831</td>
		  </tr>
		  <tr>
		    <td>재송어린이도서관</td>
		    <td>유아·어린이</td>
		    <td>부산광역시 해운대구 재송동 948-23</td>
		    <td class="bnon">749-4831</td>
		  </tr>
		   <tr>
		    <td>화명도서관</td>
		    <td>노인</td>
		    <td>부산광역시 북구 용당길 22</td>
		    <td class="bnon">309-6481</td>
		  </tr>
		</tbody>
		</table>
	</div>




	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>