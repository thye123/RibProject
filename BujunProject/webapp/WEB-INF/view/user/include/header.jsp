<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/base.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/layout.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/main.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/sub.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/sub2.css" />
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" >
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/user/js/prefixfree.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/user/js/common.js"></script>
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/init.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/menu.js"></script>    
    
    <!-- 팝업존 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/jquery.cycle.all.js" charset="utf-8"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/bannerget.js" charset="utf-8"></script> 

<%-- 	<!-- 레프트 메뉴 -->
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/user/js/script.js"></script>
 --%>

	<title>희망과 꿈이 있는 부전도서관</title>
	
	
	<!-- 메뉴 -->
    <script>
	    $(function() {
	        /* 메가드롭다운 */
	        $('.header .header_wrap .gnb .level2, .header .gnb_bg').hide();
	        $('.header .header_wrap .gnb  li, .header .gnb_bg').on({
	            'mouseover focus': function() {
	                $('.header .header_wrap .gnb .level2, .header .gnb_bg').stop().slideDown(300);
	            },
	            'mouseleave blur': function() {
	                $('.header .header_wrap .gnb .level2, .header .gnb_bg').stop().slideUp(300);
	            }
	
	        });
	
	        /* 스티키헤더 */
	        var header = $('.header');
	        var headerOt = $('.header').offset().top;
	        var windowObj = $(window);
	        var windowSt = 0;
	
	        windowObj.on('scroll', function() {
	            windowSt = windowObj.scrollTop();
	            console.log(windowSt);
	
	            if (windowSt > 240) {
	                header.addClass('on');
	            } else {
	                header.removeClass('on');
	            }
	        });
	        windowObj.scroll();
	
	    });  
    </script>	
		 

</head>
<body>


    
	<!-- gnb -->
	<div class="lnb_menu">
		<div class="lnb_wrap">
			<ul class="lnb_con">

				<c:choose>
					<c:when test="${sessionScope.mem_name eq null}">
						<li><a href="/bjLogin">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/logout">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			
				<li><a href="/join">회원가입</a></li>
				
				
				<c:if test="${sessionScope.mem_id ne null}">
					<li><a href="/mypage?mem_id=${sessionScope.mem_id}">마이페이지</a></li>
				</c:if>
				
			</ul>
		</div>
	</div>
	
	<!-- lnb_pc -->
	<div class="gnb_menu_pc">
		<div class="header">
            <div class="gnb_wrap">
            	<h1><a href="/"><img src="${pageContext.request.contextPath}/resources/user/images/common/logo.png" alt="부전도서관 로고" /></a></h1>
            	
                <ul class="gnb">
                    <li>
                        <a href="/history?m1=01&m2=01">도서관 소개</a>
                        <ul class="sub">
                            <li><a href="/history?m1=01&m2=01">연혁/인사말</a></li>
                            <li class="n2line"><a href="/org?m1=01&m2=02">조직도/<br />담당업무안내</a></li>
                            <li class="n2line"><a href="/bjldata?m1=01&m2=03">시설현황/<br />소장자료현황</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/house?m1=02&m2=01">도서관 이용</a>
                        <ul class="sub">
                            <li><a href="/house?m1=02&m2=01">이용시간</a></li>
                            <li><a href="/synref?m1=02&m2=02&m3=01">자료실 소개</a></li>
                            <li><a href="/lending?m1=02&m2=03&m3=01">자료이용 안내</a></li>
                            <li class="n2line"><a href="/reserve?m1=02&m2=04">열람실 및 <br />컴퓨터실 <br />자리 예약</a></li>
                            <li><a href="/facility?m1=02&m2=05">편의시설</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">자료찾기</a>
                        <ul class="sub">
                            <li><a href="/bjsearch?m1=03&m2=01">자료찾기</a></li>
                            <li><a href="http://search.siminlib.go.kr/search/search.jsp?logo=4&mcode=110" target="_blank">타도서관 자료찾기</a></li>
                            <!-- <li><a href="/nbook?m1=03&m2=03">새로들어온책</a></li> -->
                            <li><a href="/mbinfo?m1=03&m2=04&page=1&perPageNum=10">나의도서대출정보</a></li>
                            <li><a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1">비치희망자료신청</a></li>
                            <li><a href="/wishres?m1=03&m2=06&nowpage=1&pagecount=10&grpnum=1">비치희망자료결과</a></li>
                            <li><a href="/datalist?m1=03&m2=07">연속간행물목록</a></li>
                            <li><a href="/origserv01?m1=03&m2=08&m3=01">원문서비스</a></li>
                            <li><a href="/searchgove?m1=03&m2=09">관보검색</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">평생교육</a>
                        <ul class="sub">
                            <li><a href="/opguide?m1=04&m2=01&m3=01">평생학습</a></li>
                            <li class="n2line"><a href="/support?m1=04&m2=02">지식정보<br />취약계층 지원</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">독서문화</a>
                        <ul class="sub">
                            <li><a href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=1&perPageNum=12">추천도서</a></li>
                            <li><a href="/bkcare?m1=05&m2=02&m3=01">독서치료</a></li>
                            <li><a href="/club01?m1=05&m2=03&m3=01">독서동아리</a></li>
                            <li><a href="/bookclass?m1=05&m2=04">독서교실</a></li>
                            <li><a href="/libweek?m1=05&m2=05">도서관주간</a></li>
                            <li><a href="/moreading?m1=05&m2=06">독서의달</a></li>
                            <li><a href="/obook01?m1=05&m2=07&m3=01">원북원부산</a></li>
                            <li class="n2line"><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10">부산시민<br />독후감공모</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">열린마당</a>
                        <ul class="sub">
                            <li><a href="/notice?m1=06&m2=01&nowpage=1&pagecount=10&grpnum=1">공지사항</a></li>
                            <li><a href="/qna?m1=06&m2=02">자주하는질문</a></li>
                            <li><a href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10">자유게시판</a></li>
                            <li><a href="/volunteer?m1=06&m2=04">자원봉사신청</a></li>
                            <li><a href="/charter01?m1=06&m2=05&m3=01">서비스헌장</a></li>
                            <li><a href="/law?m1=06&m2=06">도서관관계법령</a></li>
                            <li><a target="_blank" title="새창으로열림" href="http://www.law.go.kr/ordinInfoP.do?urlMode=ordinScJoRltInfoR&viewCls=ordinInfoP&ordinSeq=545520&chrClsCd=010202&gubun=null">공무원행동강령</a></li>
                            <li><a href="/study?m1=06&m2=07&page_num=1&page_grp=1">스터디모집</a></li>
                        </ul>
                    </li>    
                    <li>
                        <a href="#">정보공개</a>
                        <ul class="sub">
                            <li><a href="/info01?m1=07&m2=01&m3=01">정보공개안내</a></li>
                            <li><a href="/opdata?m1=07&m2=02">공공데이터개방</a></li>
                        </ul>
                    </li>                 
                </ul>
                <!--end of gnb-->
            </div>
            <div class="sub_bg text_hide"><!-- 서브 메뉴 배경 요소 --></div>
            <!--end of sub_bg-->
        </div> <!-- 끝 -->
	</div> <!-- //gnb_wrap  -->
        
        
	
	
	<!-- lnb_mob -->
	<div class="gnb_menu_mob">
			<!-- (s) 탑 메뉴 -->

			<div id="menu">
				 <a class="menu-icon" href="#">메뉴</a>
				 <a class="m_search" href="/bjLogin">로그인</a>
				
				<div class="black"></div>
				<div class="white"></div>
				<div class="Mob_navigation">
					
				<script>
					function mob_search() {
						
						var key = document.getElementById("key2");
						
						if(key.value == "") {
							alert("검색어를 입력하세요.");
							key.focus();
							return;
						}
							
						document.formMobSearch.submit();
					}
				</script>
			
					<ul class="side-menu">
						<li>
							<div class="mob_search">								
								<form class="mob_search_frm" action="/bjsearch" name="formMobSearch">
									<input type="text" id="key2" name="kwd" class="textnon" />
									<button type="button" onclick="mob_search()">
										<img src="/resources/user/images/main/v_search.png" alt="검색">
									</button>
									
									<input type="hidden" name="m1" value="03" />
									<input type="hidden" name="m2" value="01" />
									<input type="hidden" name="page" value="1" />
									<input type="hidden" name="chk" value="1" />
									<input type="hidden" name="sort_select5" value="" />
									<input type="hidden" name="sort_select3" value="" />
									<input type="hidden" name="startDate" value="" />
									<input type="hidden" name="endDate" value="" />
									<input type="hidden" name="sort_select1" value="" />
								</form>
							</div>
						</li>
	
						<li class="depth1"><a href="/history?m1=01&m2=01">도서관 소개</a>
							<ul>
								<li class="depth2"><a href="/history?m1=01&m2=01" class="off">연혁/인사말</a></li> 
								<li class="depth2"><a href="/org?m1=01&m2=02" class="off">조직도/담당업무안내</a></li> 
								<li class="depth2"><a href="/bjldata?m1=01&m2=03" class="off">시설현황/소장자료현황</a></li>
							</ul>
						</li>
																	
						<li class="depth1"><a href="/house?m1=02&m2=01" class="off">도서관이용</a>
							<ul>
								<li class="depth2"><a href="/house?m1=02&m2=01" class="off">자료실 소개</a>
									<ul>
										<li class="depth3"><a href="/synref?m1=02&m2=02&m3=01" class="off">종합자료실</a></li> 
										<li class="depth3"><a href="/childref?m1=02&m2=02&m3=02" class="off">어린이실</a></li> 
										<li class="depth3"><a href="/digitalref?m1=02&m2=02&m3=03" class="off">디지털자료실</a></li> 
										<li class="depth3"><a href="/siref?m1=02&m2=02&m3=04" class="off">연속간행물실</a></li> 
										<li class="depth3"><a href="/finref01?m1=02&m2=02&m3=05" class="off">특성화(금융정보)자료실</a></li> 
									</ul>								
								</li> 
								<li class="depth2"><a href="/lending?m1=02&m2=03&m3=01" class="off">자료이용 안내</a>
									<ul>
										<li class="depth3"><a href="/lending?m1=02&m2=03&m3=01" class="off">관외대출</a></li> 
										<li class="depth3"><a href="/inview?m1=02&m2=03&m3=02" class="off">관내열람</a></li> 
									</ul>								
								</li>
								<li class="depth2"><a href="/reserve?m1=02&m2=04" class="off">열람실 및 컴퓨터실 자리 예약</a></li>
								<li class="depth2"><a href="/facility?m1=02&m2=05" class="off">편의시설</a></li>
							</ul>
						</li>
						
						<li class="depth1"><a href="/bjsearch?m1=03&m2=01" class="off">자료찾기</a>
							<ul>
								<li class="depth2"><a href="/bjsearch?m1=03&m2=01" class="off">자료찾기</a></li>
								<li class="depth2"><a href="http://search.siminlib.go.kr/search/search.jsp?logo=4&mcode=110" target="_blank" class="off">타도서관 자료찾기</a></li>
								<!-- <li class="depth2"><a href="/nbook?m1=03&m2=03" class="off">새로들어온책</a></li> -->
								<li class="depth2"><a href="/mbinfo?m1=03&m2=04&page=1&perPageNum=10" class="off">나의도서대출정보</a></li>
								<li class="depth2"><a href="/wishbk?m1=03&m2=05&nowpage=1&pagecount=10&grpnum=1" class="off">비치희망자료신청</a></li>
								<li class="depth2"><a href="/wishres?m1=03&m2=06&nowpage=1&pagecount=10&grpnum=1" class="off">비치희망자료결과</a></li>
								<li class="depth2"><a href="/datalist?m1=03&m2=07" class="off">연속간행물목록</a></li>
								<li class="depth2"><a href="/origserv01?m1=03&m2=08&m3=01" class="off">원문서비스</a>
									<ul>
										<li class="depth3"><a href="/origserv01?m1=03&m2=08&m3=01" class="off">국회도서관 원문DB</a></li> 
										<li class="depth3"><a href="/origserv02?m1=03&m2=08&m3=02" class="off">국립중앙도서관 원문DB</a></li> 
										<li class="depth3"><a href="/origserv03?m1=03&m2=08&m3=03" class="off">국가전자도서관 원문검색</a></li> 
										<li class="depth3"><a href="/origserv04?m1=03&m2=08&m3=04" class="off">학회지 원문검색</a></li> 
									</ul>									
								</li>
								<li class="depth2"><a href="/searchgove?m1=03&m2=09" class="off">관보검색</a></li>
							</ul>						
						</li>	

						<li class="depth1"><a href="/project/sub/custom_made.jsp" class="off">평생학습</a>
							<ul>
								<li class="depth2"><a href="/bjsearch?m1=03&m2=01" class="off">평생학습</a>
									<ul>
										<li class="depth3"><a href="/opguide?m1=04&m2=01&m3=01" class="off">운영안내</a></li> 
										<li class="depth3"><a href="/opprogram01?m1=04&m2=01&m3=02 " class="off">운영프로그램</a></li> 
										<li class="depth3"><a href="/pgappl?m1=04&m2=01&m3=03" class="off">프로그램신청</a></li> 
										<li class="depth3"><a href="/pgcheck?m1=04&m2=01&m3=04" class="off">프로그램신청확인</a></li> 
									</ul>									
								</li>
								<li class="depth2"><a href="/support?m1=04&m2=02" class="off">지식정보취약계층 지원</a></li>
							</ul>						
						</li>	

						<li class="depth1"><a href="/monthbk?m1=05&m2=01&m3=01" class="off">독서문화</a>
							<ul>
								<li class="depth2"><a href="/monthbk?m1=05&m2=01&m3=01" class="off">추천도서</a>
									<ul>
										<li class="depth3"><a href="/monthbk?rec_code=CAT0031&m1=05&m2=01&m3=01&page=1&perPageNum=12" class="off">이달의 책</a></li> 
										<li class="depth3"><a href="/bujunbk?m1=05&m2=01&m3=02&nowpage=1&pagecount=10&grpnum=1" class="off">부전추천도서</a></li> 
										<li class="depth3"><a href="http://www.nl.go.kr/ask/recommend/recommend_nl/list1.jsp" target="_blank" class="off">기타추천도서</a></li> 
										<li class="depth3"><a href="http://www.nl.go.kr/ask/readSite/list.jsp" target="_blank" class="off">독서관련사이트</a></li> 
									</ul>									
								</li>
								<li class="depth2"><a href="/bkcare?m1=05&m2=02&m3=01" class="off">독서치료</a>
									<ul>
										<li class="depth3"><a href="/bkcare?m1=05&m2=02&m3=01" class="off">독서치료</a></li> 
										<li class="depth3"><a href="/caresite?m1=05&m2=02&m3=02" class="off">독서치료관련사이트</a></li> 
									</ul>									
								</li>								
								<li class="depth2"><a href="/club01?m1=05&m2=03&m3=01" class="off">독서동아리</a>
									<ul>
										<li class="depth3"><a href="/club01?m1=05&m2=03&m3=01" class="off">찬우물</a></li> 
										<li class="depth3"><a href="/club01?m1=05&m2=03&m3=02" class="off">책넝쿨</a></li> 
										<li class="depth3"><a href="/club01?m1=05&m2=03&m3=03" class="off">이목</a></li> 
										<li class="depth3"><a href="/club01?m1=05&m2=03&m3=04" class="off">책마중</a></li> 
									</ul>									
								</li>									
								<li class="depth2"><a href="/bookclass?m1=05&m2=04" class="off">독서교실</a></li>
								<li class="depth2"><a href="/libweek?m1=05&m2=05" class="off">도서관주간</a></li>
								<li class="depth2"><a href="/moreading?m1=05&m2=06" class="off">독서의달</a></li>								
								<li class="depth2"><a href="/obook01?m1=05&m2=07&m3=01" class="off">원북원부산</a>
									<ul>
										<li class="depth3"><a href="/obook01?m1=05&m2=07&m3=01" class="off">운영안내</a></li> 
										<li class="depth3"><a href="/obook02?m1=05&m2=07&m3=02" class="off">올해의BOOK</a></li> 
									</ul>									
								</li>										
								<li class="depth2"><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10" class="off">부산시민독후감공모</a>
									<ul>
										<li class="depth3"><a href="/bkreport01?bd_catcode=CAT0005&m1=05&m2=08&m3=01&page=1&perPageNum=10" class="off">범시민 독후감</a></li> 
										<li class="depth3"><a href="/bkreport02?bd_catcode=CAT0006&m1=05&m2=08&m3=02&page=1&perPageNum=10">원북원부산 독후감</a></li> 
									</ul>									
								</li>								
							</ul>						
						</li>
						
						<li class="depth1"><a href="/notice?m1=06&m2=01" class="off">열린마당</a>
							<ul>
								<li class="depth2"><a href="/notice?m1=06&m2=01&nowpage=1&pagecount=10&grpnum=1" class="off">공지사항</a></li>
								<li class="depth2"><a href="/qna?m1=06&m2=02" class="off">자주하는질문</a></li>
								<li class="depth2"><a href="/freebrd?bd_catcode=CAT0007&m1=06&m2=03&page=1&perPageNum=10" class="off">자유게시판</a></li>
								<li class="depth2"><a href="/volunteer?m1=06&m2=04" class="off">자원봉사신청</a></li>
								<li class="depth2"><a href="/charter01?m1=06&m2=05&m3=01" class="off">서비스헌장</a>
									<ul>
										<li class="depth3"><a href="/charter01?m1=06&m2=05&m3=01" class="off">도서관헌장</a></li> 
										<li class="depth3"><a href="/charter02?m1=06&m2=05&m3=02" class="off">행정서비스헌장</a></li> 
										<li class="depth3"><a href="/charter03?m1=06&m2=05&m3=03" class="off">도서관인윤리선언</a></li> 
									</ul>										
								</li>
								<li class="depth2"><a href="/law?m1=06&m2=06" class="off">도서관관계법령</a></li>
								<li class="depth2"><a target="_blank" title="새창으로열림" href="http://www.law.go.kr/ordinInfoP.do?urlMode=ordinScJoRltInfoR&viewCls=ordinInfoP&ordinSeq=545520&chrClsCd=010202&gubun=null" class="off">공무원행동강령</a></li>
								<li class="depth2"><a href="/study?m1=06&m2=07&page_num=1&page_grp=1" class="off">스터디모집</a></li>
							</ul>						
						</li>	
						
						<li class="depth1"><a href="/info01?m1=07&m2=01&m3=01" class="off">정보공개</a>
							<ul>
								<li class="depth2"><a href="/info01?m1=07&m2=01&m3=01" class="off">정보공개안내</a></li>
								<li class="depth2"><a href="/opdata?m1=07&m2=02" class="off">공공데이터개방</a></li>
							</ul>						
						</li>							
						
						
					</ul>
				</div>
			</div>
				
				<!-- (e) 탑 메뉴 -->	
	</div>
	


	<!-- top -->
	<a class="topBt" href="#doc">TOP</a>
	
	<script>
		$(function(){     
	        // Fakes the loading setting a timeout
	        setTimeout(function () {
	            $('body').addClass('loaded');
	        }, 400);
			
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > $(window).height() * 0.2) {
	                $('.topBt').addClass('over');
	            } else {
	                $('.topBt').removeClass('over');
	            }
	        });
	
	        //Click event to scroll to top
	        $('.topBt').click(function () {
	            $('html, body').animate({ scrollTop: 0 }, 300);
	            return false;
	        });
		});
	</script>
 	
 	
 	