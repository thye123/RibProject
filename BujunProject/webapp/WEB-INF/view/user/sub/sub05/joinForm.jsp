<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>동아리 신청서 양식</title>
<style type="text/css">

.wrap{
	margin: 0 auto;
}

li{
	list-style: none;
	float: left;
}

.join_header{ 
    float: left;
	margin-top: 30px;
	margin-bottom: 30px;
}

.mintable {
    height:228px;
    display: block;
    width: 100%;
}


.auto_minjim {
    width: 100 0%;
    margin: 0 auto;
    height: 245px;
}

/* 
.blue {
 
    padding: 8px 25px;
    cursor: pointer;
}

.btn_board:hover, .btn_board.active {
    
    cursor: pointer;
}

input.btn_board {
    height: 37px;
    cursor: pointer;
}



li{
	list-style: none;
	float: left;
}
.index{
	width: 100%;
	height: 33px;
}

.auto_minjim {
    width: 50%;
    margin: 0 auto;
    height: 245px;
}


td{
margin-top: 5px;
    margin-bottom: 5px;
    display: block;
}

.btn_set.a {
	margin-bottom: 10px;
	margin-top: 10px;
 }
 */
</style>
</head>
<body>
<div class="wrap">

	<div class="index">
		<ul>
			<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
			<li>가입신청서</li>
		</ul>
	</div>
	
		<div class="join_header">
			<b>동아리 신청서 입니다.!</b>
		</div>
	

	<div class="auto_minjim">
	
	<form action="/joinClub/Proc" method="POST">
		<input type="hidden" name="cluapp_code" value="${cluapp_code}"/>
		<table class="mintable">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 55%;">
				<col>
			</colgroup>
			
			<tbody>
			
				<tr>
					<th class="c">신청자</th>
					<td><input type="text" name="cluapp_appmemid" value="${sessionScope.mem_id}" readonly="readonly"/></td>
				</tr>

				<tr>
					<th class="c">도서번호</th>
					<td colspan="2"><input type="text" name="cluapp_rimemnum" value="${sessionScope.rimem_num}" readonly="readonly"/></td>
				</tr>
				
				 <tr>
					<th class="c">이름</th>
					<td colspan="2"><input type="text" name="cluapp_appname" /></td>
				</tr>
				
				<tr>
					<th class="c">연락처</th>
					<td colspan="2"><input type="text" name="cluapp_appphone" /></td>
				</tr>
			</tbody>
			
		</table>
	
	
	  	<div class="btn_set a">
				<input type="submit" value="제출"  class="blue"/> 
				<input type="reset" value="닫기" class="btn_board" />
		</div>
			</form>
	
		</div>

</div>

</div>
		

</body>
</html>