<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>

<style>
.logUl > li {
    margin-bottom: 10px;
    margin-top: 10px;
}

.bname {
    width: 52px;
    display: inline-block;
}
.autowrap{
	border-top: 2px solid #0e6bc1;
    border-bottom: 1px solid #e4e4e4;
    background: #fbfbfb;
}

input[type="text"] {
    height: 30px;
    width: 32%;
}

ul.logUl {
    margin: 0 auto;
    text-align: center;
}

.loginbtn {
    position: relative;
    width: 100%;
    height: 79px;
    left: 643px;
    top: -89px;
}

.log{
    float: left;
    margin-top: 0px;
    margin-left: 7px;
    width: 95px;
    background: #005baf;
    border: 1px solid #003b71;
    height: 80px;
    line-height: 69px;
    color: #fff;
    text-align: center;
}

.logapply{
	position: relative;
}

/*패드부터 시작 max 버젼을 줄일때 가능 */
@media only screen and (max-width:800px) {

	.loginbtn{
		position: static;
		
	}
	
	.logapply{
	padding: 0 138px;
	}
	
	.log{
	    width: 347px;
	}
}
</style>
	<script type="text/javascript">
	//이름이랑 비밀번호 입력 못하면 못들어 가게 막는 script	
	window.onload= function(){
			var logapply = document.getElementsByClassName('logapply');
			var liap_apname = document.getElementsByName('liap_apname');
			var liap_pass = document.getElementsByName('liap_pass');
			logapply[0].onsubmit = function(){
			
				if(liap_apname[0].value ==''){
					alert('이름을 입력해주세요');
					liap_apname[0].focus();
					return false;
				}
				
				if(liap_pass[0].value ==''){
					alert('비밀번호 입력해주세요');
					liap_pass[0].focus();
					return false;
				}
			}
			
		}
	</script>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>종합자료실</li>
	</ul>
</div>
<!-- //location -->

<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">프로그램 신청확인</div>
	
	<hr/>
	<!-- content 시작 -->
	
	<!-- table -->
	
		<form action="/pgcheck/proc" method="POST" class="logapply">
		
			<ul class="logUl">
				<li>
					<b class="bname">이름</b>
					<input type="text" name="liap_apname"/>
				</li>
				
				<li>
					<b>비밀번호</b>
					<input type="text" name="liap_pass"/>
				</li>
			</ul>
			<div class="loginbtn">
				<input type="submit" value="로그인" class="log"/>
			</div>
			
		</form>

</div>
<!-- //content 끝 -->

		</div>
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>