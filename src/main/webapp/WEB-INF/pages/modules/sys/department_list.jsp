<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    var frameSize = ['30%', '60%'];
    $(function () {
        var columnModel = [
            {label: '部门名称', name: 'name', width: 45},
            {label: '部门电话', name: 'tel', width: 75},
            {label: '备注', name: 'remark', sortable: false},
            {
                label: '操作',
                name: 'departmentId',
                width: 45,
                sortable: false,
                formatter: function (value, options, row) {
                    var infoUrl = "${appPath}/sys/dept/info/" + value;
                    var editUrl = "${appPath}/sys/dept/edit/" + value;
                    var deleteUrl = "${appPath}/sys/dept/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;" title="详情"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.INFO, \'' + infoUrl + '\', frameSize, \'#dept_list\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;" title="编辑"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.EDIT, \'' + editUrl + '\', frameSize, \'#dept_list\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;" title="删除"><a href="javascript:void(0);" onclick="deleteSelectOfData(\'' + deleteUrl + '\', \'#dept_list\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#dept_list", "${appPath}/sys/showDepts", columnModel, "#dept_list_pager");

        $("#createDept").on('click', function () {
            var url = '${appPath}/sys/dept/create';
            openIFrame(PAGE_TYPE_ENUM.CREATE, url, frameSize, "#dept_list");
        });

        var result = "${result}";

        if (result != "") {
            var message = "${result}";
            layer.alert(message, {
                title: false,
                closeBtn: 0,
            }, function (index) {
                if (result > 0) {
                    closeIFrame();
                } else {
                    layer.close(index);
                }
            });
        }
    });
</script>

<div style="margin-top: 30px;">
    <div style="height: 50px;line-height: 50px;">
        <button id="createDept" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/>
        </button>
    </div>
    <table id="dept_list"></table>
    <div id="dept_list_pager"></div>
</div>