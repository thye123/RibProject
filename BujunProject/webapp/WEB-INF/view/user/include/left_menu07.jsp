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
				<div class="n01">정보공개</div>
				<div class="n02">RELEASE OF INFORMATION</div>
			</div>	
			
			<ul id="accordion" class="accordion">

				<c:choose>
					<c:when test="${menu.m1 eq 07 && menu.m2 eq 01}">
						<li class="default open">
							<div class="link">정보공개안내<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/info01?m1=07&m2=01&m3=01">정보공개제도안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info01?m1=07&m2=01&m3=01">정보공개제도안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/info02?m1=07&m2=01&m3=02">사전공표대상및비공개대상목록</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info02?m1=07&m2=01&m3=02">사전공표대상및비공개대상목록</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 03}">
											<li class="on"><a href="/info03?m1=07&m2=01&m3=03">정보목록</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info03?m1=07&m2=01&m3=03">정보목록</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="/info04?m1=07&m2=01&m3=04">정보공개청구</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info04?m1=07&m2=01&m3=04">정보공개청구</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 05}">
											<li class="on"><a href="/info05?m1=07&m2=01&m3=05">사전공표대상공개</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info05?m1=07&m2=01&m3=05">사전공표대상공개</a></li>
										</c:otherwise>
									</c:choose>																																																			
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">정보공개안내<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 01}">
											<li class="on"><a href="/info01?m1=07&m2=01&m3=01">정보공개제도안내</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info01?m1=07&m2=01&m3=01">정보공개제도안내</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 02}">
											<li class="on"><a href="/info02?m1=07&m2=01&m3=02">사전공표대상및비공개대상목록</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info02?m1=07&m2=01&m3=02">사전공표대상및비공개대상목록</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 03}">
											<li class="on"><a href="/info03?m1=07&m2=01&m3=03">정보목록</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info03?m1=07&m2=01&m3=03">정보목록</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 04}">
											<li class="on"><a href="/info04?m1=07&m2=01&m3=04">정보공개청구</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info04?m1=07&m2=01&m3=04">정보공개청구</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 07 && menu.m2 eq 01 && menu.m3 eq 05}">
											<li class="on"><a href="/info05?m1=07&m2=01&m3=05">사전공표대상공개</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/info05?m1=07&m2=01&m3=05">사전공표대상공개</a></li>
										</c:otherwise>
									</c:choose>																																																			
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>			
			
			
			
				<c:choose>
					<c:when test="${menu.m1 eq 07 && menu.m2 eq 02}">
						<li class="default open">
							<a href="/opdata?m1=07&m2=02"><div class="link">공공데이터개방<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/opdata?m1=07&m2=02"><div class="link">공공데이터개방<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
			
				
			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">