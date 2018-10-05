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
		<li>전자행정서비스</li>
		<li>정보공개안내</li>
		<li>정보공개제도안내</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

	<!-- title -->
	<div class="sub_tit">정보공개안내</div>

	<!-- content 시작 -->

	<h2 class="tbul1">가. 공개 제도의 목적</h2>
	<ul class="bul_none bul_none2 mg_b40">
		<li><span class="bul_cir">1</span>국민의 알권리
			<ul>
				<li>공공기관의 정보공개 의무보다 국민의 알권리(정보공개청구권)우선</li>
			</ul>
		</li>
		<li><span class="bul_cir">2</span>국정에 대한 국민 참여 확대
			<ul>
				<li>국민의 국정참여를 실질화하여 정보에 대한 접근권 보장</li>
			</ul>
		</li>
		<li><span class="bul_cir">3</span>행정의 투명성과 신뢰성
			<ul>
				<li>공공기관이 중요정보를 적극적으로 사전에 공개하여 국민의 신뢰 확보</li>
			</ul>
		</li>
		<li><span class="bul_cir">4</span>국민의 권익보호
			<ul>
				<li>각종 사회문제(환경·교통·소비자·안전 등)에 대처하여 국민의 권익 보호를 위한 관련정보 접근권 보장</li>
			</ul>
		</li>
	</ul>
	
	
	<h3 class="tbul1">나. 근거법령</h3>
	<ul class="bul_none bul_none2 mg_b40">
		<li><span class="bul_cir">1</span>공공기관의정보공개에관한법률(2013. 3. 23 개정)</li>
		<li><span class="bul_cir">2</span>공공기관의정보공개에관한법률시행령(2013. 3. 23 개정)</li>
		<li><span class="bul_cir">3</span>공공기관의정보공개에관한시행규칙(2011.11. 1 개정)</li>
		<li><span class="bul_cir">4</span>부산광역시교육청행정정보공개운영에관한규칙(2010. 8.26개정)]</li>
	</ul>


	<h3 class="tbul1">다. 정보공개 청구권자</h3>
	<ul class="bul_none bul_none2 mg_b40">
		<li><span class="bul_cir">1</span> 대한민국 모든 국민(법인, 단체 포함)</li>
		<li><span class="bul_cir">2</span> 외국인(청구권이 인정되는 외국인의 범위)
			<ul>
				<li>국내에 일정한 주소를 두고 거주하는 자</li>
				<li>학술·연구를 위하여 일시적으로 체류하는 자</li>
				<li>국내에 사무소를 두고 있는 법인 또는 단체</li>
			</ul>
		</li>
	</ul>

	<h3 class="tbul1">라. 행정정보 공표기준</h3>

	<ul class="bul_none bul_none2 mg_b40">
		<li><span class="bul_cir">1</span>대한민국 모든 국민(법인, 단체 포함)</li>
		<li><span class="bul_cir">2</span>외국인(청구권이 인정되는 외국인의 범위)
			<ul>
				<li>국내에 일정한 주소를 두고 거주하는 자</li>
				<li>학술·연구를 위하여 일시적으로 체류하는 자</li>
				<li>국내에 사무소를 두고 있는 법인 또는 단체</li>
			</ul>
		</li>
	</ul>




	<h3 class="tbul1">마. 비공개 대상정보</h3>
		「공공기관의 정보공개에 관한 법률」제9조 제1항
		<ul class="bul_type1 mg_b40">
			<li>1호. 다른 법률 또는 법률이 위임한
				명령(국회규칙·대법원규칙·헌법재판소규칙·중앙선거관리위원회규칙·대통령령 및 조례에 한한다)에 의하여 비밀 또는 비공개사항으로
				규정된 정보</li>
			<li>2호. 국가안전보장·국방·통일·외교관계 등에 관한 사항으로서 공개될 경우 국가의
				중대한 이익을 현저히 해할 우려가 있다고 인정되는 정보</li>
			<li>3호. 공개될 경우 국민의 생명·신체 및 재산의 보호에 현저한 지장을 초래할 우려가
				있다고 인정되는 정보</li>
			<li>4호. 진행 중인 재판에 관련된 정보와 범죄의 예방, 수사, 공소의 제기 및 유지,
				형의 집행, 교정, 보안처분에 관한 사항으로 공개될 경우 그 직무 수행을 현저히 곤란하게 하거나 형사피고인의 공정한 재판을
				받을 권리를 침해한다고 인정할 만한 상당한 이유가 있는 정보</li>
			<li>5호. 감사·감독·검사·시험·규제·입찰계약·기술개발·인사관리·의사결정과정 또는
				내부검토과정에 있는 사항 등으로 공개될 경우 업무의 공정한 수행이나 연구·개발에 현저한 지장을 초래한다고 인정할 만한
				상당한 이유가 있는 정보</li>
			<li>6호. 당해 정보에 포함되어 있는 이름·주민등록번호 등 개인에 관한 사항으로서 공개될
				경우 개인 사생활의 비밀 또는 자유를 침해할 우려가 있다고 인정되는 정보</li>
			<li>7호. 법인, 단체 또는 개인(이하 "법인 등"이라 한다)의 경영·영업상 비밀에 관한
				사항으로서 공개될 경우 법인 등의 정당한 이익을 현저히 해할 우려가 있다고 인정되는 정보</li>
			<li>8호. 공개될 경우 부동산 투기·매점매석 등으로 특정인에게 이익 또는 불이익을 줄
				우려가 있다고 인정되는 정보</li>
		</ul>
		

	<h3 class="tbul1">정보공개제도 공개기관</h3>
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
			<caption>기관명 우편번호 주소 전화번호 담당부서로 구분하여 정보공개제도 공개기관 정보입니다.</caption>
			<thead>
				<tr>
					<th scope="col">기관명</th>
					<th scope="col">우편번호</th>
					<th scope="col">주 소</th>
					<th scope="col">전화번호</th>
					<th scope="col" class="bnon">담당부서</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>부산광역시립부전도서관</td>
					<td>우 614-845</td>
					<td>주소 : 부산시 부산진구 동천로 79<br /> (부전2동 168-269번지)</td>
					<td>T.802-5901</td>
					<td class="bnon">총무과</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	

	<h3 class="tbul1">수수료</h3>
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box">			
		<table class="tb_board">
			<caption>공개대상 공개방법 및 수수료 원본의 열람신청 원본의 사본(출력물) 등에 관한 수수료
				정보테이블입니다.</caption>
			<thead>
				<tr>
					<th rowspan="2" scope="col">공개대상</th>
					<th colSpan="4" scope="col" class="bnon">공개방법 및 수수료</th>
				</tr>
				<tr>
					<th scope="col" class="top_none">원본의 열람신청</th>
					<th scope="col" class="top_none">원본의 사본(출력물)<br /> 복제물&middot;인화물</th>
					<th scope="col" class="top_none">전산자료의<br /> 열람&middot;시청</th>
					<th scope="col" class="top_none bnon">전산자료의<br /> 사본(출력물)&middot;복제물</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><strong>문서대장등</strong></td>
					<td width="23%" valign="top"><strong>[열람]</strong><br /> - 1건
						(10매기준)<br /> 1회: 200원<br /> <br /> &middot;10매 초과시<br /> 5매마다
						100원</td>
					<td valign="top"><strong>[사본] </strong>(1매 기준)<br /> -A3이상
						300원<br /> &middot;1매 초과마다 100원<br /> <br /> -B4이하 250원<br />
						&middot;1매 초과마다 50원</td>
					<td valign="top"><strong>[열람]</strong><br /> - 1건 (10매기준)<br />
						1회 : 200원<br /> <br /> &middot;10매 초과시<br /> 5매마다 100원<br /></td>
					<td valign="top" class="bnon"><p>
							<strong>[사본] </strong>(종이출력물)<br /> &middot;A3이상 300원<br /> -
							1매 초과마다 100원<br /> &middot;B4이하 250원<br /> - 1매 초과마다 50원
						</p>
						<p>
							<strong>[복제]</strong><br /> -1건 (10매 기준)<br /> 1회: 200원<br />
							-10매 초과시 5매마다 100원
						</p>
						<p>※ 매체비용은 별도</p></td>
				</tr>
				<tr>
					<td><strong>도면<br /> &middot;카드 등
					</strong></td>
					<td width="23%" valign="top"><strong>[열람]</strong><br /> -1매
						: 200원<br /> &middot;1매 초과마다 100원</td>
					<td valign="top"><strong>[사본] </strong>(1매 기준)<br /> -A3이상
						300원<br /> &middot;1매 초과마다 100원<br /> -B4이하 250원<br />
						&middot;1매 초과시마다 50원</td>
					<td valign="top"><strong>[열람]</strong><br /> - 1매 : 200원<br />
						&middot;1매 초과마다 100원</td>
					<td valign="top" class="bnon"><p>
							<strong>[사본]</strong> (종이출력물) &middot;A3이상 300원<br /> - 1매 초과마다
							100원<br /> &middot;B4이하 250원<br /> - 1매 초과마다 50원
						</p> <strong>[복제]</strong><br /> - 1건 (10매기준)<br /> 1회 : 200원<br />
						- 10매초과시 5매마다 100원
						<p>※ 매체비용은 별도</p></td>
				</tr>
				<tr>
					<td><strong>녹음테이프</strong></td>
					<td width="23%" valign="top"><strong>[시청]</strong><br /> -
						1건이 1개이상으로 이루어진 경우<br /> &middot;1개(60분 기준)마다 1,500원<br /> -
						여러건이 1개로 이루어진 경우<br /> &middot;1건(30분 기준)<br /> 마다 700원</td>
					<td valign="top"><p>
							<strong>[복제]</strong><br /> - 1건이 1개이상으로 이루어진 경우<br />
							&middot;1개마다 5,000원<br /> - 여러건이 1개로 이루어진 경우<br /> &middot;1건마다
							3,000원
						</p>
						<p>※ 매체비용은 별도</p></td>
					<td rowspan="3" valign="top"><strong>[시청&middot;청취]</strong><br />
						- 1편:1,500원<br /> &middot;30분 초과시 10분마다500원</td>
					<td rowspan="3" valign="top" class="bnon"><p>
							<strong>[복제]</strong><br /> - 1건(700MB 기준) 마다 5,000원<br /> -
							700MB 초과시 350MB마다 2,500원
						</p>
						<p>※매체비용은 별도</p></td>
				</tr>
				<tr>
					<td><strong>녹화테이프<br /> (비디오)
					</strong></td>
					<td width="23%" valign="top"><strong>[시청]</strong><br /> -
						1편이 1롤이상<br /> 으로 이루어진 경우<br /> &middot;1롤(60분 기준)마다 1,500원<br />
						- 여러편이 1롤로 이루어진 경우<br /> &middot;1편(30분 기준)마다 700원</td>
					<td valign="top"><p>
							<strong>[복제]</strong><br /> - 1편이 1롤이상으로 이루어진 경우<br />
							&middot;1롤마다 5,000원<br /> - 여러편이 1롤로 이루어진 경우<br /> &middot;1편마다
							3,000원
						</p>
						<p>※ 매체비용은 별도</p>
					</td>
				</tr>
				<tr>
					<td><strong>영화필름</strong></td>
					<td width="23%" valign="top"><strong>[시청]</strong><br /> -
						1편이 1캔이상으로 이루어진 경우<br /> &middot;1캔(60분기준마다 3,500원<br /> - 여러편이
						1캔으로 이루어진 경우<br /> &middot;1편(30분 기준)마다 2,000원<br /></td>
					<td valign="top">&nbsp;</td>
				</tr>
				<tr>
					<td><strong>슬라이드</strong></td>
					<td width="23%" valign="top"><strong>[열람]</strong><br />
						-1컷마다 200원</td>
					<td valign="top"><p>
							<strong>[복제]</strong><br /> - 1컷마다 3,000원
						</p> ※ 매체비용은 별도</td>
					<td valign="top"><strong>[시청]</strong><br /> -1컷마다 200원</td>
					<td valign="top" class="bnon">&nbsp;</td>
				</tr>
				<tr>
					<td><strong>마이크로<br /> 필름
					</strong></td>
					<td width="23%" valign="top"><strong>[열람]</strong><br /> -
						1건(10컷 기준)<br /> 1회 500원<br /> &middot;10컷초과시<br /> 1컷마다 100원</td>
					<td valign="top"><p>
							<strong>[사본]</strong> (출력물 : 1매 기준)<br /> -A3이상 300원<br />
							&middot;1매 초과시마다 200원<br /> -B4이하 250원<br /> &middot;1매 초과시마다
							150원
						</p>
						<p>
							<strong>[복제]</strong><br /> -1롤마다 1,000원
						</p>
						<p>※ 매체비용은 별도</p></td>
					<td valign="top">&nbsp;</td>
					<td valign="top" class="bnon">&nbsp;</td>
				</tr>
				<tr>
					<td><strong>사진&middot;<br /> 사진필름
					</strong></td>
					<td width="23%" valign="top"><strong>[열람]</strong><br /> -1매
						: 200원<br /> &middot;1매 초과마다 50원</td>
					<td valign="top"><p>
							<strong>[인화]</strong> (필름)<br /> -1컷 : 500원<br /> &middot;1매
							초과마다<br /> 3"&times; 5" 200원<br /> 5"&times; 7" 300원<br />
							8"&times;10" 400원
						</p>
						<p>
							<strong>[복제]</strong> (필름)<br /> -1컷마다 6,000원
						</p>
						<p>※ 매체비용은 별도</p></td>
					<td valign="top"><p>
							<strong>[열람]</strong><br /> -1매 : 200원<br /> &middot;1매 초과마다
							50원
						</p>
						<p>
							<strong>[사본]</strong><br /> (종이 출력물)<br /> -1컷 : 250원<br />
							&middot;1매 초과마다<br /> 3"&times; 5" 50원<br /> 5"&times; 7" 100원<br />
							8"&times;10" 150원
						</p></td>
					<td valign="top" class="bnon"><p>
							<strong>[복제]</strong><br /> - 1건(1MB기준)1회:200원<br /> - 1MB초과시
							0.5MB마다 100원
						</p>
						<p>※ 매체비용은 별도</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>