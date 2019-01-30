<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    var frameSize = ['30%', '70%'];

    $(function () {
        var columnModel = [
            {label: '<spring:message code="exam.common.no" />', name: 'id'},
            {label: '<spring:message code="register.name" />', name: 'name'},
            {label: '<spring:message code="exam.common.phone" />', name: 'phone'},
            {label: '<spring:message code="register.birth" />', name: 'birth',
                formatter: function (value) {
                    var date = new Date(value);
                    return $.formatDate(date, "yyyy-MM-dd");
                }
            },
            {label: '<spring:message code="department.info" />', name: 'department.name'},
            {
                label: '<spring:message code="exam.common.opt" />',
                name: 'id',
                sortable: false,
                formatter: function (value, options, row) {
                    var infoUrl = "${appPath}/staff/info/" + value;
                    var editUrl = "${appPath}/staff/edit/" + value;
                    var deleteUrl = "${appPath}/staff/emp/" + value;
                    return '<div class="label label-info" style="display: inline-grid; width: 30px;" title="' + tip_info + '"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.INFO, \'' + infoUrl + '\', frameSize, \'#emp_list\');"><i class="fa fa-info" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-primary" style="display: inline-grid; width: 30px;" title="' + tip_edit + '"><a href="javascript:void(0);" onclick="openIFrame(PAGE_TYPE_ENUM.EDIT, \'' + editUrl + '\', frameSize, \'#emp_list\');"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                        + '<div class="label label-danger" style="display: inline-grid; width: 30px;" title="' + tip_delete + '"><a href="javascript:void(0);" onclick="ajaxDelete(\'' + deleteUrl + '\', \'#emp_list\');"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                }
            }
        ];

        loadGirdData("#emp_list", "${appPath}/staff/searchEmpList", columnModel, "#emp_list_pager");

        $("#createEmp").on('click', function () {
            var url = '${appPath}/staff/create';
            openIFrame(PAGE_TYPE_ENUM.CREATE, url, frameSize, "#emp_list");
        });

        $("#searchForm").submit(function (event) {
            event.preventDefault();
            var data=$(this).serializeJSON();
            var url = "${appPath}/staff/searchEmpList";

            jqGridSearch(url, data, "#emp_list");

        });
    });
</script>

<div style="margin-top: 30px;">
    <form id="searchForm" class="form-horizontal" role="form" method="post">
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
                <button class="btn btn-primary" type="button" >
                    <i class="fa fa-search"></i>
                    &nbsp;<spring:message code="exam.common.search.plus" />
                </button>
            </div>
        </div>
    </form>
    <div style="height: 50px;line-height: 50px;">
        <button id="createEmp" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <spring:message code="exam.common.create"/>
        </button>
    </div>
    <table id="emp_list"></table>
    <div id="emp_list_pager"></div>
</div>