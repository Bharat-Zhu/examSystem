$(function () {
    $(document).scroll(function () {
        var scroll = $(this).scrollTop();
        if (scroll > 0) {
            $("#btn-scroll-up").show();
        } else {
            $("#btn-scroll-up").hide();
        }
    });
});

function loadGirdData(selector, url, columnModel, pagerSelector, isHorizontalOverflowNotShow = true) {
    $(selector).jqGrid({
        url: url,
        datatype: "json",
        styleUI: 'Bootstrap',
        colModel: columnModel,
        sortable: true,
        viewrecords: false,
        height: 445,
        rowNum: 10,
        rowList: [10, 30, 50, 100],
        rownumbers: false,
        rownumWidth: 25,
        autowidth: true,
        multiselect: false,
        pager: pagerSelector,
        gridComplete: function () {
        	if (isHorizontalOverflowNotShow) {
        		//隐藏grid底部滚动条
                $(selector).closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        	}
        }
    });
}

function ajaxRequest(url, success, data, dataType, type, async, error) {
    async = (async == null || async == "" || typeof(async) == "undefined") ? "true" : async;
    type = (type == null || type == "" || typeof(type) == "undefined") ? "post" : type;
    dataType = (dataType == null || dataType == "" || typeof(dataType) == "undefined") ? "json" : dataType;
    data = (data == null || data == "" || typeof(data) == "undefined") ? {} : data;

    error = error || function (data) {
        layer.closeAll('loading');
        setTimeout(function () {
            if(data.status == 404){
                layer.msg(requestFailedNotFoundMessage);
            }else if(data.status == 503){
                layer.msg(requestFailedErrorMessage);
            }else {
                layer.msg(requestFailedConnectTimeoutMessage);
            }
            ajaxStatus = true;
        },500);
    };

    $.ajax({
        url: url,
        type: type,
        data: data,
        async: async,
        dataType: dataType,
        success: success,
        error: error,
        beforeSend: function() {
            layer.load(0, {
                time: 1000,
                shade: 0.01
            });
        }
    });
}

function closeIFrame() {
    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
    parent.layer.close(index);
}

//清除所有cookie函数
function clearAllCookie(){
    var date=new Date();
    date.setTime(date.getTime()-10000);
    var keys=document.cookie.match(/[^ =;]+(?=\=)/g);
    if (keys) {
        for (var i =  keys.length; i--;)
            document.cookie=keys[i] + "=0; expire="+date.toGMTString()+"; path=/";
    }
}