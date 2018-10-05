
	// 1차메?? ?�라?�딩

jQuery(function($){
	var interval;
	$(function() {
		// 메뉴?�기 : ??/?�블�?
		$('.gnb').hover(
			function(){
				// 메뉴 ?�기
				clearInterval(interval);
				$('.gnb_bg').slideDown(300);
				$('.depth2').slideDown(300);
				$('.PC_navigation ul.side-menu >li.depth1 >ul > li.depth2',this).slideDown(300);
				//$('#menu .PC_navigation ul.side-menu > li.depth1 > ul').slideDown(300);
//				$('ul.submenu',this).slideDown(300);
				$('.topSearch').css('visibility','hidden');
			},
			function(){
				// 메뉴 ?�기
				interval = setInterval("gnbMouseOut()", 300);
			}
		)
		
		$.each($('.gnb.PC_navigation .side-menu li.depth1 a'),function(){
			$(this).bind('hover focus',function(){
				// 메뉴 ?�기
				clearInterval(interval);
				$('.gnb_bg').slideDown(300);
				$('.PC_navigation ul.side-menu >li.depth1 >ul > li.depth2',this).slideDown(300);
				//$('#menu .PC_navigation ul.side-menu > li.depth1 > ul').slideDown(300);
//				$('ul.submenu').slideDown(300);
			})
		});
		$('.gnb > ul > li').on('mouseover focusin', function(){

			$('> a',this).addClass('on');
		}).on('mouseleave focusout', function(){
			$('.gnb > ul > li > a').removeClass('on');
		});

//		$('div.submenu').on('keyup', function(){
//			interval = setInterval("gnbMouseOut()", 500);
//		});
		$('div #popup ul li').on('keyup', function(){
			interval = setInterval("gnbMouseOut()", 500);
		});
		// 메뉴?�기 : 모바??
		$('.AllMn > a').on('touchstart click', function() {
			$(this).toggleClass("on");
			$(".gnbAll").slideToggle('fast');
			return false;
		});
		$("gnb.PC_navigation .side-menu li.depth1 a").on('click', function() {
			$(this).next("div").slideToggle('fast');
			$(this).toggleClass("on");
			return false;
		});

		// 메뉴?�기 : 모바??
		$('.btnSearch > a').on('touchstart click', function() {
			$(this).toggleClass("on");
			$('.btnSearchClos').show();
			$(".topSearch").slideToggle('fast');
			return false;
		});

		// 2016.03.10 메뉴 1개씩 ?�라?�딩 ?�키?? 기능
		/*$('.gnb #head_menu li a').mouseover(function(){
			// 메뉴 ?�기
			$('.gnb_bg').show();
			$(this).closest('li').find('div.submenu').show();
			//$(this).closest('li').find('div.submenu').slideDown(300);
		});
		$('.gnb #head_menu li a').focus(function(){
			// 메뉴 ?�기
			$('.gnb_bg').show();
			$(this).closest('li').find('div.submenu').show();
			//$(this).closest('li').find('div.submenu').slideDown(300);
		});
		$('.gnb #head_menu li').mouseleave(function(){
			// 메뉴 ?�기
			//$(this).find('div.submenu').slideUp(300);
			$(this).find('div.submenu').hide();
			$('.gnb_bg').hide();
		});*/
	});



});


	

		function gnbMouseOut(){
			// 메뉴 ?�기
			$('.gnb_bg').slideUp(300);
			$('.PC_navigation ul.side-menu >li.depth1 >ul > li.depth2').slideUp(300);
			//$('.gnb ul.submenu').slideUp(300);
			$('.topSearch').css('visibility','visible');
		}
