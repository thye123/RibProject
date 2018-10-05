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
				<div class="n01">도서관이용</div>
				<div class="n02">LIBRARY USE GUIDE</div>
			</div>	
			
			<ul id="accordion" class="accordion">
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 02 && menu.m2 eq 01}">
						<li class="default open">
							<a href="/house?m1=02&m2=01"><div class="link">이용시간<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/house?m1=02&m2=01"><div class="link">이용시간<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	
				

				<!-- 자료실소개 -->
				<c:choose>
					<c:when test="${menu.m1 eq 02 && menu.m2 eq 02}">
						<li class="default open">
							<div class="link">자료실 소개 <i class="fa fa-chevron-down"></i></div>
							
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 01}">
											<li class="on"><a href="/synref?m1=02&m2=02&m3=01">종합자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/synref?m1=02&m2=02&m3=01">종합자료실</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 02}">
											<li class="on"><a href="/childref?m1=02&m2=02&m3=02">어린이실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/childref?m1=02&m2=02&m3=02">어린이실</a></li>
										</c:otherwise>
									</c:choose>									

									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 03}">
											<li class="on"><a href="/digitalref?m1=02&m2=02&m3=03">디지털자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/digitalref?m1=02&m2=02&m3=03">디지털자료실</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 04}">
											<li class="on"><a href="/siref?m1=02&m2=02&m3=04">연속간행물실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/siref?m1=02&m2=02&m3=04">연속간행물실</a></li>
										</c:otherwise>
									</c:choose>											
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 05}">
											<li class="on"><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
										</c:otherwise>
									</c:choose>										
									
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">자료실 소개 <i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 01}">
											<li class="on"><a href="/synref?m1=02&m2=02&m3=01">종합자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/synref?m1=02&m2=02&m3=01">종합자료실</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 02}">
											<li class="on"><a href="/childref?m1=02&m2=02&m3=02">어린이실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/childref?m1=02&m2=02&m3=02">어린이실</a></li>
										</c:otherwise>
									</c:choose>									

									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 03}">
											<li class="on"><a href="/digitalref?m1=02&m2=02&m3=03">디지털자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/digitalref?m1=02&m2=02&m3=03">디지털자료실</a></li>
										</c:otherwise>
									</c:choose>	
										
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 04}">
											<li class="on"><a href="/siref?m1=02&m2=02&m3=04">연속간행물실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/siref?m1=02&m2=02&m3=04">연속간행물실</a></li>
										</c:otherwise>
									</c:choose>	
																	
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 02 && menu.m3 eq 05}">
											<li class="on"><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
										</c:otherwise>
									</c:choose>										
									
								</ul>
						</li>					
					</c:otherwise>
				</c:choose>
				<!-- //자료실소개 -->
				
				

				<c:choose>
					<c:when test="${menu.m1 eq 02 && menu.m2 eq 03}">
						<li class="default open">
							<div class="link">자료이용 안내<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 03 && menu.m3 eq 01}">
											<li class="on"><a href="/lending?m1=02&m2=03&m3=01">관외대출</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/lending?m1=02&m2=03&m3=01">관외대출</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 03 && menu.m3 eq 02}">
											<li class="on"><a href="/inview?m1=02&m2=03&m3=02">관내열람</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/inview?m1=02&m2=03&m3=02">관내열람</a></li>
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
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 03 && menu.m3 eq 01}">
											<li class="on"><a href="/lending?m1=02&m2=03&m3=01">관외대출</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/lending?m1=02&m2=03&m3=01">관외대출</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 02 && menu.m2 eq 03 && menu.m3 eq 02}">
											<li class="on"><a href="/inview?m1=02&m2=03&m3=02">관내열람</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/inview?m1=02&m2=03&m3=02">관내열람</a></li>
										</c:otherwise>
									</c:choose>		
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 02 && menu.m2 eq 04}">
						<li class="default open">
							<a href="/reserve?m1=02&m2=04"><div class="link">열람실 및 컴퓨터실 자리 예약<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/reserve?m1=02&m2=04"><div class="link">열람실 및 컴퓨터실 자리 예약<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>			
				
					
				<c:choose>
					<c:when test="${menu.m1 eq 02 && menu.m2 eq 05}">
						<li class="default open">
							<a href="/facility?m1=02&m2=05"><div class="link">편의시설<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/facility?m1=02&m2=05"><div class="link">편의시설<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
			</ul>
	
	
	
	
		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">