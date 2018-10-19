<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>동아리 신청서 양식</title>

<style type="text/css">
.index {
	line-height: 0px;
	display: inline-block;
	width: 94%;
}

.join_header {
	/* float: left; */
	margin-top: 15px;
	margin-bottom: 15px;
}

.auto_minjim {
	width: 100%;
	margin: 0 auto;
	height: 245px;
}

.mintable {
	height: 153px;
	display: block;
	width: 100%;
	margin: 0 auto;
	text-align: center;
}

input[type="text"] {
	height: 20px;
	width: 100%;
	margin-top: 5px;
	margin-bottom: 5px;
}

.btn_set.a {
	margin-bottom: 15px;
	text-align: center;
	margin-top: 15px;
}

li {
	list-style: none;
}

.btn_set {
	padding: 10px 0;
	overflow: hidden;
}

.btn_set.r {
	margin-top: 10px;
	text-align: center;
	margin-bottom: 10px;
}

input[type=submit].btn_board {
	cursor: pointer;
	margin: 0 auto;
	text-decoration: none;
	background: #696969;
	color: #fff;
	padding: 8px 25px;
}

.btn_board {
	cursor: pointer;
	margin: 0 auto;
	text-decoration: none;
	background: #696969;
	color: #fff;
	padding: 8px 25px;
}
</style>


<script type="text/javascript">
	window.onload = function() {
		var cluapp_appname = document.getElementsByClassName('cluapp_appname')
		var cluapp_appphone = document
				.getElementsByClassName('cluapp_appphone')
		var join = document.getElementById('join');
		var btns = document.getElementById('btns');

		btns.onclick = function() {
			window.close();
		}

		$('#join').submit(function() {

			//alert('bb');
			if (cluapp_appname[0].value == '') {
				alert('이름을 입력 해주세요')
				cluapp_appname[0].focus();
				return false;
			}

			if (cluapp_appphone[0].value == '') {
				alert('전화번호 입력 해주세요')
				cluapp_appphone[0].focus();
				return false;
			}
		}

		//window.close();

		);

	}
</script>

</head>
<body>
	<div class="wrap">

		<div class="index">
			<ul>
				<li><img src="/resources/user/images/common/logo.png" alt="" /></li>
			</ul>
		</div>

		<div class="join_header">
			<h3 class="tbul2 mg_b10">가입 신청서</h3>
		</div>


		<div class="auto_minjim">

			<form action="/joinClub/Proc" method="POST" id="join">
				<input type="hidden" name="cluapp_code" value="${cluapp_code}" />

				<table class="mintable">
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 55%;">
						<col>
					</colgroup>

					<tbody>

						<tr>
							<th class="c">신청자</th>
							<td><input type="text" name="cluapp_appmemid"
								value="${sessionScope.mem_id}" readonly="readonly" /></td>
						</tr>

						<tr>
							<th class="c">도서번호</th>
							<td colspan="2"><input type="text" name="cluapp_rimemnum"
								value="${sessionScope.rimem_num}" readonly="readonly" /></td>
						</tr>

						<tr>
							<th class="c">이름</th>
							<td colspan="2"><input type="text" class="cluapp_appname"
								name="cluapp_appname" /></td>
						</tr>

						<tr>
							<th class="c">연락처</th>
							<td colspan="2"><input type="text" class="cluapp_appphone"
								name="cluapp_appphone" /></td>
						</tr>
					</tbody>

				</table>


				<div class="btn_set r">
					<input type="submit" value="제출" class="btn btn_board" /> <input
						type="button" value="닫기" class="btn_board" id="btns" />
				</div>

			</form>

		</div>

	</div>

	</div>


</body>
</html>