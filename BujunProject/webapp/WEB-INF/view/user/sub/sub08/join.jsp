<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- sub_visual -->
<%@ include file="../../include/left_menu08.jsp" %>   

<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>기타</li>
		<li>회원가입</li>
	</ul>
</div>
<!-- //location -->


	<script>
	
	var duplIdChk = 0;
	
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
    
    
    
    //아이디 중복 체크
	$(function(){
		$("#idchk").on("click", function(){
						
			var mem_id = document.getElementById("mem_id").value;
			
			$.ajax({
				url : "/idcheck",
				data : {
					mem_id : mem_id
				},
				type : "GET",
				datatype : "json",
				success : function(data) {
											
					if(data == 1) { //중복
						alert("이미 사용중이거나 탈퇴한 아이디입니다.");
					} else {
						alert("사용가능한 아이디입니다.");
						duplIdChk = 1;
					}
				
					
				},
				
				error : function(xhr) {
					alert(xhr.status + " : " + xhr.statusText);
				}					
			})	//ajax 
			
		});
	});

    
    
    
	function join() {
		
		
		
				
		var passRule = /^[A-Za-z0-9]{6,12}$/; //숫자와 문자 포함 형태의 6~12자리 이내의 암호 정규식

 		if(duplIdChk == 0) {
			alert("아이디 중복체크 해주세요.");
		}
		
		if(!passRule.test($("#user_pass").val())) {
			
			alert("숫자와 문자 포함 형태의 6~12자리로 입력하세요.");
			return false;
		} 
		
		
		document.mem_join.submit();		

		
	} 
	
	
	
	
	
</script>
        
        

<div class="con_mob_pad">
	
	<!-- content 시작 -->
	
	<!-- title -->
	<div class="sub_tit">회원가입</div>
	
	<form method="post" action="/joinForm" name="mem_join">
	<table class="board_read">
		<colgroup><col style="width:20%;" /><col /></colgroup>
		<tbody>
			<tr>
				<th scope="row" class="c">아이디</th>
				<td><input type="text" id="mem_id" name="mem_id" /> <input type="button" id="idchk" value="중복체크" /></td>
			</tr>
			<tr>
				<th scope="row" class="c">도서관 회원 번호</th>
				<td><input type="text" class="in_mem_num" name="rimem_num"/></td>
			</tr>	
			<tr>
				<th scope="row" class="c">비밀번호</th>
				<td><input type="password" class="in_mem_num" name="mem_pass" id="user_pass" /></td>
			</tr>	
			<tr>
				<th scope="row" class="c">비밀번호 확인</th>
				<td>
					<input type="password" class="in_mem_num" id="chpass" />
					<div id="pass_chk" ></div> 
				</td>
			</tr>		
			<tr>
				<th scope="row" class="c">이름</th>
				<td><input type="text" name="mem_name" /></td>
			</tr>	
			<tr>
				<th scope="row" class="c">생년월일(19890623)</th>
				<td><input type="text" name="mem_birth" /></td>
			</tr>
			<tr>
				<th scope="row" class="c">이메일</th>
				<td>
					<input type="text" name="email1" /> @ 
					<input type="text" id="email" name="email2" />
					
					<select class="in_email" id="email2" >
						<option value="">- 이메일선택 -</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<th scope="row" class="c">연락처</th>
				<td>
					<select class="in_tel" name="tel1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
					</select>
					<input type="text" class="in_tel2" name="tel2" /> -
					<input type="text" class="in_tel2" name="tel3" />
				</td>
			</tr>					
			<tr>
				<th class="c">우편번호 </th>
				<td class="l non_line">
					<input type="text" id="sample6_postcode" name="post" placeholder="우편번호"> 
					<input type="button" class="btn02" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"> <br />
					<input type="text" name="addr1" id="sample6_address" class="in_addr1 mg_t5" placeholder="주소"> 
					<input type="text"  name="addr2" id="sample6_address2" placeholder="상세주소" class="in_addr2 mg_t5" >
				</td>
			</tr>																															
		</tbody>
	</table>
	
		<div class="btns">
			<a href="#" onclick="join()" class="bnts_black">submit</a>
		</div>
	</form>
	
	
	<script>
		
		//이메일 
		function email_change() {$("#email").val($("#email2").val());}
		$("#email2").change(email_change);
		
		//비밀번호 일치 여부
		$(function(){
		
			$("#user_pass").keyup(function(){
				$("#pass_chk").text("");
			});
			
			$("#chpass").keyup(function(){
				if($('#user_pass').val()!=$("#chpass").val()){
					$("#pass_chk").text("");
					$("#pass_chk").css("color", "#de0505");
					$("#pass_chk").html("비밀번호가 일치하지 않습니다.");
				}else {
					$("#pass_chk").text("");
					$("#pass_chk").css("color", "#248b1a");
					$("#pass_chk").html("비밀번호가 일치합니다.");
				}
			}); //chpass keyup	
		});

	</script>
	



		
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>