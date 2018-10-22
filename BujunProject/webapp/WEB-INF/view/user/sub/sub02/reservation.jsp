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

<!--  말도 안되는 css 끝  -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/user/js/MakingDiv.js"></script>
<script>
   var selectedObj = null;
   window.onload = function() {

      makingDiv();
      makingBtag();
      //팝업을 열기 위한 클래스를 찾는다 
      
      var mak = document.getElementsByClassName('mak');

      /*팝업 열라고 */

      for (var i = 0; i < mak.length; i++) {
         mak[i].onclick = function(e) {
            var di = this;
            var obj = this.getAttribute('name');
            //alert(obj);
            this.setAttribute('style', 'background-color: green;');
            wrapWindowByMask(obj, mak);
            $(".cancle").click(function(e) {
               e.preventDefault();
               di.setAttribute('style', 'background-color: white;');
               $("#mask, .window").hide();
            });
         }
      }
      
      $("#cancel").click(function(e){
    	  /* e.preventDefault(); */
    	  $("#mask, .window").hide();
      });
      
    //var div_seat = document.getElementsByClassName("mak");
  	
	   /*색칠해주자 */
	   var arr = new Array();
	   var div_num = [];
	   var str = new Array();
	
	   <c:forEach var="bong" items="${rv}">
		   arr.push("${bong.seat_num}");
		   str.push("${bong.area_code}");
	   </c:forEach>
	
	   var string = new Array('CAT0020');
	   console.log(str[0]);
	   console.log(string[0]);
	   for (var i = 0; i < str.length; i++) {
	      for (var j = 0; j < string.length; j++) {
	         if (str[i] == string[j]) {
	            var div_seat = document.getElementsByClassName("mak");
	            console.log("aa:" + div_seat.length)
	            checkingDiv(arr, div_seat);
	         }
	      }
	
	   }
  
      /*예약된 좌석 체킹 해주는 함수 만들꺼임 */
     function checkingDiv(arr, div_seat) {
        /*크기가 다른곳은 여기*/
        console.log("class" + div_seat.length)
        console.log("길이" + div_seat.length);

        for (var i = 0; i < div_seat.length; i++) {
           div_num[i] = div_seat[i].getAttribute('name');
           console.log("num:" + div_num[i]);
           console.log("class:" + div_seat[i].getAttribute('class'));
        }

        console.log(arr);
        for (var j = 0; j < div_seat.length; j++) {
           for (var k = 0; k < arr.length; k++) {
              if (arr[k] == div_num[j]) {
                 //alert('왔냐?' + div_num[j]);
                 console.log('div_seat' + div_seat[j].length);
                 div_seat[j].setAttribute('style',
                       'background-color: orange;');
                 div_seat[j].onclick = function(e) {
                    alert('예약된 좌석입니다');
                    e.preventDefault();
                 }
              }
           }//arr
        }//div_num
     }

   }
   
   
	 	

  

   /*예약 된 좌석 ajax 호출후 화면에 표시 해주기  ==>  각 데이터 량 만큼 num을 들고온다 */

   function settionAjax() {


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
/*삭제 RESERVATION*/

   
   function settedCancle() {
      var d = new Date();
      var selHour= d.getHours();
      location.href="/reserve/outsetted?m1=${m1}&m2=${m2}&res_difH="+ selHour;
   }



function delseatting(){
   /*아이디 */ 

   var selMemid= "${sessionScope.mem_id}";
   //alert("4"+ selMemid);
   var d = new Date();
   var selHour= d.getHours();/*시스템상 현재 시간 */
   //alert("3"+selHour);

   $.ajax({
      url : '/reserve/delnum',
      data : {
         res_memid    : selMemid
      },
      type : 'GET',
      dataType : 'json',

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

   setInterval(function() {
      settionAjax(); // //10초 뒤 좌석이 삭제 되고 새로 고침이 되어야 함 
      pagereload();//삭제 하면 안됨 일정 시간마다 새로 고침해서 정보 보여줘야함
   }, 300000); ////300000 :30분 reload 시간 변경 완료
   
</script>
<!-- /*깜놀할 자바스크립트 끝 */ -->

<script type="text/javascript">
   //<![CDATA[
   function wrapWindowByMask(obj, mak) {
      //alert('seat :' + obj );
      //alert("mak:" + mak);
      ///화면의 높이와 너비를 구한다.
      var mak = document.getElementsByClassName('mak');

      var input_arcode = mak[0].childNodes[1].value;
      //alert("input_arcode :"+input_arcode);
      $("#area_code").val(input_arcode);
      var maskHeight = $(document).height();
      var maskWidth = $(window).width();

      //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
      $("#mask").css({
         "width" : maskWidth,
         "height" : maskHeight
      });

      //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

      $("#mask").fadeIn(0);
      $("#mask").fadeTo("slow", 1);
      $("#res_seatcode").val(obj);

      var d = new Date();
      var firstdate = d.getFullYear() + '/' + (d.getMonth() + 1) + '/'
            + d.getDate();

      document.getElementById("res_date").value = firstdate;

      //윈도우 같은 거 띄운다.
      $(".window").show();
      time();
   }

   $(document).ready(function() {
      //검은 막 띄우기
      $(".mak").click(function(e) {
         e.preventDefault();
         //alert('2:' + $(".mak").attr('name'));
         wrapWindowByMask($(".mak").attr('name'));
      });

      //닫기 버튼을 눌렀을 때
      $(".window .close").click(function(e) {
         //링크 기본동작은 작동하지 않도록 한다.
         e.preventDefault();
         $("#mask, .window").hide();

      });

      //검은 막을 눌렀을 때
      $("#mask").click(function() {

      });

   });

   function val(obj) {
	      var cnt = Number(obj.value) + Number(3);
	      //alert(cnt);
	      //alert($('#res_edtime').val());   
	      if(cnt <= 20){
	         //alert('aaa');
	    	  $('#res_edtime').val(Number(obj.value) + Number(3));
	      }else{
	        // alert('bbbb');
	         $('#res_edtime').val(20);
	      }   
	   
	   }
</script>
<script>
   function cancleMaskWrap() {

      var maskHeight = $(document).height();
      var maskWidth = $(window).width();

      //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
      $("#cnacle").css({
         "width" : maskWidth,
         "height" : maskHeight
      });

      //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

      $("#cnacle").fadeIn(0);
      $("#cnacle").fadeTo("slow", 1);
      $(".openCancle").show();
   }

   $(document).ready(function() {
      //검은 막 띄우기
      $("#cancleGo").click(function(e) {
         e.preventDefault();
         //alert('2:' + $(".mak").attr('name'));
         cancleMaskWrap();
      });

      //닫기 버튼을 눌렀을 때
      $(".openCancle .close").click(function(e) {
         //링크 기본동작은 작동하지 않도록 한다.
         e.preventDefault(); 
         $("#cnacle, .openCancle").hide();

      });

      //검은 막을 눌렀을 때
      $("#cnacle").click(function() {
    	 
      });

      $(".cancle").click(function(e) {
          //링크 기본동작은 작동하지 않도록 한다.
          e.preventDefault();
          $("#cnacle, .openCancle").hide();
       });
   });
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
     
     
     
     <div class="res_btn_2">
	      <ul>
	      	<li>
		      	<c:if test="${sessionScope.mem_id ne null}">
		         <a class="btn btn-default" id="cancleGo"
		            href="javascript:cancleMaskWrap()">취소</a>
		      	</c:if>
	      	</li>
	      	<li><a href="javascript:settedCancle()" >새로고침</a></li>
	      </ul>
      </div>
      
      
      


      <div class="res02" id="res02"></div>

   </div>
   <!-- 민짐 예약 끝 -->
   <!-- //content 끝 -->
   <!-- 시작 -->
   <div id="wrap">
      <div id="container">
         <div id="cnacle">
            <div class="openCancle">

               <form action="/reserve/cancle" id="seargo" method="GET">
                  <input type="hidden" name="res_rimem_num" value="${sessionScope.rimem_num}" />
                  <input type="hidden" name="m1" value="${m1}"/> 
                  <input type="hidden" name="m2" value="${m2}"/>
                  <input type="hidden" name="m3" value="${m3}"/> 
                  <div class="awcontent">
                     <table class="board_read2">
                        <caption>취소 페이지 입니다.</caption>
                        <tbody>
                           <tr>
                              <th>아이디</th>
                              <td><input type="text" name="res_memid"
                                 value="${sessionScope.mem_id}" readonly="readonly" /></td>
                           </tr>

                           <tr>
                              <th class="ta_1">좌석번호</th>
                              <td class="ta_1"><c:forEach var="list" items="${list}">
                                    <input type="radio" name="res_seatcode"
                                       value="${list.res_seatcode}" />
                                    <input type="text" name="res_seatcode"
                                       value="${list.res_seatcode}" />
                                 </c:forEach></td>
                           </tr>

                        </tbody>
                     </table>

                     <div class="btns mg_t10">
                        <input type="submit" value="확인" class="btns_blue" style="border:0;" />
                        <!-- <p style="text-align:center; background:#ffffff; padding:20px;"><a href="#" class="close">닫기X</a></p> -->

                        <input type="button" value="닫기" class="cancle btns_black" style="border:0;" />
                        
                     </div>

                  </div>
               </form>



            </div>
         </div>
      </div>
   </div>
   <!-- 끝 -->


   <!-- </div>
 -->
   <!-- </div>
 -->

   <div id="wrap">
      <div id="container">
         <div id="mask">
            <div class="window">
            <script>
               function time(){
                  var date = new Date();
                  var stime = date.getHours();
                  var res_sttime = document.getElementById("res_sttime");
                  $('#res_sttime').children( 'option:not(:first)' ).remove();
                  for (var i = stime; i < 20; i++) {
                     var opt = document.createElement("option");
                     opt.setAttribute("value", i);
                     var content = document.createTextNode(i+"시");
                     opt.appendChild(content);
                     res_sttime.appendChild(opt);
                  }
               }
            </script>

               <form
                  style=" height: 500px; text-align: center; vertical-align: middle;"
                  action="/reserve/insert" id="seargo" method="GET">
                  <input type="hidden" name="area_code" id="area_code" value="" />
                  <input type="hidden" name="m1" value="${m1}" /> 
                  <input type="hidden" name="m2" value="${m2}" />
                  <input type="hidden" name="m3" value="${m3}"/> 
                  <table class="board_read2">
                     <caption>예약 상세 정보입니다.</caption>
                     <tbody>
                        <tr>
                           <th>아이디</th>
                           <td><input type="text" name="res_memid"
                              value="${sessionScope.mem_id}" readonly="readonly" /></td>
                        </tr>

                        <tr>
                           <th>회원번호</th>
                           <td><input type="text" name="res_rimem_num"
                              value="${sessionScope.rimem_num}" readonly="readonly" /></td>
                        </tr>

                        <tr>
                           <th>좌석번호</th>
                           <td><input type="text" name="res_seatcode"
                              id="res_seatcode" value="${seat_code}" readonly /></td>
                        </tr>
                        <tr>
                           <th>일자</th>
                           <td><input type="text" name="res_date" id="res_date"
                              value="${firstdate}" readonly="readonly" /></td>
                        </tr>

                        <tr>
                           <th>예약 시작 시간</th>
                           <td>
                              <select name="res_sttime" id="res_sttime" onchange="val(this)">
                                 <option value="">선택</option>
                              </select>
                           </td>
                        </tr>
                        <tr>
                           <th>예약 마감 시간</th>
                           <td id="endTime">
                              <span id="show">
                                 <input type="text" id="res_edtime" name="res_edtime" readonly="readonly">
                              </span>
                           </td>
                        </tr>
                     </tbody>
                  </table>

                  <div class="btns mg_t10">
                     <input type="submit" value="확인" class="btns_blue"  style="border:0;" />
                     <input type="button" value="닫기" class="cancle btns_black"  style="border:0;" />
                  </div>

               </form>

            </div>
         </div>
      </div>
   </div>
</div>

</div>
</div>
</div>


<!-- footer -->

<%@ include file="../../include/footer.jsp"%>