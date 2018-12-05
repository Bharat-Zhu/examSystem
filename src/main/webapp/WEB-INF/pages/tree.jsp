<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/zTree/css/metroStyle/metroStyle.css"/>
<script>
    var setting = {
        view: {
            showLine: false,
            selectedMulti: false,
            autoCancelSelected: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "parentId",
                rootPId: 0
            }
        },
        callback: {
            onClick: treeNodeOnClick
        }
    };

    var treeNodeId = "";
    var treeNodeName = "";

    $(function () {
        var menuTrees = $.fn.zTree.init($("#tree"), setting, ${tree});
        menuTrees.expandAll(true);

        $("#confirmMenu").click(function () {
            parent.$('#parentId').val(treeNodeId);
            parent.$('#parentName').val(treeNodeName);
            closeIFrame();
        });
    });

    function treeNodeOnClick(event, treeId, treeNode) {
        treeNodeId = treeNode.id;
        treeNodeName = treeNode.name;
    }
</script>
<style>
    .ztree li a span.node_name{
        font-size: 16px;
    }
</style>
<div class="content_wrap" style="margin: 0 15px 15px 15px;">
    <div class="bg left">
        <ul id="tree" class="ztree"></ul>
    </div>
    <div style="text-align: right; padding-right: 15px; margin-top: 10px;">
        <input id="confirmMenu" type="button" class="btn btn-info" value='<spring:message code="exam.common.submit"/>' />
    </div>
</div>