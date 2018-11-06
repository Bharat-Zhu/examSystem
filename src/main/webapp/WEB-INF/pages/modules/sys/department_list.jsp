<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<style>
    .ui-jqgrid tr.jqgrow td {
        height: auto;
	    word-wrap:break-word;
	    word-break:break-all;
	    overflow: hidden;
    }
</style>
<script type="text/javascript">
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
                    var deleteUrl = "${appPath}/sys/dept/delete/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;"><a href="javascript:void(0);" onclick="infoDeptById(\'' + infoUrl + '\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;"><a href="javascript:void(0);" onclick="editDeptById(\'' + editUrl + '\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;"><a href="javascript:void(0);" onclick="deleteDeptById(\'' + deleteUrl + '\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#dept_list", "${appPath}/sys/showDepts", columnModel, "#dept_list_pager");

        $("#createDept").on('click', function () {
            layer.open({
                type: 2,
                title: '<spring:message code="exam.common.create" /><spring:message code="department.info" />',
                content: '${appPath}/sys/dept/create',
                area: ['500px', '550px'],
                end: function () {
                    jQuery("#dept_list").trigger("reloadGrid");
                }
            });
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

    function editDeptById(url) {
        layer.open({
            type: 2,
            title: '<spring:message code="department.info" /><spring:message code="exam.common.edit" />',
            content: url,
            area: ['500px', '550px'],
            end: function () {
                jQuery("#dept_list").trigger("reloadGrid");
            }
        });
    }

    function infoDeptById(url) {
        layer.open({
            type: 2,
            title: '<spring:message code="department.info" /><spring:message code="exam.common.info" />',
            content: url,
            area: ['500px', '550px'],
        });
    }

    function deleteDeptById(url) {
        layer.confirm('<spring:message code="validation.constrains.delete.message" />', {
            icon: 5, title: '<spring:message code="exam.system.prompt.message" />'
        }, function (index) {
            ajaxRequest(url, function (data) {
            	if (data.message != "") {
            		layer.alert(data.message, {
                        end: function () {
                            jQuery("#dept_list").trigger("reloadGrid");
                        }
                    });
            	}
            });
            layer.close(index);
        });

    }
</script>

<div style="margin-top: 30px;">
    <div style="height: 50px;line-height: 50px;">
        <button id="createDept" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/><spring:message code="department.info"/>
        </button>
    </div>
    <table id="dept_list"></table>
    <div id="dept_list_pager"></div>
</div>