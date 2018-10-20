<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>


		<style type="text/css">
			@media all {
				.lightbox { display: none; }
				.fl-page h1,
				.fl-page h3,
				.fl-page h4 {
					font-family: 'HelveticaNeue-UltraLight', 'Helvetica Neue UltraLight', 'Helvetica Neue', Arial, Helvetica, sans-serif;
					font-weight: 100;
					letter-spacing: 1px;
				}
				.fl-page h1 { font-size: 110px; margin-bottom: 0.5em; }
				.fl-page h1 i { font-style: normal; color: #ddd; }
				.fl-page h1 span { font-size: 30px; color: #333;}
				.fl-page h3 { text-align: right; }
				.fl-page h3 { font-size: 15px; }
				.fl-page h4 { font-size: 2em; }
				.fl-page .jumbotron { margin-top: 2em; }
				.fl-page .doc { margin: 2em 0;}
				.fl-page .btn-download { float: right; }
				.fl-page .btn-default { vertical-align: bottom; }

				.fl-page .btn-lg span { font-size: 0.7em; }
				.fl-page .footer { margin-top: 3em; color: #aaa; font-size: 0.9em;}
				.fl-page .footer a { color: #999; text-decoration: none; margin-right: 0.75em;}
				.fl-page .github { margin: 2em 0; }
				.fl-page .github a { vertical-align: top; }
				.fl-page .marketing a { color: #999; }

				/* override default feather style... */
				.fixwidth {
					background: rgba(256,256,256, 0.8);
				}
				.fixwidth .featherlight-content {
					width: 500px;
					padding: 25px;
					color: #fff;
					background: #111;
				}
				.fixwidth .featherlight-close {
					color: #fff;
					background: #333;
				}

			}
			@media(max-width: 768px){
				.fl-page h1 span { display: block; }
				.fl-page .btn-download { float: none; margin-bottom: 1em; }
			}
			
			html.with-featherlight{overflow:hidden}.featherlight{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:2147483647;text-align:center;white-space:nowrap;cursor:pointer;background:#333;background:rgba(0,0,0,0)}.featherlight:last-of-type{background:rgba(0,0,0,.8)}.featherlight:before{content:'';display:inline-block;height:100%;vertical-align:middle}.featherlight .featherlight-content{position:relative;text-align:left;vertical-align:middle;display:inline-block;overflow:auto;padding:25px 25px 0;border-bottom:25px solid transparent;margin-left:5%;margin-right:5%;max-height:95%;background:#fff;cursor:auto;white-space:normal}.featherlight .featherlight-inner{display:block}.featherlight link.featherlight-inner,.featherlight script.featherlight-inner,.featherlight style.featherlight-inner{display:none}.featherlight .featherlight-close-icon{position:absolute;z-index:9999;top:0;right:0;line-height:25px;width:25px;cursor:pointer;text-align:center;font-family:Arial,sans-serif;background:#fff;background:rgba(255,255,255,.3);color:#000;border:0;padding:0}.featherlight .featherlight-close-icon::-moz-focus-inner{border:0;padding:0}.featherlight .featherlight-image{width:100%}.featherlight-iframe .featherlight-content{border-bottom:0;padding:0;-webkit-overflow-scrolling:touch}.featherlight iframe{border:0}.featherlight *{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}@media only screen and (max-width:1024px){.featherlight .featherlight-content{margin-left:0;margin-right:0;max-height:98%;padding:10px 10px 0;border-bottom:10px solid transparent}}@media print{html.with-featherlight>*>:not(.featherlight){display:none}}
		</style>
		
		
		
</head>
<body>

<%-- 			<a class="btn btn-default" href="#" data-featherlight="#fl1">Default</a>
			
		
		<div class="featherlight-content">	
			<div class="lightbox" id="fl1">
				<h2>Featherlight Default</h2>
				<p>
					This is a default featherlight lightbox.<br>
					It's flexible in height and width.<br>
					Everything that is used to display and style the box can be found in the <a href="https://github.com/noelboss/featherlight/blob/master/src/featherlight.css">featherlight.css</a> file which is pretty simple.</p>
			</div>
		</div>
		
		
	<div class="awrap">

		<div class="awheader">
			<!-- 이미지 넣자 -->
		</div>

		<form action="/reserve/cancle" id="seargo" method="GET">
		<input type="hidden" name="res_rimem_num" value="${sessionScope.rimem_num}"/>
			<div class="awcontent">
				<table class="t1">
					<caption>취소 페이지 입니다.</caption>

					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="res_memid" value="${sessionScope.mem_id}" readonly="readonly"/></td>
						</tr>

						<tr>
							<th>좌석번호</th>
							<td>
						<c:forEach var="list" items="${list}">
							<input type="text" name="res_seatcode" value="${list.res_seatcode}"/>
							</c:forEach>
							</td>
						</tr>
						
							
												
					</tbody>
				</table>

				<div class="btn">
					<input type="submit" value="확인" /> 
					<input type="button" value="닫기" class="cancle" />
				</div>

			</div>
		</form>
	</div>
	
	
	
		<script src="${pageContext.request.contextPath}/resources/user/js/featherlight.min.js" type="text/javascript" charset="utf-8"></script>

		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//stats.g.doubleclick.net/dc.js','ga');

			ga('create', 'UA-5342062-6', 'noelboss.github.io');
			ga('send', 'pageview');
		</script>
		
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> --%>



	<body>
		
					<a class="btn btn-default" href="#" data-featherlight="#fl1">Default</a>
		
	


			

		<div class="lightbox" id="fl1">
			<h2>Featherlight Default</h2>
			<p>
				This is a default featherlight lightbox.<br>
				It's flexible in height and width.<br>
				Everything that is used to display and style the box can be found in the <a href="https://github.com/noelboss/featherlight/blob/master/src/featherlight.css">featherlight.css</a> file which is pretty simple.</p>
		</div>



		<script src="${pageContext.request.contextPath}/resources/user/js/jquery-1.7.0.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/user/js/featherlight.min.js" type="text/javascript" charset="utf-8"></script>

			
</body>
</html>