<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<div class="panel-group" id="accordion" style="margin-top: -1px;">
    <div class="panel panel-default" style="border-radius: 0; margin-bottom: -6px; margin-right: -1px;">
        <div class="panel-heading">
            <a class="panel-title" href="${appPath}/home">
                <i class="fa fa-dashboard" style="font-size: 22px;"></i>
                <b>首页</b>
            </a>
        </div>
    </div>
    <div class="panel panel-default" style="border-radius: 0; margin-bottom: -6px; margin-right: -1px;">
        <div class="panel-heading">
            <a class="panel-title" data-toggle="collapse"
               data-parent="accordion" href="#panel-element-172611">
                <i class="fa fa-cog" style="font-size: 22px;"></i>
                <b>系统设置</b>
            </a>
        </div>
        <div id="panel-element-172611" class="panel-collapse collapse in">
            <div class="list-group" style="margin: 0 0;">
                <a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
                    <i class="fa fa-group" style="font-size: 18px"></i>
                    用户管理
                </a>
                <a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/showDepartments')">
                    <i class="fa fa-puzzle-piece" style="font-size: 20px"></i>
                    部门管理
                </a>
                <a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '#')">
                    <i class="fa fa-amazon" style="font-size: 18px;"></i>
                    角色管理
                </a>
            </div>
        </div>
    </div>
</div>