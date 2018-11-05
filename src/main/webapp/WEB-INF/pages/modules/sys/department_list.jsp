<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        $("#dept_list").jqGrid({
            url: '${appPath}/sys/showDepts',
            datatype: "json",
            styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式
            colModel: [
                { label: '部门名称', name: 'name', width: 45},
                { label: '部门电话', name: 'tel', width: 75},
                { label: '备注', name: 'remark', width: 100, sortable: false },
                { label: '操作', name: 'departmentId', width: 80,  sortable: false, formatter: function(value, options, row){
                        // return "<a href='/crm/user/"+value+"'><i class='fa fa-search'></i></a>&nbsp;&nbsp;" +
                        //     "<a href='/crm/user/"+value+"/edit'><i class='fa fa-edit'></i>&nbsp;编辑</a>";
                        return '<div class="label label-info" style="display: inline-grid;"><a href="#"><i class="fa fa-search" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                            + '<div class="label label-primary" style="display: inline-grid;"><a href="#"><i class="fa fa-edit" style="font-size: 20px;color: white;"></i></a></div>&nbsp;'
                            + '<div class="label label-danger" style="display: inline-grid;"><a href="#"><i class="fa fa-trash" style="font-size: 20px;color: white;"></i></a></div>';
                    }},
            ],
            sortable: true,
            sortorder:'asc',
            viewrecords: false,
            height: 300,
            rowNum: 10,
            rowList : [10,30,50],
            rownumbers: false,
            rownumWidth: 25,
            autowidth:true,
            multiselect: false,
            pager: "#dept_list_pager",
            jsonReader : {
                root: "page.list",
                page: "page.currPage",
                total: "page.totalPage",
                records: "page.totalCount"
            },
            prmNames : {
                page:"page",
                rows:"limit",
                order: "order"
            },
            gridComplete:function(){
                //隐藏grid底部滚动条
                $("#dept_list").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" });
            }
        });
    });
</script>

<div style="margin-top: 30px;">
    <table id="dept_list"></table>
    <div id="dept_list_pager"></div>
</div>