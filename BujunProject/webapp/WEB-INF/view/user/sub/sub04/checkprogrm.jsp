<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu04.jsp"%>

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
      <li>평생 교육</li>
      <li>평생 학습</li>
      <li>프로그램 신청확인</li>
      
      
   </ul>
</div>
<!-- //location -->

<div class="con_mob_pad">
   

   <!-- title -->
   <div class="sub_tit">프로그램 신청확인</div>
   
   <hr/>
   <!-- content 시작 -->
   
   <!-- table -->
   
   
   
   
   
   <div class="con_login">
      <div class="log_tit2">로그인</div> 
       <div class="log_sub">이름과 비밀번호를 입력하신 후 Login 버튼을 눌러주세요.</div>
   
      <form action="/pgcheck/proc" method="POST" class="logapply">
         <ul class="text_form">
            <li><input type="text" name="liap_apname" placeholder="이름을 입력하세요"/></li>
            <li><input type="password" name="liap_pass" placeholder="비밀번호를 입력하세요" /></li>
         </ul>
                  
         <p class="c mg_b5"><input type="submit" value="로그인" class="log_btn" />
         
         
      </form>
   </div>
   


 
 
</div>
<!-- //content 끝 -->

      </div>
      
   </div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>