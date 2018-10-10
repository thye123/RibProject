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
				<div class="n01">기타</div>
				<div class="n02">ETC DATA</div>
			</div>	
			
			<ul id="accordion" class="accordion">
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 08 && menu.m2 eq 01}">
						<li class="default open">
							<div class="link">자료이용 안내<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 08 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/personalinfo?m1=08&m2=01&m3=01">개인정보처리방침</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/personalinfo?m1=08&m2=01&m3=01">개인정보처리방침</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 08 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">개인정보처리위탁</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">개인정보처리위탁</a></li>
										</c:otherwise>
									</c:choose>		
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">자료이용 안내<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 08 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/personalinfo?m1=08&m2=01&m3=01">개인정보처리방침</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/personalinfo?m1=08&m2=01&m3=01">개인정보처리방침</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 08 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">개인정보처리위탁</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/personalinfo02?m1=08&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1">개인정보처리위탁</a></li>
										</c:otherwise>
									</c:choose>		
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>
					
					
									
<%-- 				
				<c:choose>
					<c:when test="${menu.m1 eq 08 && menu.m2 eq 01}">
						<li class="default open">
							<a href="/personalinfo?m1=08&m2=01"><div class="link">개인정보 처리 방침<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/personalinfo?m1=08&m2=01"><div class="link">개인정보 처리 방침<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				 --%>

								
				<c:choose>
					<c:when test="${menu.m1 eq 08 && menu.m2 eq 02}">
						<li class="default open">
							<a href="/sitemap?m1=08&m2=02"><div class="link">사이트맵<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/sitemap?m1=08&m2=02"><div class="link">사이트맵<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 08 && menu.m2 eq 03}">
						<li class="default open">
							<a href="/videoinfo?m1=08&m2=03"><div class="link">영상정보처리기기<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/videoinfo?m1=08&m2=03"><div class="link">영상정보처리기기<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	
				
				<c:choose>
					<c:when test="${menu.m1 eq 08 && menu.m2 eq 04}">
						<li class="default open">
							<a href="/location?m1=08&m2=04"><div class="link">찾아오는길<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/location?m1=08&m2=04"><div class="link">찾아오는길<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>					
				
			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">