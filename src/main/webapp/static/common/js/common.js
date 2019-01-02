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

const PAGE_TYPE_ENUM = {
    EDIT: "edit",
    INFO: "info",
    CREATE: "create",
    DELETE: "delete",
    UPDATE: "update"
};

function loadGirdData(selector, url, columnModel, pagerSelector, isHorizontalOverflowNotShow) {
    isHorizontalOverflowNotShow = (isHorizontalOverflowNotShow == null || isHorizontalOverflowNotShow === "" || typeof(isHorizontalOverflowNotShow) === undefined) ? true : isHorizontalOverflowNotShow;
    $(selector).jqGrid({
        url: url,
        datatype: "json",
        styleUI: 'Bootstrap',
        colModel: columnModel,
        sortable: true,
        viewrecords: true,
        height: 445,
        rowNum: 10,
        rowList: [10, 20, 30, 50, 100],
        rownumbers: false,
        rownumWidth: 25,
        autowidth: true,
        multiselect: false,
        multiboxonly: true,
        pager: pagerSelector,
        gridComplete: function () {
        	if (isHorizontalOverflowNotShow) {
        		//隐藏grid底部滚动条
                $(selector).closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        	}
        }
    });
}

/**
 * Ajax 请求
 *
 * @param url 请求地址
 * @param success 请求成功的回调函数
 * @param data 请求时发送的数据（默认为空）
 * @param type 请求方式（默认POST）
 * @param dataType 请求响应回的数据类型（默认JSON）
 * @param async 是否异步请求（默认true 异步请求）
 * @param error 请求失败的回调函数（默认系统提示）
 */
function ajaxRequest(url, success, data, type, dataType, async, error) {
    async = (async == null || async === "" || typeof(async) === undefined) ? "true" : async;
    type = (type == null || type === "" || typeof(type) === undefined) ? "post" : type;
    dataType = (dataType == null || dataType === "" || typeof(dataType) === undefined) ? "json" : dataType;
    data = (data == null || data === "" || typeof(data) === undefined) ? {} : data;

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
        }, 500);
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

/**
 * Ajax 方式新规或更新（提交放式POST或PUT）
 *
 * @param url 请求地址
 * @param data 请求时发送的数据
 * @param isInsert 是否新规
 */
var ajaxInsertOrUpdate = function (url, data, isInsert) {
    var type = "POST";

    if (!isInsert) {
        type = "PUT";
    }

    ajaxRequest(url, function(responseData) {
        layer.alert(responseData.message, {
            title: false,
            closeBtn: 0
        }, function (index) {
            if (responseData.isSuccess) {
                closeIFrame();
            } else {
                layer.close(index);
            }
        });
    }, data, type);
};

/**
 * Ajax 方式新规（提交方式POST）
 *
 * @param url 请求地址
 * @param data 请求时发送的数据
 */
function ajaxInsert(url, data) {
    ajaxInsertOrUpdate(url, data, true);
}

/**
 * Ajax 方式更新（提交方式PUT）
 *
 * @param url 请求地址
 * @param data 请求时发送的数据
 */
function ajaxUpdate(url, data) {
    ajaxInsertOrUpdate(url, data, false);
}