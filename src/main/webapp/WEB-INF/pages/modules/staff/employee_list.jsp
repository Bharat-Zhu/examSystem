<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        var columnModel = [
            {label: '编号', name: 'id'},
            {label: '姓名', name: 'name'},
            {label: '电话', name: 'phone'},
            {label: '出生日期', name: 'birth'},
            {label: '部门', name: 'department.name'},
            {
                label: '操作',
                name: 'id',
                sortable: false,
                formatter: function (value, options, row) {
                    var infoUrl = "${appPath}/staff/info/" + value;
                    var editUrl = "${appPath}/staff/edit/" + value;
                    var deleteUrl = "${appPath}/staff/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;" title="详情"><a href="javascript:void(0);" onclick="infoDeptById(\'' + infoUrl + '\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;" title="编辑"><a href="javascript:void(0);" onclick="editDeptById(\'' + editUrl + '\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;" title="删除"><a href="javascript:void(0);" onclick="deleteDeptById(\'' + deleteUrl + '\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#emp_list", "${appPath}/staff/searchEmpList", columnModel, "#emp_list_pager");

        $("#createEmp").on('click', function () {
            layer.open({
                type: 2,
                title: '<spring:message code="exam.common.create" /><spring:message code="department.info" />',
                content: '${appPath}/sys/dept/create',
                area: ['30%', '60%'],
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
            title: '<spring:message code="exam.common.edit" />',
            content: url,
            area: ['30%', '60%'],
            end: function () {
                jQuery("#dept_list").trigger("reloadGrid");
            }
        });
    }

    function infoDeptById(url) {
        layer.open({
            type: 2,
            title: '<spring:message code="exam.common.info" />',
            content: url,
            area: ['30%', '60%'],
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
        <button id="createEmp" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/>
        </button>
    </div>
    <table id="emp_list"></table>
    <div id="emp_list_pager"></div>
</div>