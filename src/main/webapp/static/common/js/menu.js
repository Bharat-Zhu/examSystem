$(function () {
    $('#side-menu').metisMenu(); // ul.nav#side-menu

    var clickMainMenu = $.cookie('left-menu-left-navigation-block');
    var clickMenu = $.cookie('left-menu-current');

    $("#side-menu").find("a").click(function () {
        var index = $("#side-menu").find("a").index(this);
        var main_menu = $(this).parent().attr("class");
        if (main_menu != "") {
            $.cookie("left-menu-current", index, {path: '/'});
            $("#side-menu").find("a").removeClass("active");
            $(this).addClass('active');
        }
    });

    $("#side-menu").find("li").click(function () {
        var li_active = $(this).attr("class");
        var index = $("#side-menu").find("li").index(this);
        $("#side-menu").find("li").removeClass("mm-active");
        $("#side-menu li").find("ul").removeClass("mm-show");
        $.cookie("left-menu-left-navigation-block", index, {path: '/'});
        if (li_active != undefined) {
            $(this).addClass('mm-active');
            $(this).children("ul").addClass('mm-show');
        }
        if (li_active == "") {
            $("#side-menu").find("li").removeClass("mm-active");
            $("#side-menu li").find("ul").removeClass("mm-show");
        }
    });

    if ($.cookie("left-menu-left-navigation-block") != null) {
        var index = $.cookie("left-menu-left-navigation-block");
        $("#side-menu").find("li").eq(index).addClass("mm-active");
        $("#side-menu").find("li").eq(index).children("ul").addClass("mm-show");
    } else {
        $("#side-menu").find("li").removeClass("mm-active");
        $("#side-menu li").find("ul").removeClass("mm-show");
    }

    if ($.cookie("left-menu-current") != null) {
        var index = $.cookie("left-menu-current");
        $("#side-menu").find("a").eq(index).addClass("active");
    } else {
        $("#side-menu").find("a").removeClass("active");
        $("#side-menu").find("a").eq(0).addClass("active");
    }
    
    if ($.cookie("right-navigate-title") != null) {
    	var right_nav_title = $.cookie("right-navigate-title");
    	if (right_nav_title == 0 || right_nav_title == "") {
    		$("#right_navigate_title").text("首页");
    	} else {
    		$("#right_navigate_title").text($.cookie("right-navigate-title"));
    	}
    }
});

function clickMenu(obj, url) {
	$.cookie("right-navigate-title", $(obj).text(), {path: '/'})
    window.location.href = url;
}