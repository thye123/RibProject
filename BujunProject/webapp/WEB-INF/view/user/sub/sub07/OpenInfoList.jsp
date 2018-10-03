<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu07.jsp"%>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>정보공개</li>
		<li>사전공표대상및비공개대상목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">정보공개</div>

	<div class="tab_depth01">
		<ul class="n03">
			<li><a href="/info01?m1=07&m2=01&m3=01">정보공개제도안내</a></li>
			<li><a href="/info02?m1=07&m2=01&m3=02" class="on">사전공표대상 및
					비공개대상목록</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=03">정보목록</a></li>
			<li><a href="#">정보공개청구</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=05">사전공표대상공개</a></li>
		</ul>
	</div>


	<!-- content 시작 -->


	<h3 class="tbul1 mg_b40">주요업무계획</h3>



	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>공개대상정보 공개주기 공개시기 공개장소 및 방법 비고로 구분하여 주요업무계획테이블입니다.</caption>
			<thead>
				<tr>
					<th scope="col">공개대상정보</th>
					<th scope="col">공개주기</th>
					<th scope="col">공개시기</th>
					<th scope="col">공개장소 및 방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>부전도서관 주요업무계획 수립</td>
					<td>연 1회</td>
					<td>매년 2월</td>
					<td><a
						href="./7406.php?pagetype=&pageno=1&bbsid=7406&qstr=&m1=11&m2=03&category=%C1%D6%BF%E4%BE%F7%B9%AB%B0%E8%C8%B9">인터넷정보공개방</a></td>
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</div>

	<h3 class="tbul1 mg_b40">주요행사정보</h3>
	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>공개대상정보 공개주기 공개시기 공개장소 및 방법 비고로 구분한 주요행사정보테이블입니다.</caption>
			<thead>
				<tr>
					<th scope="col">공개대상정보</th>
					<th scope="col">공개주기</th>
					<th scope="col">공개시기</th>
					<th scope="col">공개장소 및 방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>도서관주간 행사안내</td>
					<td>연 1회</td>
					<td>매년 4월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>범시민독후감 및 One Book One Busan<br> 독후감 공모
					</td>
					<td>연 1회</td>
					<td>매년 9월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>독서의 달 행사안내</td>
					<td>연 1회</td>
					<td>매년 9월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>알뜰도서교환전</td>
					<td>연 1회</td>
					<td>매년 9월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>평생학습축제 안내</td>
					<td>연 1회</td>
					<td>매년 10월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</div>

	<h3 class="tbul1 mg_b40">평생교육프로그램 관련 안내</h3>
	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>공개대상정보 공개주기 공개시기 공개장소 및 방법 비고로 구분하여 평생교육프로그램 관련
				안내테이블 입니다.</caption>
			<thead>
				<tr>
					<th scope="col">공개대상정보</th>
					<th scope="col">공개주기</th>
					<th scope="col">공개시기</th>
					<th scope="col">공개장소 및 방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>문화교실 안내</td>
					<td>연 2회</td>
					<td>매년 2, 8월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>토요프로그램 안내</td>
					<td>연 2회</td>
					<td>시행당시</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>원어민영어 체험프로그램 안내</td>
					<td>연 2회</td>
					<td>매년 3, 9월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>방학특강 평생교육프로그램 안내</td>
					<td>연 2회</td>
					<td>매년 7, 12월</td>
					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>특별강연회</td>
					<td>연 2회</td>
					<td>매년 4, 9월</td>

					<td>홈페이지 공지사항</td>
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>

	</div>


	<h3 class="tbul1 mg_b40">예산에 관한 정보</h3>
	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>공개대상정보 공개주기 공개시기 공개장소 및 방법 비고로 구분하여 예산에 관한 정보테이블
				입ㄴ디ㅏ.</caption>
			<thead>
				<tr>
					<th scope="col">공개대상정보</th>
					<th scope="col">공개주기</th>
					<th scope="col">공개시기</th>
					<th scope="col">공개장소 및 방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>주요공사 추진계획 및 결과</td>
					<td>수시</td>
					<td>시행당시</td>
					<td><a
						href="./7406.php?pagetype=&pageno=1&bbsid=7406&m1=11&m2=03&category=%BF%B9%BB%EA%BF%A1+%B0%FC%C7%D1+%C1%A4%BA%B8">인터넷정보공개방</a></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>각종계약 사항</td>
					<td>수시</td>
					<td>시행당시</td>
					<td><a
						href="./7406.php?pagetype=&pageno=1&bbsid=7406&m1=11&m2=03&category=%BF%B9%BB%EA%BF%A1+%B0%FC%C7%D1+%C1%A4%BA%B8">인터넷정보공개방</a></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>행정재산 임대사항</td>
					<td>수시</td>
					<td>시행당시</td>
					<td><a
						href="./7406.php?pagetype=&pageno=1&bbsid=7406&m1=11&m2=03&category=%BF%B9%BB%EA%BF%A1+%B0%FC%C7%D1+%C1%A4%BA%B8">인터넷정보공개방</a></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>업무추진비</td>
					<td>매월/분기</td>
					<td>월1회/분기</td>
					<td><a
						href="./7406.php?pagetype=&pageno=1&bbsid=7406&m1=11&m2=03&category=%BF%B9%BB%EA%BF%A1+%B0%FC%C7%D1+%C1%A4%BA%B8">인터넷정보공개방</a></td>
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</div>

	<h3 class="tbul1 mg_b40">그 밖의 정보</h3>
	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>공개대상정보 공개주기 공개시기 공개장소 및 방법 비고로구분하여 그 밖의 정보에 관한
				테이블입니다.</caption>
			<thead>
				<tr>
					<th scope="col">공개대상정보</th>
					<th scope="col">공개주기</th>
					<th scope="col">공개시기</th>
					<th scope="col">공개장소 및 방법</th>
					<th scope="col">비고</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>도서관련 정보</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
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