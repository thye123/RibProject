<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				
			}
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
		</div>
	</body>
</html>