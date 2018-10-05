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
		
		var list = document.getElementById("list");
		list.addEventListener("click", function(){
			location.href="/info03?ad_code=${openInfoVo.ad_code}&page_num=1";
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
	
	<div class="tab_depth01" >
		<ul class="n03">
			<li><a href="/info01?m1=07&m2=01&m3=01" class="on">정보공개제도안내</a></li>
			<li><a href="/info02?m1=07&m2=01&m3=02">사전공표대상 및 비공개대상목록</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=03&page_num=1">정보목록</a></li>
			<li><a href="#">정보공개청구</a></li>
			<li><a href="/info03?m1=07&m2=01&m3=05&page_num=1">사전공표대상공개</a></li>
		</ul>
	</div>
	
	
	<!-- content 시작 -->
 	<!-- 게시판테이블(read) -->	
 	<!-- class : mob_none -> 모바일일때 display:none  -->
 	 		 	 	 		
	<table class="board_read">
		<colgroup><col style="width:20%;"><col style="width:55%;"><col></colgroup>		
		
		<tbody>
			<tr>
				<th class="c">제목</th>
				<td colspan="2">${openInfoVo.ad_title}</td>
			</tr>
			<tr>
				<th class="c">작성자</th>
				<td>${writer}</td>
				<td class="mob_none">작성일 : ${openInfoVo.ad_regdate}  /  조회수 :${openInfoVo.ad_count}</td> 
			</tr>
			<tr>
				<th class="c">첨부파일</th>
				<td colspan="2">
					<c:choose>
						<c:when test="${openInfoVo.file_real_name == null}">
							
						</c:when>
						<c:otherwise>
							<a href="#this">${openInfoVo.file_real_name}</a>  <span>( ${openInfoVo.file_size} <b>Kbyte</b>)</span>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td colspan="3" class="contents">${openInfoVo.ad_content}</td>
			</tr>
		</tbody>
	</table>
	<div class="r mg_t20 btns">
		<input type="button" class="btns_black" id="list" value="목록" style="border:0;"/>
	</div>	
	<!-- //게시판테이블(리스트) -->
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>