<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu02.jsp"%>

<!-- 민짐 말도 안되는 css 시작 -->
<style>
.
* {
	box-sizing: border-box;
}

.resWrap {
	width: 100%;
	margin: 0 auto;
}

.res01 {
    border-top: 1px solid black;
    display: inline-block;
    width: 48%;
    height: 438px;
    box-sizing: border-box;
    border-left: 1px solid black;
}

.res02 {
	width: 52%;
	float: right;
	height: 370px;
}

.mak {
	width: 12%;
	height: 69px;
	float: left;
}

.res03 {
    display: block;
    width: 49%;
    height: 83px;
    float: left;
    border-top: 1px solid black;
    border-left: 1px solid black;
}

.res04 {
    float: right;
    width: 49%;
    height: 85px;
    border-top: 1px solid black;
    border-left: 1px solid;
}
.res05 {
    border-top: 1px solid black;
    margin-bottom: 14px;
    float: left;
    width: 100%;
    height: 100px;
    border-left: 1px solid black;
}

.dvd {
    border-right: 1px solid black;
    width: 20%;
    height: 100px;
    float: left;
    box-sizing: border-box;
    border-bottom: 1px solid black;
}

.note {
    border-right: 1px solid black;
    width: 20%;
    height: 100px;
    float: left;
    box-sizing: border-box;
    border-bottom: 1px solid black;
}
.bof {
    width: 100%;
    height: 84px;
    box-sizing: border-box;
    border-right: 1px solid black;
    border-bottom: 1px solid black;
}

.scanner {
    border-right: 1px solid black;
    height: 84px;
    box-sizing: border-box;
    border-bottom: 1px solid;
}
.res06 {
    border-top: 1px solid black;
    margin-bottom: 14px;
    float: left;
    width: 100%;
    height: 100px;
    border-left: 1px solid black;
}
.restwoWrap {
	margin-bottom: 14px;
	height: 100px;
}

.status {
	height: 30px;
	width: 48%;
}

.green {
	width: 15%;
	height: 16px;
	background: green;
	display: inline-block;
}

.ornage {
	width: 13%;
	height: 16px;
	background: orange;
	display: inline-block;
}

.inter {
    border-right: 1px solid black;
    width: 25%;
    height: 73px;
    float: left;
    box-sizing: border-box;
    border-bottom: 1px solid black;
}

.reference {
	height: 510px;
	width: 50%;
	float: right;
}

.statusP {
	display: inline-block;
	width: 40%;
}

.statusUl>li {
	width: 30%;
	height: 30px;
	float: left;
}
</style>
<!--  말도 안되는 css 끝  -->
<script src="/resources/user/js/Reference.js"></script>
<script> /*깜놀할 자바스크립트 시작 */
var selectedObj = null;
window.onload = function() {
		//Div b tag input type tag 기초 셋팅 
		makingDiv();
		makingBtag();	
		//팝업을 열기 위한 클래스를 찾는다 
		var bof    = document.getElementsByClassName('bof');
		var scanner   = document.getElementsByClassName('scanner');
		var dvd   = document.getElementsByClassName('dvd');
		var note   = document.getElementsByClassName('note');
		var mak   = document.getElementsByClassName('mak');
		var inter =  document.getElementsByClassName('inter');
		
		/*팝업 열라고 */
		for (var i = 0; i < note.length; i++) {
			note[i].onclick = function(){
				//alert('ss:' + this.getAttribute('name'));
				popOpen(this);
			}
		}
		
		for (var i = 0; i < inter.length; i++) {
			inter[i].onclick = function(){
				//alert('ss:' + this.getAttribute('name'));
				popOpen(this);
			}
		}
		
		for (var i = 0; i < mak.length; i++) {
				mak[i].onclick = function(){
				//alert('ss:' + this.getAttribute('name'));
				popOpen(this);
			}
		}
		
		for (var i = 0; i < dvd.length; i++) {
			dvd[i].onclick = function(){
			//alert('ss:' + this.getAttribute('name'));
			popOpen(this);
		}
	}
		
		for (var i = 0; i < bof.length; i++) {
			bof[i].onclick = function(){
			//alert('ss:' + this.getAttribute('name'));
			popOpen(this);
		}
	}
	
		for (var i = 0; i < scanner.length; i++) {
			scanner[i].onclick = function(){
			//alert('ss:' + this.getAttribute('name'));
			popOpen(this);
		}
	}

		
		var arr = new Array();
		var div_seat =  document.getElementsByClassName("inter");
		var mak = document.getElementsByClassName("mak"); 
		var div_num = [];
		var str = new Array();
		
		<c:forEach var="bong" items="${rv}">
			arr.push("${bong.seat_num}");
			str.push("${bong.area_code}");
		</c:forEach>
		

	 	var string = new Array('CAT0025','CAT0026','CAT0027','CAT0028','CAT0029','CAT0020');
		
		for (var i = 0; i < str.length; i++) {
			for (var j = 0; j < string.length; j++) {
				if(str[i]=='CAT0020'){
					var div_seat = document.getElementsByClassName("mak");
					checkingDiv(arr , div_seat);
				}
				if(str[i] == 'CAT0025'){
					div_seat = document.getElementsByClassName("inter");
					checkingDiv(arr , div_seat);
				}
				if(str[i] == 'CAT0026'){
					div_seat = document.getElementsByClassName("bof");
					checkingDiv(arr , div_seat);
				}
			
				if(str[i] == 'CAT0027'){
					div_seat = document.getElementsByClassName("scanner");
					checkingDiv(arr , div_seat);
				}
				
				if(str[i] == 'CAT0028'){
					div_seat = document.getElementsByClassName("dvd");
					checkingDiv(arr , div_seat);
				}
				
				if(str[i] == 'CAT0029'){
					div_seat = document.getElementsByClassName("note");
					checkingDiv(arr , div_seat);
				}
			
			}
		} 
		
		/*예약된 좌석 체킹 해주는 함수 만들꺼임 */
		function checkingDiv(arr,div_seat){
			/*크기가 다른곳은 여기*/
			console.log("class" + div_seat.length)
			console.log("길이"+div_seat.length);
			
			for (var i = 0; i < div_seat.length; i++) {
				div_num[i] = div_seat[i].getAttribute('name');
				console.log("num:" +div_num[i])
				console.log("class:"+div_seat[i].getAttribute('class'));
			}
			
			console.log(arr);
				for (var j = 0; j < div_seat.length; j++) {
			for (var k = 0; k < arr.length; k++) {
					if(arr[k] == div_num[j]){
						console.log('div_seat' + div_seat[j].length);
						div_seat[j].setAttribute('style','background-color: orange;');
						div_seat[j].onclick = function(e){
							alert('예약된 좌석입니다');
							e.preventDefault();
						}
					}
			}//arr
		
				}//div_num
		}
		

		/*예약 된 좌석 ajax 호출후 화면에 표시 해주기  ==>  각 데이터 량 만큼 num을 들고온다 */

		function settionAjax(){
			
			$.ajax({
					url : '/reserve/settingAjax',
					type : 'GET',
					dataType : 'text', 
					success : function(data) {
						
					},
					error : function(xhr) {
						console.log("에러발생" + xhr.status);
		
					}
				});
	 	
	 }
	 
	 function pagestart() {
			window.setTimeout("pagereload()", 30000);
		}
		function pagereload() {
			location.reload();
		}
	
	 setInterval(function(){ 
		settionAjax(); // //10초 뒤 좌석이 삭제 되고 새로 고침이 되어야 함 
		//pagereload(); //삭제 하면 안됨 일정 시간마다 새로 고침해서 정보 보여줘야함
	 }, 300000); //300000 :30분 reload 시간 변경 완료 
	 

	}
</script>
<!-- /*깜놀할 자바스크립트 끝 */ -->

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>도서관이용</li>
		<li>자료실이용</li>
		<li>좌석예약</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">좌석예약</div>

	<div id="tab_depth01" class="w50">
		<ul>
			<li class=""><a href="/reserve?m1=02&m2=04&m3=01"> 열람실</a></li>
			<li class="active"><a href="/reserve?m1=02&m2=04&m3=02"> 자료실</a></li>
		</ul>
	</div>
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon6"></span> <b>디지털자료실</b>
			<p>인터넷 정보검색, 문서편집, CD-ROM, DVD, Video Tape, 국회원문DB, 국립중앙도서관 원문DB,
				스캐너 이용 등 다양한 정보를 이용할 수 있으며 좌석예약제로 운영하고 있습니다.</p>
		</div>
	</div>
	<!-- 민짐 예약 시작  -->
	<div class="resWrap">

		<div class="status">
			<ul class="statusUl">
				<li><p class="statusP">예약중</p>
					<div class="green"></div></li>
				<li><p class="statusP">예약완료</p>
					<div class="ornage"></div></li>
			</ul>
		</div>

		<div class="res01"></div>

		<div class="reference">

				<!-- <p>DVD</p> -->
			<div class="res05">
			</div>

<!-- 				<p>노트북</p> -->
			<div class="res06">
			</div>
<!-- <div class="restwoWrap"> -->
					<!-- <p>장애우</p> -->
				<div class="res03">
				</div>

					<!-- <p>스캐너</p> -->
				<div class="res04">
				</div>
		<!-- 	</div> -->
		</div>




		<!-- 	</div> -->


	</div>
	<!-- 민짐 예약 끝 -->
	<!-- //content 끝 -->
</div>

</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>