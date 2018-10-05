/**
 * common.js
 */

/*----------------------------------------------
gnb: dropdown
----------------------------------------------*/

//초기상태
//:1level 만 표시하고 sub와 bg는 숨긴다.
$(function() {
    $('.header .gnb .sub, .header .sub_bg').hide();

    $('.header .gnb li,.header .sub_bg').on({
        'mouseover focus': function() {
            $('.header .sub, .header .sub_bg').stop().slideDown(300);
        },
        'mouseleave blur': function() {
            $('.header .sub, .header .sub_bg').stop().slideUp(200);
        }
    });
});