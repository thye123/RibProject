<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/sub.css" />
<title>부전도서관 자리예약</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
	
	window.onload = function() {

		var res_sttime = document.getElementsByName('res_sttime');
		var last_time = document.getElementsByClassName('last_time');
		var seargo = document.getElementById('seargo');

		res_sttime[0].onchange = function() {
			var selTime = $("select[name=res_sttime]").val();
			alert("/내가 선택한 시간  " + selTime);
			var dataview = Number(selTime) + Number(3);
			alert("3시간 계산 " + dataview);
			last_time[0].setAttribute('value', dataview);
			alert('20시 이후로는 예약이 불가능합니다.');
		}
		
		
		window.addEventListener('beforeunload', function(e) {
			//alert('bb');
			opener.window.selectedObj.setAttribute('style',
					'background-color: white;');
/* 			opener.window.selectedObj.setAttribute('style',
					'border: 1px solid black;'); */
			window.close();
		});

		$('#seargo').submit = function(e) {
			e.preventDefault();
			alert('asd');
			e.stopPropagation();
			
	 		if (dataview > '20') {
				e.preventDefault();
				e.stopPropagation();
				last_time[0].setAttribute('value', '예약불가');
				alert('aa');
			}

		} 
	 	
		
		//pop-up 창 닫을때 
		var cancle = document.getElementsByClassName('cancle');
		
		cancle[0].onclick = function() {
			opener.window.selectedObj.setAttribute('style',
					'background-color: white;');
		/* 	opener.window.selectedObj.setAttribute('style',
					'border-right: 1px solid black;');
			opener.window.selectedObj.setAttribute('style',
			'border-bottom: 1px solid black;'); */
			window.close();
		}
		}

</script>

</head>

<!-- <style>
table {
	border-collapse: collapse;
	width:100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

.awheader {
	margin-bottom: 11px;
	height: 33px;
	border: 1px solid black;
}

.awshwo {
	height: 28px;
	border: 1px solid black;
}

.btn {
	margin: 0 auto;
	text-align: center;
}
</style> -->
<body>


	<div class="awrap">

		<div class="awheader">
			<!-- 이미지 넣자 -->
		</div>


		<form action="/reserve/insert" id="seargo" method="GET">
			<div class="awcontent">
				<input type="hidden" name="area_code" value="${area_code}" />
				<table class="board_read2">
					<caption>예약 상세 정보입니다.</caption>

					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="res_memid" value="${sessionScope.mem_id}" readonly="readonly"/></td>
						</tr>

						<tr>
							<th>회원번호</th>
							<td><input type="text" name="res_rimem_num" value="${sessionScope.rimem_num}" readonly="readonly"/></td>
						</tr>

						<tr>
							<th>좌석번호</th>
							<td><input type="text" name="res_seatcode"
								value="${seat_code}" readonly /></td>
						</tr>
						<tr>
							<th>일자</th>
							<td><input type="text" name="res_date" value="${firstdate}"
								readonly /></td>
						</tr>

						<tr>
							<th>예약 시작 시간</th>
							<td><select name="res_sttime">
									<option value="">선택</option>
									<c:forEach var="i" begin="1" end="20">
										<option value="${i}">${i}시</option>
									</c:forEach>
							</select></td>
						</tr>

						<tr>
							<th>예약 마감 시간</th>
							<td><input type="text" name="res_edtime" class="last_time"></td>
						</tr>
						<tr>
							<td>
							<th></th>
						</tr>
					</tbody>
				</table>

				<div class="btn">
					<input type="submit" value="확인" /> 
					<input type="button" value="닫기" class="cancle" />
				</div>

			</div>
		</form>
	</div>
</body>
</html>