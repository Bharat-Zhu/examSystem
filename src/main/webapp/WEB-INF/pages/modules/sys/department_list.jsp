<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    var frameSize = ['30%', '60%'];
    $(function () {
        var columnModel = [
            {label: '<spring:message code="department.info.name"/>', name: 'name', width: 45},
            {label: '<spring:message code="department.info.tel"/>', name: 'tel', width: 75},
            {label: '<spring:message code="exam.common.remark"/>', name: 'remark', sortable: false},
            {
                label: '<spring:message code="exam.common.opt" />',
                name: 'departmentId',
                width: 45,
                sortable: false,
                formatter: function (value, options, row) {
                    var infoUrl = "${appPath}/sys/dept/info/" + value;
                    var editUrl = "${appPath}/sys/dept/edit/" + value;
                    var deleteUrl = "${appPath}/sys/dept/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;" title="' + tip_info + '"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.INFO, \'' + infoUrl + '\', frameSize, \'#dept_list\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;" title="' + tip_edit + '"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.EDIT, \'' + editUrl + '\', frameSize, \'#dept_list\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;" title="' + tip_delete + '"><a href="javascript:void(0);" onclick="ajaxDelete(\'' + deleteUrl + '\', \'#dept_list\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#dept_list", "${appPath}/sys/searchDepts", columnModel, "#dept_list_pager");

        $("#createDept").on('click', function () {
            var url = '${appPath}/sys/dept/create';
            openIFrame(PAGE_TYPE_ENUM.CREATE, url, frameSize, "#dept_list");
        });

        $("#deptSearchForm").submit(function (event) {
            event.preventDefault();
            var data=$(this).serializeJSON();
            var url = "${appPath}/sys/searchDepts";

            jqGridSearch(url, data, "#dept_list");

        });
    });
</script>

<div style="margin-top: 30px;">
    <form id="deptSearchForm" class="form-horizontal" role="form" method="post">
        <div class="form-group">
            <label class="col-sm-1 control-label"><spring:message code="exam.common.name"/>：</label>
            <div class="col-sm-4">
                <input class="form-control" name="name" type="text" placeholder='<spring:message code="exam.common.name"/>'>
            </div>
            <label class="col-sm-1 control-label"><spring:message code="exam.common.phone"/>：</label>
            <div class="col-sm-4">
                <input class="form-control" name="tel" type="text" placeholder='<spring:message code="exam.common.phone"/>'>
            </div>
            <div class="col-sm-2" style="text-align: center;">
                <button class="btn btn-success" type="submit" >
                    <i class="fa fa-search"></i>
                    &nbsp;<spring:message code="exam.common.search" />
                </button>
            </div>
        </div>
    </form>
    <div style="height: 50px;line-height: 50px;">
        <button id="createDept" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/>
        </button>
    </div>
    <table id="dept_list"></table>
    <div id="dept_list_pager"></div>
</div>