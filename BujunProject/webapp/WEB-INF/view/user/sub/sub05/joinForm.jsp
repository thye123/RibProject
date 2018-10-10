<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>동아리 신청서 입니다.</title>
<style type="text/css">
.join_wrap {
	width: 1200px;
	margin: 0 auto;
}

table.type09 {
	border-collapse: collapse;
	text-align: center;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>

</head>
<body>
	<div class="join_wrap">
		<div class="join_header">
			<b>동아리 신청서 입니다.!</b>
		</div>

		<div class="join_content">
			<form action="/joinClub/Proc" method="POST">
				<input type="hidden" name="cluapp_code" value="${cluapp_code}">
				<table class="type09">
					<thead>
						<tr>
							<th scope="cols">항목</th>
							<th scope="cols">내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">신청자</th>
							<td><input type="text" name="cluapp_appmemid" /></td>
						</tr>
						<tr>
							<th scope="row">도서번호</th>
							<td><input type="text" name="cluapp_rimemnum" /></td>
						</tr>
						<tr>
							<th scope="row">이름</th>
							<td><input type="text" name="cluapp_appname" /></td>
						</tr>

						<tr>
							<th scope="row">연락처</th>
							<td><input type="text" name="cluapp_appphone" /></td>
						</tr>

					</tbody>
				</table>
				<input type="submit" value="제출" /> <input type="reset" value="초기화" />
			</form>
		</div>
	</div>
</body>
</html>