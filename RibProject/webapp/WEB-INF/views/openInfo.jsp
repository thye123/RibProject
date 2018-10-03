<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			.All{
				width	: 1000px;
				float	: right;
				align	: center;
				overflow: hidden;
			}
			
			.menuArea{
				border		: 1px solid black;
				width		: 998px;
				text-align	: center;
				overflow	: hidden;
			}
			
			.menuName{
				border	: 1px solid red;
				width	: 197.5px;
				height	: 50px;
				float	: left;
				display	: inline-block;
			}
			
			.contentArea{
				border	: 1px solid blue;
				width	: 998px;
				float	: right;
			}
			
			.searchArea{
				width	: 998px;
				height	: 50px;
				border	: 1px solid green;
				overflow: hidden;
			}
			
			.boardContent{
				width		: 998px;
				text-align	: center;
			}
			
			.searchForm{
				width		: 350px;
				height		: 50px;
				line-height	: 50px;
				float		: right; 
			}
		</style>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
			onload = function(){				
				var menuNames = document.getElementsByClassName("menuName");
				for (var i = 0; i < menuNames.length; i++) {
					menuNames[i].addEventListener("click", function(){
						switch (this) {
							case menuNames[0]:
								location.href="/"
								break;
							case menuNames[1]:
								location.href="/"
								break;
							case menuNames[2]:
								location.href="/OpenInfo/OpenInfoBoard?ad_code=CAT0016&page_num=1";
								break;
							case menuNames[3]:
								window.open("https://www.open.go.kr/");
								break;
							case menuNames[4]:
								location.href="/OpenInfo/OpenInfoBoard?ad_code=CAT0017&page_num=1";
								break;
						}
					});
				}
				
				var newContent = document.getElementById("newContent");
				var ad_code = "${ad_code}";
				newContent.addEventListener("click", function(){
					
					switch (ad_code) {
						case "CAT0016":
							location.href="/OpenInfo/newContent?ad_code=" + ad_code;
							break;
							
						case "CAT0017":
							location.href="/OpenInfo/newContent?ad_code=" + ad_code;
							break;
					}					
				});
				
			}
			
			$(function(){
				$('#searchForm').on('submit',function(e) {
					
					var keyword= $("#keyword").val();
					var ad_code= "${ad_code}";
					var keyfield = $("select[name=keyfield]").val()
					$.ajax({
						url : '/OpenInfo/Search/',
						data : { 
							keyfield : keyfield,
							keyword  : keyword,
							ad_code  : ad_code
						},					
						type : 'GET',
						dataType : 'json',
						success : function(adminboardList) {
							console.log(adminboardList);
							$(".board_content").empty();
							var tag=''; 
								tag+= "<tr>";
								tag+= "<td width="80px">번호</td><td width="538px">제목</td><td	width="100px">글쓴이</td><td width="170px">작성일자</td><td width="100px">조회수</td>";
								tag+= "</tr>";
						 	$.each(adminboardList, function(key,search){ 
								tag+="<tr>"
							 	tag+="<td>"+search.ad_idx+"</td>" 
								tag+="<td>"+search.ad_writer+"</td>"
								tag+="<td>"+search.ad_title+"</td>"
								tag+="<td>"+search.ad_regdate+"</td>"
								tag+="<td>"+search.ad_count+"</td>"
								tag+="</tr>" 
									
							 console.log(adminboardList[key].ad_writer);
							 }); 
							 
							 $(".board_content").html(tag);
					
						},
						error : function(xhr) {
							console.log(xhr);
							alert('' + xhr.status)
						}
					
					});
					
					e.preventDefault();
				)}
			});
		</script>
	</head>
	<body>
		<div class="All">
			<div class="menuArea">
				<div class="menuName">정보공개제도 안내</div>
				<div class="menuName">사전공표대상 및 비공개대상 목록</div>
				<div class="menuName">정보목록</div>
				<div class="menuName">정보공개 청구</div>
				<div class="menuName">사전공표대상 공개</div>
			</div>
			<div class="contentArea">
				<div class="searchArea">
					<form action="/OpenInfo/Search/" id="searchForm">
						<div class="searchForm">
							<select name="keyfeild">
								<option>선택</option>
								<option value="title">제목</option>
								<option value="writer">작성자</option>
								<option value="content">내용</option>
							</select>
							<input type="text" name="keyword">
							<button id="searchBtn">검색</button>
						</div>	
					</form>
					
				</div>
				<table class="boardContent" cellspacing="1" cellpadding="1" border="1px">
					<tr style="font-weight:bold;">
						<td width="80px">번호</td>
						<td width="538px">제목</td>
						<td	width="100px">글쓴이</td>
						<td width="170px">작성일자</td>
						<td width="100px">조회수</td>
					</tr>
					<c:forEach var="cList" items="${contentList}">
						<tr>
							<td>${cList.idx}</td>
							<td style="text-align:left;">${cList.ad_title}</td>
							<td>${cList.ad_memname}</td>
							<td>${cList.ad_regdate}</td>
							<td>${cList.ad_count}</td>
						</tr>
					</c:forEach>
					<tr>				
						<td colspan="5" align="right">
							<div>
								<c:set var="endnum" 	value="${paging.end_page}"></c:set>
								<c:set var="startnum" 	value="${paging.start_page}"></c:set>
								<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
									<a href="/OpenInfo/OpenInfoBoard?ad_code=${ad_code}&page_num=${Paging}">${Paging}</a>
								</c:forEach>
							</div>
							<button id="newContent">새글쓰기</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>