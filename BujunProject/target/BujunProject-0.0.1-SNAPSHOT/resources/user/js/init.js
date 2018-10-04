//메뉴�???
(function($){
	$(function(){
	  
	  var menu_head = $('ul.side-menu h2.title').height();
	  var item_height = $('ul.side-menu li a').height();
	  // Untoggle menu on click outside of it
    $(document).mouseup(function (e) {
      var container = $('ul.side-menu');
      if ((!container.is(e.target) && container.has(e.target).length === 0) && 
         (!($('a.menu-icon').is(e.target)) && $('a.menu-icon').has(e.target).length === 0)) {
        container.removeClass("in");
        $('ul.side-menu, a.menu-icon, .Mob_navigation, div.black, div.white, body, div#menu').removeClass("open");
      	//$('ul.side-menu li').css("top", "100%");
	      //$('ul.side-menu h2').css("top", "-60px");
      }
    });
    
    $("a.menu-icon").click(function(e) {
      e.preventDefault();
      if ($('ul.side-menu, a.menu-icon, .Mob_navigation, div.black, div.white body, div#menu').hasClass('open')) {
      	$('ul.side-menu, a.menu-icon, .Mob_navigation, div.black, div.white, body, div#menu').removeClass('open');

      	// Reset menu on close
      	//$('ul.side-menu li').css("top", "100%");
	    //$('ul.side-menu h2').css("top", "-60px");
		//$('#wrap').css("left", "0px");
      }else{
	      $('ul.side-menu, a.menu-icon, .Mob_navigation, div.black, div.white, body, div#menu').addClass('open');

	      $('ul.side-menu h2').css("top", 0);
		 // $('#wrap').css("left", "-250px");
	      $('ul.side-menu li').each(function() {
	      	// Traditional Effect
	      	if ($(this).hasClass('link')) {
	      		var i = ($(this).index() - 1)
		      	var fromTop = menu_head + (i * item_height);
		      	var delayTime = 100 * i;
		      	$(this).delay(delayTime).queue(function(){
			        $(this).css("top", fromTop);
			        $(this).dequeue();
			    });
	      	}
	      	// Metro Effect
	      	else if ($(this).hasClass('metro')) {
	      		var row_i = ($(this).parent().parent().index() - 1); // Vertical Index
	      		var col_i = $(this).index(); // Horizontal Index
	      		var fromTop = menu_head + (row_i * 125);
						var fromLeft = col_i * 125;
						var delayTime = (row_i * 200) + Math.floor((Math.random() * 200) + 1);
						console.log(delayTime);
			      $(this).css("left", fromLeft);
						$(this).delay(delayTime).queue(function(){
			      	$(this).css("top", fromTop);
			        $(this).dequeue();
			    	});
	      	}
	      });
      }

    })
	
	}); // end of document ready
})(jQuery); // end of jQuery name space


//모바?? 메뉴//
$(function(){
	$("#menu .Mob_navigation li.depth1 > ul").hide();
	$("#menu .Mob_navigation li.depth1 > a").click(function(){	
		var this_id = $(this).attr("id");
		var this_class = $(this).attr("class");
		
		$("#menu .Mob_navigation li.depth1 > a").removeClass("on");
		$("#menu .Mob_navigation li.depth1 > a").addClass("off");
		$("#menu .Mob_navigation li.depth1 > ul").slideUp("slow");
		if($(this).next().is(':hidden')==true){
			$(this).next().slideDown("slow");
			$(this).removeClass("off");
			$(this).addClass("on");
			return false;
		}
	});


	$("#menu .Mob_navigation li.depth1 li.depth2 > ul").hide();
	$("#menu .Mob_navigation li.depth1 li.depth2 > a").click(function(){	
		var this_id = $(this).attr("id");
		var this_class = $(this).attr("class");
		
		$("#menu .Mob_navigation li.depth1 li.depth2 > a").removeClass("on");
		$("#menu .Mob_navigation li.depth1 li.depth2 > a").addClass("off");
		$("#menu .Mob_navigation li.depth1 li.depth2 > ul").slideUp("slow");
		if($(this).next().is(':hidden')==true){
		$(this).next().slideDown("slow");
		$(this).removeClass("off");
		$(this).addClass("on");
		return false;
		}
	});


//?�쪽 메뉴//
	var ttt = $("aside ul li.depth1 ");
	var ttt_on = ttt.attr("class");
	$("aside ul li.depth1 > ul").hide();
	
	if(ttt_on=="on"){
	//	ttt.next().slideDown("slow");
	}
	$("aside ul li.depth1 > a").click(function(){
		

		var this_id = $(this).attr("id");
		var this_class = $(this).attr("class");

		$("aside ul li.depth1 > a").removeClass("on");
		$("aside ul li.depth1 > a").addClass("off");
		$("aside ul li.depth1 > ul").slideUp("slow");
		if($(this).next().is(':hidden')==true){
			$(this).next().slideDown("slow");
			$(this).removeClass("off");
			$(this).addClass("on");
			return false;
		}
		

	});

		$("aside ul li.depth1 li.depth2 > ul").hide();
		$("aside ul li.depth1 li.depth2 > a").click(function(){	
		var this_id = $(this).attr("id");
		var this_class = $(this).attr("class");
		
		$("aside ul li.depth1 li.depth2 > a").removeClass("on");
		$("aside ul li.depth1 li.depth2 > ul").slideUp("slow");
		if($(this).next().is(':hidden')==true){
		$(this).next().slideDown("slow");
		$(this).removeClass("off");
		$(this).addClass("on");
		return false;
		}
	});
});


//?�단메뉴 마우?? ?�버&?�업//
$(document).ready(function(){
	jQuery('#menu .PC_navigation ul.side-menu > li.depth1').on("mouseover", function () {
//		jQuery('#menu .PC_navigation ul.side-menu > li').removeClass("over");
//		jQuery('#menu .PC_navigation ul.side-menu > li').addClass("over");	
//		jQuery('header div#menu div.gnb_bg').addClass("over");	
 
//		jQuery('#menu .PC_navigation ul.side-menu > li.depth1 > ul').slideDown("slow");  
//		jQuery('div.gnb_bg').slideDown("slow");

	});


	jQuery('#menu .PC_navigation ul.side-menu > li.depth1').on("mouseout", function () {
//		jQuery('#menu .PC_navigation ul.side-menu > li').removeClass("over");	
//		jQuery('header div#menu div.gnb_bg').removeClass("over");


//		jQuery('#menu .PC_navigation ul.side-menu > li.depth1 > ul').slideUp("slow");  
//		jQuery('div.gnb_bg').slideUp("slow");

	});

	/*jQuery('#menu .PC_navigation ul.side-menu > li').on("keyup", function () {

//		jQuery('#menu .PC_navigation ul.side-menu > li').removeClass("over");
//		jQuery('#menu .PC_navigation ul.side-menu > li').addClass("over");	
//		jQuery('header div#menu div.gnb_bg').removeClass("over");	

//		jQuery('#menu .PC_navigation ul.side-menu > li').slideUp("over");	
//		jQuery('header div#menu div.gnb_bg').slideUp("over");	

	});*/

});


//메인?�이�? 공�??�항//
	$(document).ready(function(){
		jQuery('article.main_notice h3 a').on("click", function () {
			jQuery('article.main_notice h3 a').removeClass("on");
			jQuery(this).addClass("on");
			jQuery('.main_notice .ncons').hide();

			if(jQuery(this).parent().next().is(':hidden')==true){
				jQuery(this).parent().next().show();
				return false;
			}
		});
	});

//?�렉?�박??//
		jQuery(document).ready(function(){
		
		var select = $("select");
		
	    select.change(function(){
	        var select_name = $(this).children("option:selected").text();
	       // $(this).siblings("label").text(select_name);
    	});
    
	});
