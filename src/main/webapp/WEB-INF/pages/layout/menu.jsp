<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf"%>
<link rel="stylesheet" type="text/css"
	href="${staticCommonPath}/css/menu.css" />
<script type="text/javascript" src="${staticCommonPath}/js/menu.js"></script>
<nav class="navbar navbar-default navbar-static-top">
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="javascript:void(0);"
					onclick="clickMenu(this, '${appPath}/home')"><i
						class="fa fa-dashboard fa-fw"></i> 首页</a></li>
				<li><a href="javascript:void(0);"> <i class="fa fa-cog"
						style="font-size: 18px;"></i> 系统设置 <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level">
						<li><a href="javascript:void(0);"
							onclick="clickMenu(this, '${appPath }/sys/user')"> <i
								class="fa fa-group"></i> 用户管理
						</a></li>
						<li><a href="javascript:void(0);"
							onclick="clickMenu(this, '${appPath }/sys/showDepartments')">
								<i class="fa fa-puzzle-piece"></i> 部门管理
						</a></li>
						<li><a href="javascript:void(0);"
							onclick="clickMenu(this, '${appPath }/sys/user')"> <i
								class="fa fa-amazon"></i> 角色管理
						</a></li>
					</ul></li>
				<li><a href="javascript:void(0);"><i
						class="fa fa-table fa-fw"></i> Tables</a></li>
				<li><a href="javascript:void(0);"><i
						class="fa fa-edit fa-fw"></i> Forms</a></li>
				<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
						Elements<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="">Panels and Wells</a></li>
						<li><a href="">Buttons</a></li>
						<li><a href="">Notifications</a></li>
						<li><a href="">Typography</a></li>
						<li><a href=""> Icons</a></li>
						<li><a href="">Grid</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
						Multi-Level Dropdown<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#">Second Level Item</a></li>
						<li><a href="#">Second Level Item</a></li>
						<li><a href="#"><i class="fa fa-wrench fa-fw"></i>Third
								Level <span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
								<li><a href="#">Third Level Item</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-files-o fa-fw"></i> Sample
						Pages<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#">Blank Page</a></li>
						<li><a href="#">Login Page</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
