<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function() {
		var Accordion = function(el, multiple) {
			this.el = el || {};
			this.multiple = multiple || false;
	
			// Variables privadas
			var links = this.el.find('.link');
			// Evento
			links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
		}
	
		Accordion.prototype.dropdown = function(e) {
			var $el = e.data.el;
				$this = $(this),
				$next = $this.next();
	
			$next.slideToggle();
			$this.parent().toggleClass('open');
	
			if (!e.data.multiple) {
				$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
			};
		}	
	
		var accordion = new Accordion($('#accordion'), false);
	});
</script>


<div class="sub_content">
	<div class="sub_content_wrap">
		
		<!-- 레프트메뉴 -->
		<div class="l_menu_wrap">
				
			<div class="lm_top">
				<div class="n01">독서문화</div>
				<div class="n02">READING CULTURE</div>
			</div>	
			
			<ul id="accordion" class="accordion">
			
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 01}">
						<li class="default open">
							<div class="link">추천도서<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/monthbk?m1=05&m2=01&m3=01">이달의 책</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/monthbk?m1=05&m2=01&m3=01">이달의 책</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/bujunbk?m1=05&m2=01&m3=02">부전추천도서</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bujunbk?m1=05&m2=01&m3=02">부전추천도서</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 03}">
											<li class="on"><a href="http://www.nl.go.kr/ask/recommend/recommend_nl/list1.jsp" target="_blank">기타추천도서</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="http://www.nl.go.kr/ask/recommend/recommend_nl/list1.jsp" target="_blank">기타추천도서</a></li>
										</c:otherwise>
									</c:choose>	
																		
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="http://www.nl.go.kr/ask/readSite/list.jsp" target="_blank">독서관련사이트</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="http://www.nl.go.kr/ask/readSite/list.jsp" target="_blank">독서관련사이트</a></li>
										</c:otherwise>
									</c:choose>											
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">추천도서<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/monthbk?m1=05&m2=01&m3=01">이달의 책</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/monthbk?m1=05&m2=01&m3=01">이달의 책</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/bujunbk?m1=05&m2=01&m3=02">부전추천도서</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bujunbk?m1=05&m2=01&m3=02">부전추천도서</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 03}">
											<li class="on"><a href="http://www.nl.go.kr/ask/recommend/recommend_nl/list1.jsp" target="_blank">기타추천도서</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="http://www.nl.go.kr/ask/recommend/recommend_nl/list1.jsp" target="_blank">기타추천도서</a></li>
										</c:otherwise>
									</c:choose>	
																		
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="http://www.nl.go.kr/ask/readSite/list.jsp" target="_blank">독서관련사이트</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="http://www.nl.go.kr/ask/readSite/list.jsp" target="_blank">독서관련사이트</a></li>
										</c:otherwise>
									</c:choose>											
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>			
			
			

				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 02}">
						<li class="default open">
							<div class="link">독서치료<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 02 && menu.m3 eq 01}">
											<li class="on"><a href="/bkcare?m1=05&m2=02&m3=01">독서치료</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkcare?m1=05&m2=02&m3=01">독서치료</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 02 && menu.m3 eq 02}">
											<li class="on"><a href="/caresite?m1=05&m2=02&m3=02">독서치료관련사이트</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/caresite?m1=05&m2=02&m3=02">독서치료관련사이트</a></li>
										</c:otherwise>
									</c:choose>										
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">독서치료<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 02 && menu.m3 eq 01}">
											<li class="on"><a href="/bkcare?m1=05&m2=02&m3=01">독서치료</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkcare?m1=05&m2=02&m3=01">독서치료</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 02 && menu.m3 eq 02}">
											<li class="on"><a href="/caresite?m1=05&m2=02&m3=02">독서치료관련사이트</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/caresite?m1=05&m2=02&m3=02">독서치료관련사이트</a></li>
										</c:otherwise>
									</c:choose>										
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>	
				
							
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 03}">
						<li class="default open">
							<div class="link">독서동아리<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 01}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=01">찬우물</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=01">찬우물</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 02}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=02">책넝쿨</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=02">책넝쿨</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 03}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=03">이목</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=03">이목</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 04}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=04">책마중</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=04">책마중</a></li>
										</c:otherwise>
									</c:choose>																											
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">독서동아리<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 01}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=01">찬우물</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=01">찬우물</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 02}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=02">책넝쿨</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=02">책넝쿨</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 03}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=03">이목</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=03">이목</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 03 && menu.m3 eq 04}">
											<li class="on"><a href="/club01?m1=05&m2=03&m3=04">책마중</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/club01?m1=05&m2=03&m3=04">책마중</a></li>
										</c:otherwise>
									</c:choose>																											
								</ul>
						</li>			
					</c:otherwise>
				</c:choose>				
			
			

				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 04}">
						<li class="default open">
							<a href="/bookclass?m1=05&m2=04"><div class="link">독서교실<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/bookclass?m1=05&m2=04"><div class="link">독서교실<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 05}">
						<li class="default open">
							<a href="/libweek?m1=05&m2=05"><div class="link">도서관주간<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/libweek?m1=05&m2=05"><div class="link">도서관주간<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>				
				
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 06}">
						<li class="default open">
							<a href="/moreading?m1=05&m2=06"><div class="link">독서의달<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/moreading?m1=05&m2=06"><div class="link">독서의달<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>						
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 07}">
						<li class="default open">
							<div class="link">원북원부산<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 07 && menu.m3 eq 01}">
											<li class="on"><a href="/obook01?m1=05&m2=07&m3=01">운영안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/obook01?m1=05&m2=07&m3=01">운영안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 07 && menu.m3 eq 02}">
											<li class="on"><a href="/obook02?m1=05&m2=07&m3=02">올해의BOOK</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/obook02?m1=05&m2=07&m3=02">올해의BOOK</a></li>
										</c:otherwise>
									</c:choose>																									
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">원북원부산<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 07 && menu.m3 eq 01}">
											<li class="on"><a href="/obook01?m1=05&m2=07&m3=01">운영안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/obook01?m1=05&m2=07&m3=01">운영안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 07 && menu.m3 eq 02}">
											<li class="on"><a href="/obook02?m1=05&m2=07&m3=02">올해의BOOK</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/obook02?m1=05&m2=07&m3=02">올해의BOOK</a></li>
										</c:otherwise>
									</c:choose>																									
								</ul>
						</li>			
					</c:otherwise>
				</c:choose>						
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 05 && menu.m2 eq 08}">
						<li class="default open">
							<div class="link">부산시민독후감공모<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 08 && menu.m3 eq 01}">
											<li class="on"><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">범시민 독후감</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">범시민 독후감</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 08 && menu.m3 eq 02}">
											<li class="on"><a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10">원북원부산 독후감</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10">원북원부산 독후감</a></li>
										</c:otherwise>
									</c:choose>																									
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">부산시민독후감공모<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 08 && menu.m3 eq 01}">
											<li class="on"><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">범시민 독후감</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">범시민 독후감</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 05 && menu.m2 eq 08 && menu.m3 eq 02}">
											<li class="on"><a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10">원북원부산 독후감</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10">원북원부산 독후감</a></li>
										</c:otherwise>
									</c:choose>																									
								</ul>
						</li>		
					</c:otherwise>
				</c:choose>	

				
			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">