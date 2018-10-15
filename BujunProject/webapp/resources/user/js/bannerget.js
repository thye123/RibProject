$(document).ready(function() {
	
	//諛곕꼫紐⑥쓬
//	if( $("#gbn").children().length > 0 ) {
/*
		$("#gbn").cycle({
		    fx:"none",
		    timeout:3000,
		    next:"#banNext",
		    prev:"#banPrev"
		});
		$("#banStop").click(function() {
			$("#gbn").cycle("pause");
		});
*/
	
	/* 諛곕꼫 */
	var itemparm = "#banner"; // �곸뿭
	var btn_bnr = itemparm+" .control"; // �ㅽ뻾
	var interval = 3000; // 諛섎났 ��
	var speed = 300; // �좊땲硫붿씠�� 吏꾪뻾 �쒓컙
	var viewSize = 5; // �쒕쾲�먮낫�ъ쭏 媛앹껜 ��
	var moreSize = 10; // css濡� 異붽��� �щ갚(margin,padding)
	var dir = "x"; // �대룞諛⑺뼢
	var data = 0; // �щ씪�대뱶 諛⑺뼢 (0:�꾨옒�먯꽌 �꾨줈, 1:�꾩뿉�� �꾨옒濡�)
	var auto = true; // �먮룞 �뚮젅�� true, false
	var count = false; // �섏씠吏� �ъ슜 true, false (�ъ슜�� �대떦�� 臾몄쓽)
	var hover = false; // stop &amp; play
	var method = "easeInOutCubic"; // �щ씪�대뱶 ���� �좏깮
	var op1 = false;
	stateScrollObj(itemparm,btn_bnr,interval,speed,viewSize,moreSize,dir,data,auto,hover,method,op1)


	//�앹뾽�뚮━誘�
	var popup_zone_count = $("#main_popup_zone").children().length;
	if( popup_zone_count > 0 ) 
	{
		$("#main_popup_zone").cycle({
			fx:"none",
		    timeout:6000,
		    next:"#popNext",
		    prev:"#popPrev",
			before: onAfterVisual
		});
		$('#total_cnt').html( $("#main_popup_zone > span").length );
	}

	

	function onAfterVisual() 
	{
	   try{
		   if( $(this).find('img') ) {
			    num = parseInt( $(this).find('img').attr("id").replace('img_popzone_','' ) ) ;
		   }else {
				num = 0;
		   }
		   $('#pager_cnt').text(num);
	   }catch(e){ alert( e ); }
	}

	var pop_stop = false;
	$("#popStop").click(function() {
		if( popup_zone_count > 0 ) 
		{
			if( !pop_stop ){
				pop_stop = true;
				$('#popStop > img').attr("src","/resources/user/images/main/pop_play.png");
				$('#popStop > img').attr("alt","재생");
				$('#main_popup_zone').cycle('pause');				
			}else{
				pop_stop = false;
				$('#popStop > img').attr("src","/resources/user/images/main/pop_stop.png");
				$('#popStop > img').attr("alt","정지");
				$('#main_popup_zone').cycle('resume');
			}
		}
		return false;
	});

	




});


// �ㅽ겕濡� 諛곕꼫
	function stateScrollObj(param,obj,btn,interval,speed,viewSize,moreSize,dir,data,auto,hover,method,op1){
	var param = $(param);
	var btn = $(btn);
	var obj = param.find(obj);
	
	var elem = 0;
	var objYScale = obj.eq(elem).outerHeight(true)+moreSize;
	var objXScale = obj.eq(elem).outerWidth(true)+moreSize;
	var str;
	var returnNodes;

	var playdir = data;
	var data = data; // 0:default, 1:prev

	var play = btn.find("[rel=play]");
	var stop = btn.find("[rel=stop]");
	
	if(auto == true) play.hide(); else stop.hide(); 
	if(op1 == true) obj.not(elem).css({opacity:0}).eq(elem).css({opacity:1});
	
	function movement(){
		if(obj.parent().find(":animated").size()) return false;
		switch(data){
			case 0:
				if(dir == "x"){
					obj.parent().stop(true,true).animate({left:-objXScale},{duration:speed,easing:method,complete:
						function(){
							obj.parent().css("left",0);
							str = obj.eq(elem).detach();
							obj.parent().append(str);
							if(elem == obj.size()-1){
								elem = 0;
							}else{
								elem++;
							}
							objXScale = obj.eq(elem).outerWidth(true)+moreSize;
						}
					});
				}else{ 
					obj.parent().stop(true,true).animate({top:-objYScale},{duration:speed,easing:method,complete:
						function(){
							obj.parent().css("top",0);
							str = obj.eq(elem).detach();
							obj.parent().append(str);
							if(elem == obj.size()-1){
								elem = 0;
							}else{
								elem++;
							}
							objYScale = obj.eq(elem).outerHeight(true)+moreSize;
						}
					});
				}

				if(op1 == true){
					obj.eq(elem).stop(true,true).animate({opacity:0},{duration:speed,easing:method});
					obj.eq(elem).next().stop(true,true).animate({opacity:1},{duration:speed,easing:method});
					//obj.eq(elem).stop(true,true).fadeOut(speed);
					//obj.eq(elem).next().stop(true,true).fadeIn(speed);
					//obj.eq(elem).css({"z-index":"0"});
					//obj.eq(elem).next().css({"z-index":"1"});
				}
			break;
			
			case 1:
				if(dir == "x"){
					if(elem == 0){
						elem = obj.size()-1;
					}else{
						elem--;
					}
					objXScale = obj.eq(elem).outerWidth(true)+moreSize;
					obj.parent().css("left",-objXScale);
					str = obj.eq(elem).detach();
					obj.parent().prepend(str);
					obj.parent().stop(true,false).animate({left:0},{duration:speed,easing:method});
				}else{
					if(elem == 0){
						elem = obj.size()-1;
					}else{
						elem--;
					}
					objYScale = obj.eq(elem).outerHeight(true)+moreSize;
					obj.parent().css("top",-objYScale);
					str = obj.eq(elem).detach();
					obj.parent().prepend(str);
					obj.parent().stop(true,false).animate({top:0},{duration:speed,easing:method});
				}

				if(op1 == true){
					obj.eq(elem).stop(true,false).animate({opacity:1},{duration:speed,easing:method});
					obj.eq(elem).next().stop(true,false).animate({opacity:0},{duration:speed,easing:method});
					//obj.eq(elem).stop(true,false).fadeIn(speed);
					//obj.eq(elem).next().stop(true,false).fadeOut(speed);
					//obj.eq(elem).css({"z-index":"1"});
					//obj.eq(elem).next().css({"z-index":"0"});
				}
			break;
			
			default: alert("warning, 0:default, 1:prev, data:"+data);
		}
	}
	
}