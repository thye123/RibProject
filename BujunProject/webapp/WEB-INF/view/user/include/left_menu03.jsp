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
				<div class="n01">자료찾기</div>
				<div class="n02">DATA SEARCH</div>
			</div>	
			
			
			<ul id="accordion" class="accordion">
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 01}">
						<li class="default open">
							<a href="/bjsearch?m1=03&m2=01"><div class="link">자료찾기<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/bjsearch?m1=03&m2=01"><div class="link">자료찾기<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				

				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 02}">
						<li class="default open">
							<a href="http://search.siminlib.go.kr/search/search.jsp?logo=4&mcode=110" target="_blank"><div class="link">타도서관 자료찾기<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="http://search.siminlib.go.kr/search/search.jsp?logo=4&mcode=110" target="_blank"><div class="link">타도서관 자료찾기<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
				
<%-- 				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 03}">
						<li class="default open">
							<a href="/nbook?m1=03&m2=03"><div class="link">새로들어온책<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/nbook?m1=03&m2=03"><div class="link">새로들어온책<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	 --%>
				
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 04}">
						<li class="default open">
							<a href="/mbinfo?m1=03&m2=04&page=1&perPageNum=10"><div class="link">나의도서대출정보<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/mbinfo?m1=03&m2=04&page=1&perPageNum=10"><div class="link">나의도서대출정보<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>					
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 05}">
						<li class="default open">
							<a href="/wishbk?m1=03&m2=05"><div class="link">비치희망자료신청<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/wishbk?m1=03&m2=05"><div class="link">비치희망자료신청<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>						
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 06}">
						<li class="default open">
							<a href="/wishres?m1=03&m2=06"><div class="link">비치희망자료결과<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/wishres?m1=03&m2=06"><div class="link">비치희망자료결과<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>						
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 07}">
						<li class="default open">
							<a href="/datalist?m1=03&m2=07"><div class="link">연속간행물목록<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/datalist?m1=03&m2=07"><div class="link">연속간행물목록<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	
					
					
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 08}">
						<li class="default open">
							<div class="link">원문서비스<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 01}">
											<li class="on"><a href="/origserv01?m1=03&m2=08&m3=01">국회도서관 원문DB</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv01?m1=03&m2=08&m3=01">국회도서관 원문DB</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 02}">
											<li class="on"><a href="/origserv02?m1=03&m2=08&m3=02">국립중앙도서관 원문DB</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv02?m1=03&m2=08&m3=02">국립중앙도서관 원문DB</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 03}">
											<li class="on"><a href="/origserv03?m1=03&m2=08&m3=03">국가전자도서관 원문검색</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv03?m1=03&m2=08&m3=03">국가전자도서관 원문검색</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 04}">
											<li class="on"><a href="/origserv04?m1=03&m2=08&m3=04">학회지 원문검색</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv04?m1=03&m2=08&m3=04">학회지 원문검색</a></li>
										</c:otherwise>
									</c:choose>																		
										
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">원문서비스<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 01}">
											<li class="on"><a href="/origserv01?m1=03&m2=08&m3=01">국회도서관 원문DB</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv01?m1=03&m2=08&m3=01">국회도서관 원문DB</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 02}">
											<li class="on"><a href="/origserv02?m1=03&m2=08&m3=02">국립중앙도서관 원문DB</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv02?m1=03&m2=08&m3=02">국립중앙도서관 원문DB</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 03}">
											<li class="on"><a href="/origserv03?m1=03&m2=08&m3=03">국가전자도서관 원문검색</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv03?m1=03&m2=08&m3=03">국가전자도서관 원문검색</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 03 && menu.m2 eq 08 && menu.m3 eq 04}">
											<li class="on"><a href="/origserv04?m1=03&m2=08&m3=04">학회지 원문검색</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/origserv04?m1=03&m2=08&m3=04">학회지 원문검색</a></li>
										</c:otherwise>
									</c:choose>																		
										
								</ul>
						</li>			
					</c:otherwise>
				</c:choose>
				
				
									
				<c:choose>
					<c:when test="${menu.m1 eq 03 && menu.m2 eq 09}">
						<li class="default open">
							<a href="/searchgove?m1=03&m2=09"><div class="link">관보검색<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/searchgove?m1=03&m2=09"><div class="link">관보검색<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>						
					
								
			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">