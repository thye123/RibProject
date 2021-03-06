<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>
<style>
.personInfor {
   margin-top: 6px;
   border: 1px solid #dcdcdc;
   height: 181px;
   padding:20px;
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

.gener{
	background-color: #636b72;
}

.element{
background-color: #636b72;
}

select.grade {
    width: 53%;
}

</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
   
   var educheck = document.getElementsByClassName('btn_boards');
   
   function mysubmit(){

      var Ok             =document.getElementsByClassName('Ok');
      var liap_apname    =document.getElementById('liap_apname');
      var grade         =document.getElementsByClassName('grade');
      var val = grade[0].options[grade[0].selectedIndex].value;
    var stel = document.getElementById('stel');
	var stel2 = document.getElementById('stel2');
	var stel3 = document.getElementById('stel3');
	
    var sample4_postcode     = document.getElementById('sample4_postcode');
    var sample4_roadAddress  = document.getElementById('sample4_roadAddress');
    var sample4_jibunAddress = document.getElementById('sample4_jibunAddress');
    
      if(Ok[0].checked ==false){
         alert('개인정보 수집에 동의해주세요');
         return false;
      }
      
      if(liap_apname.value==''){
         alert('이름을 적어주세요');
         liap_apname.focus();
         return false;
      }
      

      if(val==''){
         alert('학년선택을 해주세요');
         grade[0].focus();
         return false;
      }
      
      
      
      if(stel.value==''){
          alert('전화번호입력 해주세요');
          stel.focus();
          return false;
       }
      if(stel2.value==''){
          alert('전화번호입력 해주세요');
          stel2.focus();
          return false;
       }
      if(stel3.value==''){
          alert('전화번호입력 해주세요');
          stel3.focus();
          return false;
       }
      if(sample4_postcode.value==''){
          alert('주소입력해주세요');
          sample4_postcode.focus();
          return false;
       }
      if(sample4_roadAddress.value==''){
          alert('주소입력해주세요');
          sample4_roadAddress.focus();
          return false;
       }
      if(sample4_jibunAddress.value==''){
          alert('주소입력해주세요');
          sample4_jibunAddress.focus();
          return false;
       }
      
      
      document.educheck.submit();
      
      
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
      <li>평생교육</li>
      <li>평생학습</li>
      <li>운영프로그램</li>
   </ul>
</div>
<!-- //location -->


<div class="con_mob_pad">

   <div class="sub_tit">${clu_name}</div>


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

               <td><input type="checkbox" name="check" value="1"
                  checked="checked"></td>
               <td><h2>${vo.listu_name}</h2></td>
               <td>${vo.listu_studate}</td>
               <td class="bnon">${vo.listu_location}</td>
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
         <input type="checkbox" name="OK" value="1" class="Ok"> 개인정보
         수집에 동의합니다. (단,14세 미만은 보호자 동의)
      </div>
      <form action="/opprogram01/approc?m1=${m1}&m2=${m2}&m3=${m3}"
         method="POST" name="educheck" >
         <input type="hidden" name="liap_code" value="${liap_code}" /> 
         <input type="hidden" name="listu_catcode" value="${listu_catcode}" />
         <input type="hidden" value="${sessionScope.rimem_num}"  name="liap_aprimemnum" class="liap_appliyer"  readonly="readonly"/>
  
         <div class="board_readWrap">
            <table class="board_read">
               <colgroup>
                  <col style="width: 20%;">
                  <col style="width: 55%;">
               </colgroup>
               <tbody>
                  <tr>
                     <th class="c">아이디</th>
                     <td><input type="text" name="liap_appliyer" value="${sessionScope.mem_id}"
                        class="liap_appliyer" readonly="readonly" /></td>
                  </tr>
                  <tr>
                     <th class="c">이름</th>
                     <td colspan="2"><input type="text" name="liap_apname" id="liap_apname" /></td>
                  </tr>
                  
                     <tr>
                     <th class="c">휴대전화</th>
                     <td colspan="2"><select name="stel" id="stel">
                           <option value="">전체선택</option>
                           <option>010</option>
                           <option>011</option>
                           <option>016</option>
                           <option>017</option>
                     </select> <input type="text" name="stel2" class="stel2" id="stel2"/> <input
                        type="text" name="stel3" class="stel3" id="stel3"/></td>
                  </tr>
                  <tr>
                     <th class="c">주소</th>
                     <td colspan="2">
                     
                     <input type="text" id="sample4_postcode"
                        name="liap_zipcode" placeholder="우편번호" class="mg_b5"> 
                        
                     <input
                        type="button" onclick="sample4_execDaumPostcode()"
                        value="우편번호 찾기" class="mg_b5 inpbtn01" ><br> 
                        
                     <input type="text"
                        id="sample4_roadAddress" name="liap_adress" placeholder="도로명주소">
                
                     <input type="text" id="sample4_jibunAddress"
                        name="liap_detailad" placeholder="지번주소"> <span
                        id="guide" style="color: #999"></span></td>
                  </tr>

                  <tr>
					 <th class="c">학년</th>
                     <td colspan="3">
                        <select name="liap_grade" class="grade">
                           <option value="">전체선택</option>
                           <option value="1">중1</option>
                           <option value="2">중2</option>
                           <option value="3">중3</option>
                           <option value="4">고1</option>
                           <option value="5">고2</option>
                           <option value="6">일반인</option>
                        </select>
                     </td>
                  </tr>
                  
                  
               </tbody>
            </table>

            <div class="btns c mg_t10">
               <input type="button" class="btns_black" style="border:0;" value="프로그램신청" onclick="mysubmit();">
               <!-- <a class="btn_boards" href="asdasd">프로그램신청</a> -->
            </div>

         </div>

      </form>

   </div>
   <!-- //content 끝 -->
</div>



      </div>
      
      
   </div>
</div>
</div>




<!-- footer -->
<%@ include file="../../include/footer.jsp"%>