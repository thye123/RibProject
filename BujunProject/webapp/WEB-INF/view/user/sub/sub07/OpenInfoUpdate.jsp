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
		
		var cancel = document.getElementById("cancel");
		cancel.addEventListener("click", function(){
			location.href="/info03/dCon?m1=${m1}&m2=${m2}&m3=${m3}&ad_idx=${ad_idx}";
		});
		
		var farea = document.getElementById("farea");
		farea.addEventListener("click", function(){
			var conf = confirm("해당 파일을 삭제하시겠습니까?");
			
			if(conf==true){
				location.href="/info03/delFile?m1=${m1}&m2=${m2}&m3=${m3}&ad_idx=${ad_idx}";
			}
		});
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
		<form action="/info03/update?ad_code=${ad_code}&ad_idx=${ad_idx}" method="post" enctype="multipart/form-data">
			<table class="tb_board" cellspacing="1" cellpadding="1">
				<tr>
					<td>글쓴이</td>
					<td style="text-align:left;">
						<input type="text" name="wname" value="관리자" readonly="readonly" style="border:0px;">
						<input type="hidden" name="ad_writer" value="ADMIN">
					</td>
				</tr>
				<c:choose>
					<c:when test="${OpenInfoVo.file_name == null}">
						<tr>
							<td>첨부파일</td>
							<td style="text-align:left;">
								<input type="file" name="filename">
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td>첨부파일</td>
							<td style="text-align:left;">
								<label id="farea">
									<span>${OpenInfoVo.file_name}</span>
									<img src="/resources/user/images/sub/delete.png" style="width:20px; height:20px;">
								</label>
							</td>
						</tr>
					</c:otherwise>
				</c:choose>					
				<tr>
					<td>제목</td>
					<td style="text-align:left;">
						<input type="text" name="ad_title" style="width:70%;" value="${OpenInfoVo.ad_title}">
					</td>					
				</tr>
				<tr>
					<td>내용</td>
					<td style="text-align:left;">
						<textarea name="ad_content" rows="20" style="resize: none; warp:virtual; width:100%;">${OpenInfoVo.ad_content}</textarea>
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