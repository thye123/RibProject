<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu01.jsp"%>



<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>도서관소개</li>
		<li>조직도/담당업무안내</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">조직도/담당업무안내</div>


	<!-- content 시작 -->

	<!-- 조직도 시작 -->
	<h2 class="tbul1">조직도</h2>
	
	<div class="org_bg">
		<ul>
			<li><div class="n01">
					<span>관장</span>
				</div>
				<ul>
					<li>
						<div class="n02">
							<span>도서관운영위원회</span>
						</div>
						<div class="n04">
							<span>자료선정협의회</span>
						</div>
						<ul class="f_l">


							<li class="org_left"><div class="n03">
									총무과
									<ul>
										<li>도서관 운영 계획 수립</li>
										<li>문서 및 보안관리</li>
										<li>자금의 운영&middot;회계 및 결산</li>
										<li>도서관운영위원회 운영</li>
										<li>청사 및 차량관리</li>
										<li>관리, 관수 및 제증명 발급</li>
										<li>기타 타과의 주관에 속하지 아니하는 업무</li>
									</ul>
								</div></li>

							<li class="org_right"><div class="n03">
									자료봉사과
									<ul>
										<li>도서관 자료 수서, 정리, 보존</li>
										<li>장서점검 및 제적, 장서 통계</li>
										<li>자료선정협의회 운영</li>
										<li>자료의 열람, 대출 및 관리</li>
										<li>자료실 운영 및 도서관 전산화</li>
										<li>시민독서운동 및 문화행사</li>
										<li>독서회 및 독서교실 운영</li>
										<li>평생교육프로그램 개발&middot;운영</li>
									</ul>
								</div></li>

						</ul>
					</li>
				</ul></li>
		</ul>
		<p class="clr"></p>
	</div>

	<h3>직원현황</h3>
	<div class="mb_scroll">
		<table class="tbl_basic">
			<caption>구분 4급 사서직 행정직 기술관리운영직군 합계로 구분하여 직원현황</caption>
			<thead>
				<tr>
					<th scope="col" width="15%">구분</th>
					<th scope="col" width="15%">4급</th>
					<th scope="col" width="15%">사서직</th>
					<th scope="col" width="15%">행정직</th>
					<th scope="col" width="15%">기술관리운영직군</th>
					<th scope="col" width="15%">합계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>정원</td>
					<td>1</td>
					<td>13</td>
					<td>4</td>
					<td>4</td>
					<td>22</td>
				</tr>
				<tr>
					<td>현원</td>
					<td>1</td>
					<td>12</td>
					<td>4</td>
					<td>4</td>
					<td>21</td>
				</tr>

			</tbody>
		</table>
	</div>
	<!-- 조직도 끝 -->

	<!-- 담당 업무 시작 -->
	<h2 class="tbul1">담당업무안내</h2>

	<ul>
		<li class="bul mg_b30">관장(<a href="tel:051-802-6017">802-6017</a>)
			<ul>
				<li class="sbul">한경옥 관장</li>
			</ul>
		</li>
		<li class="bul mg_b30">총무과(<a href="tel:051-802-5901">802-5901</a>)
			<div class="mb_scroll">
				<table class="tbl_basic">
					<caption>담당자 담당업무 내선번호로 구분하여 총무과 담당업무안내</caption>
					<thead>
						<tr>
							<th scope="col">담당자</th>
							<th scope="col">담당업무</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>남식현 총무과장</td>
							<td>총무과 업무</td>
						</tr>
						<tr>
							<td>김동현</td>
							<td>총무과 기획업무</td>
						</tr>
						<tr>
							<td>심정해</td>
							<td>예&middot;결산 및 일상경비 지출</td>
						</tr>
						<tr>
							<td>안민정</td>
							<td>급여 및 인사업무</td>
						</tr>
						<tr>
							<td>허원철</td>
							<td>청사시설관리 및 방호(안내실근무)</td>
						</tr>
					</tbody>
				</table>
			</div>
		</li>
		<li class="bul mg_b30">자료봉사과(<a href="tel:051-802-3096">802-3096</a>)
			<div class="mb_scroll">
				<table class="tbl_basic">
					<caption>과명 각실명 담당자 당당업무 내선번호 자료봉사과</caption>
					<thead>
						<tr>
							<th scope="col">각 실명</th>
							<th scope="col">담당자</th>
							<th scope="col">담당업무</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">공은희 자료봉사과장</td>
							<td>자료봉사과 업무</td>
						</tr>
						<tr>
							<td rowspan="2">자료봉사과사무실</td>
							<td>박경숙</td>
							<td>자료봉사과 기획업무</td>
						</tr>
						<tr>
							<td>유초희</td>
							<td>평생교육, 작은도서관, 전포북카페 운영지원</td>
						</tr>
						<tr>
							<td rowspan="3">종합자료실</td>
							<td>김경옥</td>
							<td>종합자료실 업무</td>
						</tr>
						<tr>
							<td>김조현</td>
							<td>독서회원 관리 및 자료열람 봉사</td>
						</tr>
						<tr>
							<td>박경숙</td>
							<td>소외계층 관련 업무, 직장문고운영및관리</td>
						</tr>
						<tr>
							<td rowspan="2">디지털실<br /> 연속간행물실<br /> 금융정보자료실
							</td>
							<td>김수미</td>
							<td>디지털실 업무</td>
						</tr>
						<tr>
							<td>김희경</td>
							<td>금융정보자료실 운영, 연속간행물 운영</td>
						</tr>
						<tr>
							<td rowspan="2">어린이실</td>
							<td>최은화</td>
							<td>어린이실 업무</td>
						</tr>
						<tr>
							<td>박수진</td>
							<td>독서교실, 독서회 운영 및 관리</td>
						</tr>
						<tr>
							<td rowspan="3">사서계</td>
							<td>이진옥</td>
							<td>사서계 기획업무, 도서관 장서개발</td>
						</tr>
						<tr>
							<td>이소정</td>
							<td>자료의 선정&middot;수집&middot;정리&middot;분석, 신간자료 및 희망자료</td>
						</tr>
						<tr>
							<td>이경숙</td>
							<td>기증자료 수집&middot;정리 D/B 입력, 작은도서관 자료지원</td>
						</tr>
					</tbody>
				</table>
			</div>
		</li>
	</ul>

	<!-- 담당 업무 끝 -->

	<!-- //content 끝 -->
</div>








</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>