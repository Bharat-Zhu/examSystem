$(function() {
	$(document).scroll(function() {
		var scroll = $(this).scrollTop();
		if (scroll > 0) {
			$("#btn-scroll-up").show();
		} else {
			$("#btn-scroll-up").hide();
		}
	});
});

function clickMenu(obj, url) {
    $("#navigate_title").text($(obj).text());
    window.location.href = url;
}