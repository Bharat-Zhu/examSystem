<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<!--
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
data-parent="#accordion" href="#panel-system">
<i class="fa fa-cog" style="font-size: 22px;"></i>
<b>系统设置</b>
</a>
</div>
<div id="panel-system" class="panel-collapse collapse in">
<div class="list-group" style="margin: 0 0;">
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
<i class="fa fa-group" style="font-size: 18px"></i>
用户管理
</a>
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/showDepartments')">
<i class="fa fa-puzzle-piece" style="font-size: 20px"></i>
部门管理
</a>
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
<i class="fa fa-amazon" style="font-size: 18px;"></i>
角色管理
</a>
</div>
</div>
</div>
<div class="panel panel-default" style="border-radius: 0; margin-bottom: -6px; margin-right: -1px;">
<div class="panel-heading">
<a class="panel-title" data-toggle="collapse"
data-parent="#accordion" href="#panel-system1">
<i class="fa fa-question-circle-o" style="font-size: 22px;"></i>
<b>关于系统</b>
</a>
</div>
<div id="panel-system1" class="panel-collapse collapse">
<div class="list-group" style="margin: 0 0;">
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
<i class="fa fa-group" style="font-size: 18px"></i>
用户管理
</a>
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/showDepartments')">
<i class="fa fa-puzzle-piece" style="font-size: 20px"></i>
部门管理
</a>
<a class="list-group-item" href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
<i class="fa fa-amazon" style="font-size: 18px;"></i>
角色管理
</a>
</div>
</div>
</div>
</div>
-->
<link rel="stylesheet" type="text/css" href="${staticCommonPath}/css/menu.css" />
<script type="text/javascript" src="${staticCommonPath}/js/menu.js"></script>
<nav class="navbar navbar-default navbar-static-top">
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="${appPath}/home"><i class="fa fa-dashboard fa-fw"></i> 首页</a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="fa fa-cog" style="font-size: 18px;"></i>
                        系统设置
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="javascript:void(0);"
                               onclick="clickMenu(this, '${appPath }/sys/user')">
                                <i class="fa fa-group"></i>
                                用户管理
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/showDepartments')">
                                <i class="fa fa-puzzle-piece"></i>
                                部门管理
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" onclick="clickMenu(this, '${appPath }/sys/user')">
                                <i class="fa fa-amazon"></i>
                                角色管理
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table fa-fw"></i> Tables</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit fa-fw"></i> Forms</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="">Panels and Wells</a>
                        </li>
                        <li>
                            <a href="">Buttons</a>
                        </li>
                        <li>
                            <a href="">Notifications</a>
                        </li>
                        <li>
                            <a href="">Typography</a>
                        </li>
                        <li>
                            <a href=""> Icons</a>
                        </li>
                        <li>
                            <a href="">Grid</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">Second Level Item</a>
                        </li>
                        <li>
                            <a href="#">Second Level Item</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">Blank Page</a>
                        </li>
                        <li>
                            <a href="#">Login Page</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
