<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu07.jsp" %>   

<script>
	onload = function(){
		var subTitle = document.getElementsByClassName("subTitle");
		var code = "${ad_code}";
		if(code=="CAT0016"){
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			var coment = document.createTextNode("정보목록");
			subTitle[0].appendChild(coment);
		}else{
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			var coment = document.createTextNode("사전공표대상공개");
			subTitle[0].appendChild(coment);				
		}
	}
</script>
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>정보공개</li>
		<li class="subTitle">정보목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">정보공개</div>	
	
	<!-- content 시작 -->
	<div class="auto_box mg_b40">
		<form action="/info03/iCon?ad_code=${ad_code}" method="post" enctype="multipart/form-data">
			<table class="tb_board" cellspacing="1" cellpadding="1">
				<tr>
					<td>글쓴이</td>
					<td style="text-align:left;">
						<input type="text" name="wname" value="관리자">
						<input type="hidden" name="ad_writer" value="ADMIN">
					</td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td style="text-align:left;">
						<input type="file" name="filename">
					</td>					
				</tr>
				<tr>
					<td>제목</td>
					<td style="text-align:left;">
						<input type="text" name="ad_title" style="width:70%;">
					</td>					
				</tr>
				<tr>
					<td>내용</td>
					<td style="text-align:left;">
						<textarea name="ad_content" rows="20" style="resize: none; warp:virtual; width:100%;" ></textarea>
					</td>					
				</tr>
			</table>
			<div class="r mg_t20 btns">
				<input type="submit" class="btns_black" value="확인" style="border:0;"/>
				<input type="button" class="btns_black" id="cancel" value="취소" style="border:0;"/>
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
<%@ include file="../../include/footer.jsp" %>