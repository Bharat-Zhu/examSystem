<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        var columnModel = [
            {label: '菜单名称', name: 'name', width: 45, sortable: false},
            {label: '菜单国际化Code', name: 'messageCode', width: 75, sortable: false},
            {label: '链接', name: 'url', width: 65, sortable: false},
            {label: '权限', name: 'permission', width: 60, sortable: false},
            {label: '显示', name: 'isShow', width: 15, sortable: false, 
            	formatter: function(value) {
            		if (value == '1') {
            			return "<b>Y</b>";
            		} else {
            			return "<b>N</b>";
            		}
            	}
            },
            {
                label: '操作',
                name: 'id',
                width: 45,
                sortable: false,
                formatter: function (value, options, row) {
                    var infoUrl = "${appPath}/sys/menu/info/" + value;
                    var editUrl = "${appPath}/sys/menu/edit/" + value;
                    var deleteUrl = "${appPath}/sys/menu/delete/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;" title="详情"><a href="javascript:void(0);" onclick="infoMenuById(\'' + infoUrl + '\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;" title="编辑"><a href="javascript:void(0);" onclick="editMenuById(\'' + editUrl + '\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;" title="删除"><a href="javascript:void(0);" onclick="deleteMenuById(\'' + deleteUrl + '\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#menu_list", "${appPath}/sys/menu/showMenuList", columnModel, "#menu_list_pager", false);

        $("#addMenu").on('click', function () {
            layer.open({
                type: 2,
                title: '<spring:message code="exam.common.create" />',
                content: '${appPath}/sys/menu/addPage',
                area: ['70%', '77%'],
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

    function editMenuById(url) {
    }

    function infoMenuById(url) {
    }

    function deleteMenuById(url) {

    }
</script>

<div style="margin-top: 30px;">
    <div style="height: 50px;line-height: 50px;">
        <button id="addMenu" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/>
        </button>
    </div>
    <table id="menu_list"></table>
    <div id="menu_list_pager"></div>
</div>