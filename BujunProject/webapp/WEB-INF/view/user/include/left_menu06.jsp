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
				<div class="n01">열린마당</div>
				<div class="n02">USER COMMUNITY</div>
			</div>	
			
			<ul id="accordion" class="accordion">
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 01}">
						<li class="default open">
							<a href="/notice?m1=06&m2=01"><div class="link">공지사항<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/notice?m1=06&m2=01"><div class="link">공지사항<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 02}">
						<li class="default open">
							<a href="/qna?m1=06&m2=02"><div class="link">자주하는질문<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/qna?m1=06&m2=02"><div class="link">자주하는질문<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 03}">
						<li class="default open">
							<a href="freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10"><div class="link">자유게시판<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10"><div class="link">자유게시판<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 04}">
						<li class="default open">
							<a href="/volunteer?m1=06&m2=04"><div class="link">자원봉사신청<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/volunteer?m1=06&m2=04"><div class="link">자원봉사신청<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>	
				
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 05}">
						<li class="default open">
							<div class="link">서비스헌장<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 01}">
											<li class="on"><a href="/charter01?m1=06&m2=05&m3=01">도서관헌장</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter01?m1=06&m2=05&m3=01">도서관헌장</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 02}">
											<li class="on"><a href="/charter02?m1=06&m2=05&m3=02">행정서비스헌장</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter02?m1=06&m2=05&m3=02">행정서비스헌장</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 03}">
											<li class="on"><a href="/charter03?m1=06&m2=05&m3=03">도서관인윤리선언</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter03?m1=06&m2=05&m3=03">도서관인윤리선언</a></li>
										</c:otherwise>
									</c:choose>																																	
								</ul>
						</li>					
					</c:when>
					

					<c:otherwise>
						<li>
							<div class="link">서비스헌장<i class="fa fa-chevron-down"></i></div>
							
								<ul class="submenu">
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 01}">
											<li class="on"><a href="/charter01?m1=06&m2=05&m3=01">도서관헌장</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter01?m1=06&m2=05&m3=01">도서관헌장</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 02}">
											<li class="on"><a href="/charter02?m1=06&m2=05&m3=02">행정서비스헌장</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter02?m1=06&m2=05&m3=02">행정서비스헌장</a></li>
										</c:otherwise>
									</c:choose>		
									
									<c:choose>
										<c:when test="${menu.m1 eq 06 && menu.m2 eq 05 && menu.m3 eq 03}">
											<li class="on"><a href="/charter03?m1=06&m2=05&m3=03">도서관인윤리선언</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/charter03?m1=06&m2=05&m3=03">도서관인윤리선언</a></li>
										</c:otherwise>
									</c:choose>																																	
								</ul>
						</li>				
					</c:otherwise>
				</c:choose>					
				
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 06}">
						<li class="default open">
							<a href="/law?m1=06&m2=06"><div class="link">도서관관계법령<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/law?m1=06&m2=06"><div class="link">도서관관계법령<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>		
				
				<li><a target="_blank" title="새창으로 열림" href="http://www.law.go.kr/ordinInfoP.do?urlMode=ordinScJoRltInfoR&viewCls=ordinInfoP&ordinSeq=545520&chrClsCd=010202&gubun=null"><div class="link">공무원행동강령<i class="fa fa-chevron-down"></i></div></a></li>
				
				<c:choose>
					<c:when test="${menu.m1 eq 06 && menu.m2 eq 07}">
						<li class="default open">
							<a href="/study?m1=06&m2=07"><div class="link">스터디모집<i class="fa fa-chevron-down"></i></div></a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/study?m1=06&m2=07"><div class="link">스터디모집<i class="fa fa-chevron-down"></i></div></a>
						</li>					
					</c:otherwise>
				</c:choose>		
								

			</ul>			
				


		</div>
		<!-- //레프트메뉴 -->
		
		
		
		
		<!-- con_right -->
		<div class="sub_con">
			<div class="rsub">