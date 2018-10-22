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

<script>
	onload = function(){
		var cancel = document.getElementById("cancel");
		cancel.addEventListener("click", function(){
			location.href="/opprogram01?m1=${m1}&m2=${m2}&m3=${m3}";
		});
	}
	
	
	function check(){
	var listu_name  = document.getElementById('listu_name');
	var listu_teacher = document.getElementById('listu_teacher');
	var listu_gubun= document.getElementById('listu_gubun');
	var listu_location = document.getElementById('listu_location');
	var listu_target = document.getElementById('listu_target');
	var listu_person = document.getElementById('listu_person');
	var listu_recruit = document.getElementById('listu_recruit');
	var listu_studate = document.getElementById('listu_studate');
	var listu_content = document.getElementById('listu_content');
	
		   if(listu_name.value==''){
		         alert('강좌명입력');
		         listu_name.focus();
		         return false;
		      }
		      
		      if(listu_teacher.value==''){
		         alert('강사명 입력 ');
		         listu_teacher.focus();
		         return false;
		      }
		      

		      if(listu_gubun.value==''){
		         alert('프로그램 구분 입력 ');
		         listu_gubun.focus();
		         return false;
		      }
		      
		      if(listu_studate.value==''){
			         alert('강의일시 입력');
			         listu_studate.focus();
			         return false;
			      }
		      
		    
		      if(listu_location.value==''){
		          alert('강의실 입력 ');
		          listu_location.focus();
		          return false;
		       }
		      if(listu_target.value==''){
		          alert('모집 대상 입력 ');
		          listu_target.focus();
		          return false;
		       }
		      if(listu_person.value==''){
		          alert('모집인원 입력');
		          listu_person.focus();
		          return false;
		       }
		      if(listu_recruit.value==''){
		          alert('모집 기간 입력');
		          listu_recruit.focus();
		          return false;
		       }
		      if(listu_content.value==''){
		          alert('내용입력 ');
		          listu_content.focus();
		          return false;
		       }

		      
		      document.life.submit();
		      
		
		
	}
</script>
<style>
input[type="text"] {
    height: 28px;
    width: 50%;
}
</style>
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

	<!-- title -->
	<div class="sub_tit">운영프로그램</div>
	
	<!-- content 시작 -->
	<form action="/opprogram01/adpro?m1=${m1}&m2=${m2}&m3=${m3}&page=${page}&pagecount=${pagecount}&pagegrp=${pagegrp}" method="post" name="life" enctype="multipart/form-data">
		<input type="hidden" name="listu_end" value="1"/>
		
		<table class="board_read">
			<tbody>
				<tr>
					<th>강좌명</th> 
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_name" id="listu_name"/>
					</td>
				</tr>
				<tr>
					<th>강사명</th>
					<td style="text-align:left;">
						<input type="text" name="listu_teacher" id="listu_teacher"/>
					</td>
					<th>프로그램 구분</th>
					<td style="text-align:left;">
						
						<select name="listu_gubun" id="listu_gubun">
							<option value="일반프로그램">일반프로그램</option>
							<option value="초등(유아)프로그램">초등 유아 프로그램</option>
						</select>
						
					
					</td>
				</tr>
				<tr>
					<th>강의실</th>
					<td style="text-align:left;">
						<input type="text" name="listu_location" id="listu_location"/>
					</td>
					<th>강의대상</th>
					<td style="text-align:left;">
						<input type="text" name="listu_target" id="listu_target"/>
					</td>
				</tr>
				<tr>
					<th>모집인원</th>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_person" id="listu_person"/>
					</td>
				</tr>
				<tr>
					<th>모집기간</th>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_recruit" id="listu_recruit" />
					</td>
				</tr>
				<tr>
					<th>강의일시</th>
					<td colspan="3" style="text-align:left;">
						<input type="text" name="listu_studate" id="listu_studate" />
					</td>
				</tr>
							
				<tr>
					<th>내용</th>
					<td colspan="3" style="text-align:left;">
						<textarea name="listu_content" rows="20" style="resize: none; warp:virtual; width:100%;" id="listu_content"></textarea>
					</td>
				</tr>
	
			</tbody>
		</table>
		<div class="r mg_t20 btns">
			<input type="button" class="btns_black" value="등록" style="border:0;" onclick="check();"/>
			<input type="button" class="btns_black" id="cancel" value="취소" style="border:0;"/>
		</div>
	</form>
	
	<!-- //content 끝 -->
</div>




</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>