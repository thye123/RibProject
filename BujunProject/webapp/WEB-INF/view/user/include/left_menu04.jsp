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
				<div class="n01">평생교육</div>
				<div class="n02">LIFELONG EDUCATION</div>
			</div>	
			
			<ul id="accordion" class="accordion">
				<c:choose>
					<c:when test="${menu.m1 eq 04 && menu.m2 eq 01}">
						<li class="default open">
							<div class="link">평생학습<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/opguide?m1=04&m2=01&m3=01">운영안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/opguide?m1=04&m2=01&m3=01">운영안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${(menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 02) || (menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 03)}">
											<li class="on"><a href="/opprogram01?m1=04&m2=01&m3=02&page=1&pagecount=10&pagegrp=1">운영프로그램</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/opprogram01?m1=04&m2=01&m3=02&page=1&pagecount=10&pagegrp=1">운영프로그램</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1">프로그램신청</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1">프로그램신청</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 05}">
											<li class="on"><a href="/pgcheck?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1">프로그램신청확인</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/pgcheck?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1">프로그램신청확인</a></li>
										</c:otherwise>
									</c:choose>																					
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">평생학습<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/opguide?m1=04&m2=01&m3=01&page=1&pagecount=10&pagegrp=1">운영안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/opguide?m1=04&m2=01&m3=01&page=1&pagecount=10&pagegrp=1">운영안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${(menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 02) || (menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 03)}">
											<li class="on"><a href="/opprogram01?m1=04&m2=01&m3=02&page=1&pagecount=10&pagegrp=1">운영프로그램</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/opprogram01?m1=04&m2=01&m3=02&page=1&pagecount=10&pagegrp=1">운영프로그램</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1">프로그램신청</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/pgappl?m1=04&m2=01&m3=04&page=1&pagecount=10&pagegrp=1">프로그램신청</a></li>
										</c:otherwise>
									</c:choose>	
									
									<c:choose>
										<c:when test="${menu.m1 eq 04 && menu.m2 eq 01 && menu.m3 eq 05}">
											<li class="on"><a href="/pgcheck?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1">프로그램신청확인</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/pgcheck?m1=04&m2=01&m3=05&page=1&pagecount=10&pagegrp=1">프로그램신청확인</a></li>
										</c:otherwise>
									</c:choose>																					
								</ul>
						</li>					
					</c:otherwise>
				</c:choose>
				
				
							
			
			
				<c:choose>
					<c:when test="${menu.m1 eq 04 && menu.m2 eq 02}">
						<li class="default open">
							<a href="/support?m1=04&m2=02"><div class="link">지식정보취약계층 지원<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/support?m1=04&m2=02"><div class="link">지식정보취약계층 지원<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
			
			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">