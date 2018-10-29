<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="no-cache">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/common/images/logo.ico"/>
    <title><spring:message code="examSystem.title"/></title>
    <tiles:insertAttribute name="script"/>
    <style type="text/css">
    </style>
</head>
<body>
<div>
    <div class="clearfix">
        <div class="col-md-12 column">
            <!-- Header -->
            <tiles:insertAttribute name="header"/>
        </div>
    </div>
    <div class="clearfix" style="margin-top:50px; min-height: 696px;">
        <div class="col-md-2 column"
             style="border-right: 1px solid #e6e6e6; min-height: 696px; padding-top: 5px; padding-left: 0; padding-right: 0;">
            <!-- Menu -->
            <tiles:insertAttribute name="menu"/>
            <div style="height: 30px;padding: 14px 0; margin-top: 15px;">
                <div style="height:1px; background-color: #e5e5e5;"></div>
                <div style=" text-align: center;background: transparent; margin-top: -13px;">
                    <a href="#"><i class="fa fa-chevron-circle-left" style="font-size:24px"></i></a>
                </div>
            </div>
        </div>
        <div class="col-md-10 column" style="padding-top: 5px;">
            <!-- 面包屑导航 -->
            <!-- 内容 -->
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
    <div id="footer" class="clearfix"
         style="background: #f8f8f8; border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6;">
        <div class="col-md-12 column">
            <!-- Footer -->
            <tiles:insertAttribute name="footer"/>
        </div>
    </div>
    <!-- 回顶部 -->
    <a href="#" id="btn-scroll-up" class="btn btn-default" style="display: none;">
        <i class="fa fa-chevron-up"></i>
    </a>
</div>
</body>
</html>