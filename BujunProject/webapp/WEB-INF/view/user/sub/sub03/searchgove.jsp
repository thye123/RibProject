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
		<li>관보검색</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">관보검색</div>
	

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon1"></span>
			<b>관보검색</b>
			<p>1945년 이후의 관보는 전자관보에서 검색이 가능합니다. 1894년부터 1945변까지 발행된 구한국 관보 및 조선총독부 관보는 국립중앙도서관 전자도서관을 통해 검색이 가능합니다.</p>
		</div>
	</div>
	
	
	<div class="ui uilnk type1 mb_10 sub01_02">
		<div class="box_col col2">
			<div class="col">
				<div class="item">
					<span class="bico">
						<span class="icow i_icon4"></span>
					</span>
					<ul>
						<li class="ltx"><a href="http://gwanbo.mois.go.kr/main.do" target="_blank" title="새창열림">전자관보 바로가기</a></li>
					</ul>
				</div>
			</div>
			<div class="col">
				<div class="item">
					<span class="bico">
						<span class="icow i_icon5"></span>
					</span>
					<ul>
						<li class="ltx"><a href="http://www.dlibrary.go.kr" target="_blank" title="새창열림">국가전자도서관 바로가기</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>	
	
		
		
<!-- //content 끝 -->
</div>






		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>