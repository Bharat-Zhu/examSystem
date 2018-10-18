<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="script" />
<style type="text/css">
	div {
		border: 1px solid red;
	}
</style>
</head>
<body>
<!-- Header -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <tiles:insertAttribute name="header"/>
</div>

<!-- Main -->
<div class="main-container" id="main-container">
    <!-- Menu -->
    <!-- <div id="sidebar" class="sidebar responsive" > -->
    <div style="width:150px;height:200px;margin-top:500px;" >
        <tiles:insertAttribute name="menu"/>
    </div>
    <!-- Right -->
    <div class="main-content">
        <!-- 面包屑导航 -->
        <!-- 内容 -->
        <div class="page-content" style="padding:0; background-color: white;">
        	<tiles:insertAttribute name="body"/>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer" style="padding-top: 40px;">
        <tiles:insertAttribute name="footer"/>
    </div>
    <!-- 回顶部 -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="fa fa-chevron-up"></i>
    </a>
</div>
</body>
</html>