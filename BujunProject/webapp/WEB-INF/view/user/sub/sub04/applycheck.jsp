<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp"%>
<style>
.personInfor {
	margin-top: 6px;
	width: 100%;
	border: 1px solid #dcdcdc;
	height: 181px;
}

.checkperson {
	float: right;
	height: 30px;
}

ul {
	list-style-type: none;
}

.tab_depth01 ul.temp03 li {
	width: 50.00%;
}

.stel2 {
	width: 26.00%;
}

.stel3 {
	width: 26.00%;
}

.btn_gowrap {
	width: 100%;
	height: 40px;
	text-align: center;
}

.btn_gr {
	height: 40px;
	width: 57%;
	display: inline-block;
}

.btn_set {
	padding: 10px 0;
	overflow: hidden;
}

a.btn_boards {
	line-height: 20px;
	margin-bottom: 5px;
	height: 18px;
	background: #696969;
	color: #fff;
	padding: 8px 25px;
	margin-top: 5px;
	display: inline-block;
}

.searBtn {
	background: #696969;
	color: #fff;
	height: 23px;
}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	
	var educheck = document.getElementsByClassName('btn_boards');
	
	function mysubmit(){
		alert('aa')
		var Ok =document.getElementsByClassName('Ok');
		alert(Ok[0].value);
	}
	
	 function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';

						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>
<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서문화</li>
		<li>독서동아리</li>
		<li>찬우물</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

	<div class="sub_tit">${clu_name}</div>

	<div class="tab_depth01">
		<ul class="temp03">
			<li><a href="#">일반프로그램</a></li>

			<li><a href="#">초등(유아)프로그램</a></li>
		</ul>
	</div>

	<!-- content 시작 -->

	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>


	<div class="auto_box mg_b30">

		<!-- 금니 피셜 평생 교육 신청 내용시작  -->

		<table class="tb_board">
			<caption>금니피셜 브라더즈에 대한 이야기</caption>
			<thead>
				<tr>
					<th scope="col">선택</th>
					<th scope="col">프로그램명</th>
					<th scope="col">시간/요일</th>
					<th scope="col" class="bnon">장소</th>
				</tr>
			</thead>
			<tbody>
				<tr>

					<td><input type="checkbox" name="check" value="1"></td>
					<td><h2>금니피셜에 대한 이야기</h2></td>
					<td>2018.10.10 18:00~20:00</td>
					<td class="bnon">금니하우스</td>
				</tr>
			</tbody>
		</table>
		<!-- 금니 피셜 평생 교육 신청 내용끝  -->

		<!-- 개인정보 보호 시작  -->
		*개인정보 수집 및 동의
		<div class="personInfor">
			<h2>* 개인정보의 수집 및 이용 목적</h2>
			<br />
			<h2>-부산광역시립도서관에서 시행하는 평생학습강좌/행사/특강/행사 등의 참가자 선정을 위해 수집하며, 수집된
				정보는 관련 업무에만 이용.</h2>
			<br />
			<h2>*수집하려는 개인정보 항목</h2>
			<br />
			<h2>신청사 성명, 주소, 전화번호</h2>
			<br />
			<h2>*신청강좌/특강/행사의 목적 달성 종료시 지체없이 파기</h2>
			<br /> -동의를 거부할 권리가 있으며, 동의 하지 않으면 참가 신청이 되지 않습니다.
		</div>

		<div class="checkperson">
			<input type="checkbox" name="OK" value="1" class="Ok"> 개인정보 수집에 동의합니다.
			(단,14세 미만은 보호자 동의)
		</div>


		<form action="#" method="GET" name = "educheck" onsubmit='return mysubmit()'>

			<div class="board_readWrap">
				<table class="board_read">
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 55%;">
					</colgroup>
					<tbody>
						<tr>
							<th class="c">성명</th>
							<td><input type="text" name="sname" placeholder="이름입력" /></td>
							<td class="mob_none">성별 <label>남자</label><input type="radio"
								name="gender" value="1"> <label>여자</label><input
								type="radio" name="gender" value="2">
							</td>

						</tr>
						<tr>
							<th class="c">비밀번호</th>
							<td colspan="2"><input type="text" name="spass" /></td>
						</tr>
						<tr>
							<th class="c">주소</th>
							<td colspan="2"><input type="text" id="sample4_postcode"
								placeholder="우편번호"> <input type="button"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
								<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
								<span id="guide" style="color: #999"></span></td>
						</tr>

						<tr>
							<th class="c">휴대전화</th>
							<td><select name="stel">
									<option>전체선택</option>
									<option>010</option>
									<option>011</option>
									<option>016</option>
									<option>017</option>
							</select> - <input type="text" name="stel2" class="stel2" /> - <input
								type="text" name="stel3" class="stel3" /></td>

							<td class="mob_none">학년 <select name="grade">
									<option value="mid1">중1</option>
									<option value="mid2">중2</option>
									<option value="mid3">중3</option>
									<option value="hig1">고1</option>
									<option value="hig2">고2</option>
									<option value="0">일반인</option>
							</select>
							</td>

						</tr>
					</tbody>
				</table>

				<div class="btn_gowrap">
					<div class="btn_gr">
					 	<input type="submit" class="btn_boards"
							value="프로그램신청"
						> 
					 <!-- <a class="btn_boards" href="asdasd">프로그램신청</a> -->
					</div>
				</div>

			</div>

		</form>

	</div>
	<!-- //content 끝 -->
</div>

<!-- footer -->
<%@ include file="../../include/footer.jsp"%>