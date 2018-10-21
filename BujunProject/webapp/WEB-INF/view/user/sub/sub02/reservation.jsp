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

/* 마스크 뛰우기 */
#mask {  
    position:absolute;  
    z-index:9000;  
    background-color:#000;  
    display:none;  
    left:0;
    top:0;
} 
/* 팝업으로 뜨는 윈도우 css  */ 
.window{
 display: none;
    position: absolute;
    left: 80%;
    top: 287px;
    margin-left: -500px;
    width: 500px;
    height: 500px;
    background-color: #FFF;
    z-index: 10000; 
 }



</style>

<!--  말도 안되는 css 끝  -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/user/js/MakingDiv.js"></script>
<script> 
/* /*깜놀(ㄲㅏㅁㄴㅗㄹㅇㅡㄴ ㅇㅏㅈㅜ ㅈㅣㄹㅗㄹㅇㅣㄷㅏ) 자바스크립트 시작 */

	/* var selectedObj = null; */
	onload = function() {
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
				popOpen(this);
			}
		}
		
		for (var i = 0; i < inter.length; i++) {
			inter[i].onclick = function(){
				popOpen(this);
			}
		}
		
		
		 for (var i = 0; i < mak.length; i++) {
			mak[i].onclick = function(e){
			/* 	 e.preventDefault(); */
				wrapWindowByMask();
				/* alert("자리값 :" + this) */
			}
		} 
		
		
		for (var i = 0; i < dvd.length; i++) {
			dvd[i].onclick = function(){
			popOpen(this);
		}
	}
		
		for (var i = 0; i < bof.length; i++) {
			bof[i].onclick = function(){
				popOpen(this);
		}
	}
	
		for (var i = 0; i < scanner.length; i++) {
			scanner[i].onclick = function(){
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
					//alert("arr mak" + arr);
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
					//alert('왔냐?' + div_num[j]);
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
	//pagereload();//삭제 하면 안됨 일정 시간마다 새로 고침해서 정보 보여줘야함
 }, 300000);  ////300000 :30분 reload 시간 변경 완료 


</script>
<!-- /*깜놀할 자바스크립트 끝 */ -->

<script type="text/javascript"> 
//<![CDATA[
    function wrapWindowByMask(){
 		//alert('seat :' + obj );
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  
 
        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $("#mask").css({"width":maskWidth,"height":maskHeight});  
 
        //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.
 
        $("#mask").fadeIn(0);      
        $("#mask").fadeTo("slow",0.8);    

        
			var d =  new Date();
			var firstdate = d.getFullYear() + '/' + (d.getMonth() + 1)
			+ '/' + d.getDate();
			
			document.getElementById("res_date").value = firstdate;
        
        /*aaaa*/
        //윈도우 같은 거 띄운다.
        $(".window").show();
 
    }
 
    $(document).ready(function(){
        //검은 막 띄우기
        $(".mak").click(function(e){
            e.preventDefault();
           //alert('2:' + $(".mak").attr('name'));
            wrapWindowByMask($(".mak").attr('name'));
        });
 
        //닫기 버튼을 눌렀을 때
        $(".window .close").click(function (e) {  
            //링크 기본동작은 작동하지 않도록 한다.
            e.preventDefault();  
            $("#mask, .window").hide();  
        });       
 
        //검은 막을 눌렀을 때
        $("#mask").click(function () {  
         
 
        });      
 
    });

    function val(obj){
    	$('#seatVal').val(Number(obj.value)+Number(3));
    	alert($('#seatVal').val());	
    }
</script>



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
			<li class="active"><a href="/reserve?m1=02&m2=04&m3=01"> 열람실</a></li>
			<li class=""><a href="/reserve?m1=02&m2=04&m3=02"> 자료실</a></li>
		</ul>
	</div>
	<!-- content 시작 -->

	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon6"></span> <b>열람실</b>
			<p>인터넷 정보검색, 문서편집, CD-ROM, DVD, Video Tape, 국회원문DB, 국립중앙도서관 원문DB,
				스캐너 이용 등 다양한 정보를 이용할 수 있으며 좌석예약제로 운영하고 있습니다.</p>
		</div>
	</div>

	<!-- 민짐 예약 시작  -->
	<div class="resWrap">
		<div class="status">
			<ul class="statusUl">
				<li>예약중 <span class="green"></span></li>
				<li>예약완료 <span class="ornage"></span></li>
			</ul>
		</div>
				<c:if test="${sessionScope.mem_id ne null}">
			<a class="btn btn-default" href="#" data-featherlight="#fl1">Default</a>		
			</c:if>


		<div class="res02" id="res02"></div>

	</div>
	<!-- 민짐 예약 끝 -->
	<!-- //content 끝 -->

		<div class="lightbox" id="fl1">
			<form action="/reserve/cancle" id="seargo" method="GET">
		<input type="hidden" name="res_rimem_num" value="${sessionScope.rimem_num}"/>
			<div class="awcontent">
				<table class="t1">
					<caption>취소 페이지 입니다.</caption>
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="res_memid" value="${sessionScope.mem_id}" readonly="readonly"/></td>
						</tr>

						<tr>
							<th>좌석번호</th>
							<td>
						<c:forEach var="list" items="${list}">
							<input type="radio" name="res_seatcode" value="${list.res_seatcode}"/>
							<input type="text" name="res_seatcode" value="${list.res_seatcode}"/>
						</c:forEach>
						
						
							</td>
						</tr>
				
					</tbody>
				</table>

				<div class="btn">
					<input type="submit" value="확인" /> 
				<!-- 	<input type="button" value="닫기" class="cancle" /> -->
				</div>

			</div>
		</form>
	</div>
	

		</div>

</div>

  <div id ="wrap"> 
        <div id = "container">  
            <div id="mask">
            <div class="window">
<!-- <p style="width:1000px;height:500px;text-align:center;vertical-align:middle;"></p> -->
<form style="width:500px;height:500px;text-align:center;vertical-align:middle;" action="/reserve/insert" id="seargo" method="GET">
				<input type="hidden" name="area_code" value="${area_code}" />
				<table class="board_read2" >
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
							<td><input type="text" name="res_seatcode" id="res_seatcode"
								value="${seat_code}" readonly /></td>
						</tr>
						<tr>
							<th>일자</th>
							<td><input type="text" name="res_date" id="res_date" value="${firstdate}" readonly="readonly" /></td>
						</tr>

						<tr>
							<th>예약 시작 시간</th>
							<td>
								<select name="res_sttime" id="res_sttime" onchange="val(this)">
									<option value="">선택</option>
									<c:forEach var="i" begin="1" end="20">
										<option value="${i}">${i}시</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>예약 마감 시간</th>
							<td id="endTime">
								<span id="show">
									<input type="text" id="seatVal" readonly="readonly" >
								</span>
							</td>
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

		</form>

 </div>
 </div>
 
<%--  <div class="lightbox" id="fl2">
		<form action="/reserve/insert" id="seargo" method="GET">
			<div class="awcontent">
				<input type="hidden" name="area_code" value="${area_code}" />
				<table class="board_read2" >
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
							<td><input type="text" name="res_seatcode" id="res_seatcode"
								value="${seat_code}" readonly /></td>
						</tr>
						<tr>
							<th>일자</th>
							<td><input type="text" name="res_date" id="res_date" value="${firstdate}" readonly="readonly" /></td>
						</tr>

						<tr>
							<th>예약 시작 시간</th>
							<td>
								<select name="res_sttime" id="res_sttime" onchange="val(this)">
									<option value="">선택</option>
									<c:forEach var="i" begin="1" end="20">
										<option value="${i}">${i}시</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>예약 마감 시간</th>
							<td id="endTime">
								<span id="show">
									<input type="text" id="seatVal" readonly="readonly" value="1">
								</span>
							</td>
						</tr>
						<tr>
							<td>
							<th></th>
						</tr>
					</tbody>
				</table>
		<!-- 		<script>
					function val(obj) {
						var selectedValue = obj.value;
						alert('s' + selectedValue);
						var seatVal = document.getElementById('seatVal');
						seatVal.setAttribute('value', selectedValue);
					} 
				</script> -->
				<div class="btn">
					<input type="submit" value="확인" /> 
					<input type="button" value="닫기" class="cancle" />
				</div>

			</div>
		</form>
	</div> --%>

	<!-- ㄱㅡㅁㄴㅣㅍㅣㅅㅕㄹ ㅠㅍㅏㅂㅇㅕㅂㅇㅕㄹㄹㅣ -->
</div>


</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>