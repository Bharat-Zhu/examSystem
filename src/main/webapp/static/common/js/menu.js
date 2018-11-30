$(function () {
    $('#side-menu').metisMenu(); // ul.nav#side-menu

    var clickMainMenu = $.cookie('left-menu-left-navigation-block');
    var clickMenu = $.cookie('left-menu-current');

    $("#side-menu").find("a").click(function () {
        var index = $("#side-menu").find("a").index(this);
        var childrenSpan = $(this).children("span").attr("class");
        var main_menu = $(this).parent("li").attr("class");
        if (main_menu != "") {
            $.cookie("left-menu-current", index, {path: '/'});
            $("#side-menu").find("a").removeClass("active");
            $(this).addClass('active');
        }

        if (childrenSpan == undefined) {
            if ($(this).parent("li").parent("ul").attr("class").indexOf("mm-show") < 0) {
                $.cookie("left-menu-left-navigation-block", index, {path: '/'});
                $("#side-menu").find("li").removeClass("mm-active");
                $("#side-menu li").find("ul").removeClass("mm-show");
            }
        } else {
            $.cookie("left-menu-left-navigation-block", index, {path: '/'});
        }
    });

    if ($.cookie("left-menu-left-navigation-block") != null) {
        var index = $.cookie("left-menu-left-navigation-block");
        var currentLi = $("#side-menu").find("li").eq(index);
        var parents = currentLi.parents("li");
        parents.addClass("mm-active");
        parents.children("ul").addClass("mm-show");
        currentLi.addClass("mm-active");
        currentLi.children("ul").addClass("mm-show");
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
    //
    // if ($.cookie("right-navigate-title") != null) {
    // 	var right_nav_title = $.cookie("right-navigate-title");
    // 	if (right_nav_title == 0 || right_nav_title == "") {
    // 		$("#right_navigate_title").text("首页");
    // 	} else {
    // 		$("#right_navigate_title").text($.cookie("right-navigate-title"));
    // 	}
    // }
});

function clickMenu(obj, url) {
	$.cookie("right-navigate-title", $(obj).text(), {path: '/'})
    window.location.href = url;
}