<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp"%>



<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>열린마당</li>
		<li>도서관관계법령</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">도서관관계법령</div>


	<!-- content 시작 -->
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board2">
			<colgroup><col style="width:25%;" /><col style="width:25%;" /><col style="width:25%;" /><col style="width:25%;"/></colgroup>
			<tbody>
			<tr>
				<th class="btop">도서관법</th>
				<td class="btop2">
					<a href="http://www.law.go.kr/법령/도서관법/(11310)" class="new_btn" target="_blank" title="새창열림">홈페이지</a>
				</td>
				
				<th class="btop">도서관법 시행령</th>
				<td class="btop2 bnon">
					<a href="http://www.law.go.kr/법령/도서관법시행령/(24035)" class="new_btn" target="_blank" title="새창열림">홈페이지</a>			
				</td>
			</tr>
		    <tr>
				<th>도서관법 시행규칙</th>
				<td>
					<a href="http://www.law.go.kr/법령/도서관법시행규칙/(00126)"  class="new_btn" target="_blank" title="새창열림">홈페이지</a>
				</td>
				<th>저작권법</th>
				<td class="bnon">
					<a href="http://www.law.go.kr/법령/저작권법/(11110)" class="new_btn" target="_blank" title="새창열림">홈페이지</a>
				</td>
			 </tr>
			 <tr>
				<th>저작권법 시행령</th>
				<td>
					<a href="http://www.law.go.kr/법령/저작권법시행령/(23721)" class="new_btn" target="_blank" title="새창열림">홈페이지</a>
				</td>
				<th>저작권법 시행규칙</th>
				<td class="bnon">
					<a href="http://www.law.go.kr/법령/저작권법시행규칙/(00134)" class="new_btn" target="_blank" title="새창열림">홈페이지</a>			
				</td>
			  </tr>
			  <tr>
				  <th>부산광역시립도서관 운영 규칙</th>
				  <td>
					  <a class="new_btn" href="http://www.law.go.kr/ordinInfoP.do?urlMode=ordinScJoRltInfoR&viewCls=ordinInfoP&ordinSeq=625144&chrClsCd=010202&vSct=%EB%B6%80%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C%EB%A6%BD%EB%8F%84%EC%84%9C%EA%B4%80%20%EC%9A%B4%EC%98%81%EA%B7%9C%EC%B9%99&conDatGubunCd=0&gubun=KLAW" target="_blank" title="새창열림">바로가기</a>
				  </td>
				  <th>부산광역시립부전도서관 이용규정</th>
				  <td class="bnon">
					  <a class="new_btn" href="${pageContext.request.contextPath}/resources/user/file/2015_bjl.pdf" target="_blank" title="새창열림">바로가기</a>
				  </td>
			  </tr>
			 <tr>
				<th>부산지역 공공도서관 <br />책이음서비스 회원관리규정</th>
				<td>
					<a class="new_btn" href="${pageContext.request.contextPath}/resources/user/file/2018_bjl_member.pdf" target="_blank" title="새창열림">바로가기</a>
				</td>
				<th></th>
				<td class="bnon"></td>
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
<%@ include file="../../include/footer.jsp"%>