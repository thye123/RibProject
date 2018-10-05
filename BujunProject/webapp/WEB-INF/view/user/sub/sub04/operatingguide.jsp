<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>



<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>평생교육</li>
		<li>평생학습</li>
		<li>운영안내</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">운영안내</div>


	<!-- content 시작 -->
	<div class="operate">
		<ul>
			<li class="recr_c1">
				<h4>운영기간</h4>
				<div class="recr_box">
					<p class="ssbul">연중</p>
				</div>
			</li>
			<li class="recr_c2">
				<h4>대 상</h4>
				<div class="recr_box">
					<p class="ssbul">부산시민</p>
				</div>
			</li>
			<li class="recr_c3">
				<h4>접수기간</h4>
				<div class="recr_box">
					<!-- <p class="ssbul">상반기 프로그램(2월), 하반기 프로그램(8월)<br/> 여름방학특강(7월), 겨울방학특강(12월)</p> -->
					<p>
					<ul>
						<li class="ssbul">상반기 프로그램(2월), 하반기 프로그램(8월)</li>
						<li class="ssbul">여름방학특강(7월), 겨울방학특강(12월)</li>
					</ul>
					</p>
				</div>
			</li>
			<li class="recr_c4">
				<h4>수강료</h4>
				<div class="recr_box">
					<p class="ssbul">무료 (단, 재료비 및 교재비는 본인부담)</p>
				</div>
			</li>
			<li class="recr_c5">
				<h4>수강신청방법</h4>
				<div class="recr_box">
					<p class="ssbul">인터넷 및 어르신 방문접수 : 선착순 접수</p>
				</div>
			</li>

			<li class="recr_c6">
				<h4>유의사항</h4>
				<div class="recr_box">
					① 등록인원이 모집정원의 50%미만인 경우 프로그램 개설이 안 될 수 있습니다.<br /> ② 모든 프로그램은 선착순
					마감합니다.<br /> ③ 대리접수 불가 ( 단, 유아 및 아동프로그램제외)<br /> ④ 도서관 사정에 따라
					프로그램이 변경될 수 있습니다.<br />
					<br /> <span class="red">※ 수강신청후 취소없이 불참하실 경우, 다음 학기에 불이익이
						있을 수 있습니다.</span><br /> <span class="blue">※ 수강신청은 1인 3개 프로그램까지
						신청하실 수 있습니다. </span>

				</div>
			</li>


			<li class="recr_c7">
				<h4>취소/변경/대기신청</h4>
				<div class="recr_box">
					수강신청 취소는 프로그램신청확인 로그인후, 신청취소를 할 수 있습니다.<br /> <span class="red">(단,
						마감된 프로그램의 경우 수강신청 취소는 개강 하루 전까지 전화로 가능합니다.)</span><br />
					<br /> ① 개강일 이후 마감되지 않은 프로그램는 추가모집시 등록 가능합니다.<br /> ② 마감된 프로그램의
					접수를 원하시는 경우 전화로 대기자신청을 하시면 수강취소자 발생시 연락드립니다.
				</div>
			</li>


			<li class="recr_c8">
				<h4>신청문의</h4>
				<div class="recr_box">
					<p class="ssbul">
						부전도서관 자료봉사과(2층) ☎ <a href="tel:051-802-5901">802-5901</a>(연결번호 4번)
					</p>
				</div>
			</li>

		</ul>
	</div>

	<!-- //content 끝 -->
</div>




</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>