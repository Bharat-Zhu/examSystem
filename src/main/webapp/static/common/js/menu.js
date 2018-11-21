$(function () {
    $('#side-menu').metisMenu(); // ul.nav#side-menu

    var clickMainMenu = $.cookie('current_main_menu');
    var clickMenu = $.cookie('current_menu');

    $("#side-menu").find("a").click(function () {
        var index = $("#side-menu").find("a").index(this);
        // alert($(this).parent().attr("class"));
        $.cookie("current_menu", index, {path: '/'});
        $("#side-menu").find("a").removeClass("active");
        $(this).addClass('active');
    });

    $("#side-menu").find("li").click(function () {
        var li_active = $(this).attr("class");
        var index = $("#side-menu").find("li").index(this);
        $("#side-menu").find("li").removeClass("mm-active");
        $("#side-menu li").find("ul").removeClass("mm-show");
        if (li_active == "mm-active") {
            $.cookie("current_main_menu", index, {path: '/'});
            $(this).addClass('mm-active');
            $(this).children("ul").addClass('mm-show');
        }
    });

    if ($.cookie("current_main_menu") != null) {
        var index = $.cookie("current_main_menu");
        $("#side-menu").find("li").eq(index).addClass("mm-active");
        $("#side-menu").find("li").eq(index).children("ul").addClass("mm-show");
    } else {
        $("#side-menu").find("li").removeClass("mm-active");
        $("#side-menu li").find("ul").removeClass("mm-show");
    }

    if ($.cookie("current_menu") != null) {
        var index = $.cookie("current_menu");
        $("#side-menu").find("a").eq(index).addClass("active");
    } else {
        $("#side-menu").find("a").removeClass("active");
        $("#side-menu").find("a").eq(0).addClass("active");
    }
});